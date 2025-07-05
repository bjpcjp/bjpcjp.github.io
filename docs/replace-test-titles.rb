# replace test titles

require 'nokogiri'

def replace_test_links(html)
  doc = Nokogiri::HTML(html)

  doc.css('a').each do |a|
    href = a['href']
    next unless a.text == 'test' && href

    # Match pattern like: docs/2025-07-01-affinity.html
    if href =~ %r{docs/\d{4}-\d{2}-\d{2}-(.+)\.html}
      term = $1
      a.content = term
    end
  end

  doc.to_html
end

# Command-line usage
if __FILE__ == $0
  unless ARGV.size == 1
    puts "Usage: ruby replace_link_titles.rb <path_to_html_file>"
    exit 1
  end

  file_path = ARGV[0]
  html = File.read(file_path)
  updated_html = replace_test_links(html)
  File.write(file_path, updated_html)
  puts "Updated file: #{file_path}"
end

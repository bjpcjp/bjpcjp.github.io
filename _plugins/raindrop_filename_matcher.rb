# _plugins/raindrop_filename_matcher.rb

module Jekyll
  class RaindropCSVmatcher < Liquid::Tag
    def initialize(tag_name, keyword, tokens)
      super
      @keyword = keyword.strip
    end

    def files_with_keyword(keyword)
      # Get all files in the current directory
      files = Dir.entries(Dir.pwd).select { |f| File.file?(f) }
      
      # Filter files by keyword
      files.select { |file| file.include?(keyword) }
    end

    def render(context)
      files = files_with_keyword(@keyword)
      files.map { |file| "<li>#{file}</li>" }.join
    end
  end
end

Liquid::Template.register_tag('keyword_files', Jekyll::RaindropCSVmatcher)

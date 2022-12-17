infile = File.open("pocket-tags-20221217.txt")
tags = infile.readlines()
print tags.size
infile.close()

outfile = File.open("pocket-tag-urls.html","w")
pocket_tag_page = "https://getpocket.com/saves/tags/"

outfile << "---\n"
outfile << "  layout: default-foundation-20210515\n"
outfile << "  title: tags from pocket repo\n"
outfile << "---\n"
outfile << "\n"
outfile << "<div style='columns:4;'>\n"

tags.each { |tag|
    str = '<a href="https://getpocket.com/saves/tags/' + "#{tag}" + '">' + "#{tag}" + '</a><br>'
    outfile << str
}

outfile << "</div>"
outfile.close()


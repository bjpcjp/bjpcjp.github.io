from bs4 import BeautifulSoup
import re

def replace_test_links(html_content):
    soup = BeautifulSoup(html_content, 'html.parser')
    pattern = re.compile(r'docs/\d{4}-\d{2}-\d{2}-(.+)\.html')

    for a_tag in soup.find_all('a'):
        if a_tag.string == 'test' and a_tag.has_attr('href'):
            match = pattern.search(a_tag['href'])
            if match:
                term = match.group(1)
                a_tag.string.replace_with(term)

    return str(soup)

# Example usage:
if __name__ == '__main__':
    import sys
    from pathlib import Path

    if len(sys.argv) != 2:
        print("Usage: python replace_link_titles.py <path_to_html_file>")
        sys.exit(1)

    html_path = Path(sys.argv[1])
    html_content = html_path.read_text(encoding='utf-8')
    updated_html = replace_test_links(html_content)
    html_path.write_text(updated_html, encoding='utf-8')
    print(f"Updated file: {html_path}")

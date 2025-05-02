# add_filenames_to_csv.py

import csv
import os
import re
import sys
from urllib.parse import urlparse

def url_to_filename(url):
    """
    Convert a URL to a safe filename string.
    """
    parsed = urlparse(url)
    path = parsed.netloc + parsed.path
    filename = re.sub(r'[^\w\-_.]', '_', path).strip('_')
    return filename[:255]  # limit to 255 chars (max for many filesystems)

def update_csv_titles(input_path, output_path=None):
    """
    Read a CSV with 'url' and 'title' fields, replace 'title' with filename derived from 'url'.
    Write back to output_path or overwrite input if output not given.
    """
    output_path = output_path or input_path
    with open(input_path, newline='', encoding='utf-8') as infile:
        reader = list(csv.DictReader(infile))
        fieldnames = reader[0].keys()

    for row in reader:
        if 'url' in row:
            row['title'] = url_to_filename(row['url'])

    with open(output_path, 'w', newline='', encoding='utf-8') as outfile:
        writer = csv.DictWriter(outfile, fieldnames=fieldnames)
        writer.writeheader()
        writer.writerows(reader)

    print(f"Updated titles written to: {output_path}")

if __name__ == '__main__':
    if len(sys.argv) < 2:
        print("Usage: python update_titles_with_filenames.py input.csv [output.csv]")
        sys.exit(1)

    input_file = sys.argv[1]
    output_file = sys.argv[2] if len(sys.argv) > 2 else None
    update_csv_titles(input_file, output_file)

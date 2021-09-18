#!/usr/bin/bash
while IFS= read -r line; do
   wget -O ./current_pages/file${count}.html $line
   html2text.py ./current_pages/file${count}.html >> ./current_pages/my_current.txt
   ((count++))
done < ./my_webpages.txt
wordcloud_cli --text ~/assignments/trgn_wordcloud/current_pages/my_current.txt --imagefile ~/public_html/wordcloud.png --mask ~/public_html/bingjing.png --background white


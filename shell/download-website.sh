
# Ref: https://www.moreofless.co.uk/download-website-wget-entire-html-css-js/
# download all HTML pages for a given website and all of the local assets (CSS/JS/etc) needed to correctly display the pages.
wget \
     --recursive \
     --no-clobber \
     --page-requisites \
     --html-extension \
     --convert-links \
     --restrict-file-names=windows \
     --domains example.com \
         www.example.com

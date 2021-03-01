#!/bin/bash

folders="Pws Codes Compressed Documents Images Musics Programs Videos"

ext_comp="*.zip *.tar.gz *.tar"
ext_doc="*.txt *.doc* *.xlsx *.pdf *.PDF *.ppt*"
ext_code="*.html *.php *.css *.xml *.js *.py *.json *.yaml"
ext_img="*.jp*g *.JPG *.png *.gif"
ext_music="*.mp3 *.aac *.wma"
ext_progrm="*.deb *.exe *.run"
ext_vid="*.mp4 *.MP4 *.mkv *.flv *.avi *.webm *.wmv"
ext_pw="*.env *.certs *.pem"

cd ~/Downloads

for folder in $folders; do
	mkdir -p $folder

	if [ "$folder" = "Pws" ]; then
		mv $ext_pw $folder 2>/dev/null
	fi

	if [ "$folder" = "Codes" ]; then
		mv $ext_code $folder 2>/dev/null
	fi
	
	if [ "$folder" = "Compressed" ]; then
	  	mv $ext_comp $folder 2>/dev/null
  	fi
	
	if [ "$folder" = "Documents" ]; then
    		mv $ext_doc $folder 2>/dev/null
  	fi

	if [ "$folder" = "Images" ]; then
		mv $ext_img $folder 2>/dev/null
	fi

	if [ "$folder" = "Musics" ]; then
		mv $ext_music $folder 2>/dev/null
	fi

	if [ "$folder" = "Programs" ]; then
		mv $ext_progrm $folder 2>/dev/null
	fi

	if [ "$folder" = "Videos" ]; then
		mv $ext_vid $folder 2>/dev/null
	fi

done

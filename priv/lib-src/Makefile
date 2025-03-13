.PHONY: style

all: style bootstrap tinymce

# Main style for the website
style:
	sass --no-source-map --update style.scss:../lib/css/style.css

bootstrap: 
	sass --no-source-map --update bootstrap.scss ../lib/css/bootstrap.css

tinymce: 
	sass --no-source-map --update tinymce-zotonic.scss ../lib/css/tinymce-zotonic.css
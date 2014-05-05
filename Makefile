link_dir := $(shell mktemp -d /tmp/linkdoc.XXXX)

all:
	sass assets/sass/custom.sass:assets/css/custom.css
	-rm search.json
	jekyll build
	cp public/search.json search.json
	-terminal-notifier -title "Jekyll" -message "Build complete."

test: all
	linklint -doc ${link_dir} -root public /@
	open ${link_dir}/index.html

# Builds sass locally directly to ./public so you con't have to run a full jekyll build when hacking sass
sass:
	sass --watch assets/sass/custom.sass:public/assets/css/custom.css

# Copies JS resources locally so you don't have to do a full jekyll build when hacking JS
js:
	cp js/* public/js/

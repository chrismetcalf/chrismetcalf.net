link_dir := $(shell mktemp -d /tmp/linkdoc.XXXX)

all:
	-rm search.json
	jekyll build
	cp public/search.json search.json

test: all
	linklint -doc ${link_dir} -root public /@
	open ${link_dir}/index.html

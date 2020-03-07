link_dir := $(shell mktemp -d /tmp/linkdoc.XXXX)

all:
	jekyll build

test: all
	linklint -doc ${link_dir} -root public /@
	open ${link_dir}/index.html

surge:
	jekyll clean && jekyll build && surge public chrismetcalf.net

serve:
	jekyll clean && jekyll serve --watch --incremental

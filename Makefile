J=bundle exec jekyll

all: site

site:
	$J build
	chmod -R a+rx ./_site/

clean:
	rm -rf _site/

local:
	$J serve --port=4567 --watch --drafts

new:
	./new_post.sh

publish:
	./publish.sh

drafts:
	@grep -lie '^published: false' _posts/*

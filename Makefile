J=bundle exec jekyll

all: site

site:
	$J
	chmod -R a+rx ./_site/

clean:
	rm -rf _site/

local:
	$J --server 4567 --auto --no-lsi --default-mimetype 'text/html'

new:
	./new_post.sh

publish:
	./publish.sh

drafts:
	@grep -lie '^published: false' _posts/*

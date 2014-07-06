J=bundle exec jekyll

all: site

site: clean
	$J build --lsi
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
	@ls _drafts/* | grep '-'

github: site
	./github.rb

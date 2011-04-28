J=jekyll
R=-rlvtz

all: site

site:
	$J

clean:
	rm -rf _site/

server:
	$J --server 4000 --auto

deploy: site
	rsync $R --delete _site/ welchfamilyweb.com:~/public_html/pseudoweb.net/_site/

fake-deploy: site
	rsync $R -n -rlcvtz --delete _site/ welchfamilyweb.com:~/public_html/pseudoweb.net/_site/

new:
	./new_post.sh

publish:
	./publish.sh

drafts:
	@grep -lie '^published: false' _posts/*

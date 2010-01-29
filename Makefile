J=/var/lib/gems/1.8/bin/jekyll

all: site

site:
	$J

clean:
	rm -rf _site/

server: clean
	$J --server 4000 --auto

deploy: clean site
	rsync -rvtz --delete _site/ welchfamilyweb.com:~/public_html/pseudoweb.net/_site/

fake-deploy: clean site
	rsync -nrvtz --delete _site/ welchfamilyweb.com:~/public_html/pseudoweb.net/_site/

new: 
	./new_post.sh

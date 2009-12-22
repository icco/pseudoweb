all: site

site:
	jekyll

clean:
	rm -rvf _site/

server: clean
	jekyll --server 4000 --auto

deploy: clean site
	rsync -rvtz --delete _site/ welchfamilyweb.com:~/public_html/pseudoweb.net/_site/

fake-deploy: clean site
	rsync -nrvtz --delete _site/ welchfamilyweb.com:~/public_html/pseudoweb.net/_site/

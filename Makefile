all: site

site:
	jekyll

clean:
	rm -rvf _site/

server: clean
	jekyll --server 4000 --auto


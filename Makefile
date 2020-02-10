JEKYLL := bundle exec jekyll

.PHONY: all clean doctor build serve

all : serve

clean:
	rm -rf _site
	rm -rf .sass-cache

doctor: _config.yml
	$(JEKYLL) doctor

b: build
build:
	$(JEKYLL) b

s: serve
serve:
	$(JEKYLL) s

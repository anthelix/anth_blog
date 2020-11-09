serve:
	bundle exec jekyll serve

deploy:
	git push origin gh-pages

phony: deploy serve
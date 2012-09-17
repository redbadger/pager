
build: components index.js pager.css template.js
	@component build --dev

template.js: template.html
	@component convert $<

components:
	@component install --dev

clean:
	rm -fr build components template.js

.PHONY: clean

MD=$(shell find section -name "*.md" -print)
HTML=$(MD:.md=.html)

%.html: %.md
	markdown $< > $@

index.html: $(HTML)
	(cat "layout/head.html"; cat $^; cat "layout/tail.html";) > $@ \
	&& echo "\n    Change registered"

clean:
	rm -f index.html section/*.html


.PHONY: watch clean

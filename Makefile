final=index.html
template=template.html
build_ID=$(shell zenity --entry --title="Commit" --text="ID du commit")
css=style2.css 


all: $(final) $(css)

.PHONY: upload
.DEFAULT_GOAL := all

%.html: %.md $(template)
	pandoc -s -thtml --template=$(template) $< -o$@


%.css: %.scss
	@echo "\033[0;31m$< --> $@\033[0m"
	@sass $< $@ --style compressed
	@rm $@.map

upload: $(final) $(css)
	site-add
	git add -A
	git commit -m '$(build_ID)'
	git push -u origin master

final=index.html
template=template.html
build_ID=$(shell zenity --entry --title="Commit" --text="ID du commit")
css=style2.css 


all: $(final) $(css)

.PHONY: upload
.DEFAULT_GOAL := all

# %.html: %.md $(template)
# 	pandoc -s -thtml --template=$(template) $< -o$@

%.html: %.md orga.csv template.html Makefile
	@echo "\033[0;31m$< --> $@\033[0m"
	@pp $< | \
		pandoc -s --template=template.html | \
		sed -e s/\<table/\<table\ id=\"tableau\_ecole\"\ class=\"pure-table\ pure-table-responsive\ pure-table-striped\"/g > $@
		# sed -e s/\<a\ /\<a\ target=\"_blank\"\/g | \


%.css: %.scss
	@echo "\033[0;31m$< --> $@\033[0m"
	@sass $< $@ --style compressed
	@rm $@.map

%.csv: %.xls
	@echo "\033[0;31m$< --> $@\033[0m"
	@libreoffice --convert-to \
		csv:"Text - txt - csv (StarCalc)":"44,34,0,1,,0" \
		--headless --outdir . $<

upload: $(final) $(css)
	site-add
	git add -A
	git commit -m '$(build_ID)'
	git push -u origin master

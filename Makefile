all:
	doc
doc:
	pandoc -o Document.html --filter=./pandoc-include/dist/build/pandoc-include/pandoc-include --self-contained -H Document.css Document.md

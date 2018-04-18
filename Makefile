all: tutorial index
tutorial:
	pandoc -o Tutorial.html --filter=./pandoc-include/dist/build/pandoc-include/pandoc-include --self-contained -H Tutorial.css Tutorial.md
index:
	pandoc -o index.html --self-contained index.md
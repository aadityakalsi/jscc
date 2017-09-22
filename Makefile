# jscc

NPM ?= npm
NODE ?= node
MOCHA ?= node_modules/.bin/mocha
JISON ?= node_modules/.bin/jison

GRAMMAR = $(wildcard grammar/*.jison*)

PARSER = parser.js

.PHONY: test

default: test

$(PARSER): $(GRAMMAR)
	$(JISON) $^ -o $@ -m commonjs

tests/: $(PARSER)
	mkdir -p $@

test: tests/
	$(MOCHA) tests/ --slow=0ms

clean:
	rm $(PARSER)

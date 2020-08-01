blueprints := base-in-a-book railway

decode: $(blueprints:%=decoded/%.json)
encode: $(blueprints:%=encoded/%.blueprint)

decoded/%.json: encoded/%.blueprint
	bin/decode-blueprint <'$<' >'$@'

encoded/%.blueprint: decoded/%.json
	bin/encode-blueprint <'$<' >'$@'

.PHONY: decode encode

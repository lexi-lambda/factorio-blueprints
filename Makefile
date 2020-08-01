blueprints := base-in-a-book railway

encode: $(blueprints:%=encoded/%.blueprint)
decode: $(blueprints:%=decoded/%.json)

encoded/%.blueprint: decoded/%.json
	bin/encode-blueprint <'$<' >'$@'

decoded/%.json: encoded/%.blueprint
	bin/decode-blueprint <'$<' >'$@'

.PHONY: encode decode

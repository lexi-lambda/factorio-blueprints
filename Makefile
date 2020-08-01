blueprints := 10-reactor-power-plant balancers base-in-a-book megabase railway

decode: $(blueprints:%=decoded/%.json)
encode: $(blueprints:%=encoded/%.blueprint)

decoded/%.json: encoded/%.blueprint
	bin/decode-blueprint <'$<' >'$@'

encoded/%.blueprint: decoded/%.json
	bin/encode-blueprint <'$<' >'$@'

.PHONY: decode encode

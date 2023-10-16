blueprints := \
	balancers base-in-a-book circuits-and-modules \
	late-game-science megabase nuclear railway

decode: $(blueprints:%=decoded/%.json)
encode: $(blueprints:%=encoded/%.blueprint)

decoded/%.json: encoded/%.blueprint
	bin/decode-blueprint <'$<' >'$@'

encoded/%.blueprint: decoded/%.json
	bin/encode-blueprint <'$<' >'$@'

.PHONY: decode encode

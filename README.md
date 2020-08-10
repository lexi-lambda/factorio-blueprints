# factorio-blueprints

This repository is simple version control for my [Factorio][factorio] blueprints.

Because Factorio blueprint strings are compressed and base64 encoded, textual diffing is completely useless. To provide *some* insight into what changed in each commit, the blueprints are also stored decoded into their underlying JSON format. The resulting diffs are still very noisy, but they’re better than nothing.

[factorio]: https://factorio.com/

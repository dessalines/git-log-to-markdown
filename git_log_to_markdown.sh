#!/bin/sh

# Example:
# ../git-log-to-markdown/./git_log_to_markdown.sh "https://github.com/LemmyNet/Lemmy/issues/" 0.13.0..0.14.0-rc.1

git log $2 --oneline --no-merges --decorate=no | cut -d" " -f2- | sed -r "s|#([0-9]+)|[#\1]($1\1)|g" | sed -e 's/^/- /'

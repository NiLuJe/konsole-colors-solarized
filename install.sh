#!/bin/sh

kde_path="$(kde4-config --localprefix)"

for file in *Dark*; do
	./solarized_convert.sh "$file" > "${file/Dark/Light}"
done

install -Dm644 *.colorscheme "${kde_path}/share/apps/konsole"

rm *Light*

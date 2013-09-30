#!/bin/sh

kde_path="$(kde4-config --localprefix)"

for file in *Dark*; do
	./solarized_convert.sh "$file" > "${file/Dark/Light}"
done

install -d "${kde_path}/share/apps/konsole"
rm -vf "${kde_path}/share/apps/konsole"/*Solarized*
install -m644 *.colorscheme Solarized.profile "${kde_path}/share/apps/konsole"

rm *Light*

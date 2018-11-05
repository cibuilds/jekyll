#!/usr/bin/env bash

versions=( "$@" )

sortedVersions=( $(
	for version in "${versions[@]}"; do
		echo "$version"
	done | sort --reverse) )


for i in "${!sortedVersions[@]}"; do

	version=${sortedVersions[$i]}

	git checkout -b jekyll-v${version}
	./gen-dockerfiles.sh ${version}
	git add .
	git commit -m "Add Jekyll v${version}."
	git push -u origin jekyll-v${version}
done

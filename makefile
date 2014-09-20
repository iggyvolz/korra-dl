tag_name:=$(shell php get_tag.php)
latest_tag:=$(shell git describe --tags)
tag:
	@git push 1>/dev/null 2>/dev/null || (echo "Error - you must have push rights to tag.";exit 1)
	@git tag $(tag_name)
	@git push --tags
	@github-release release -t $(tag_name)
	@github-release upload -t $(tag_name) -n korra-dl -f korra-dl
drone-io:
	if [ "$(latest_tag)" == "#tag" ];then go get github.com/aktau/github-release;make tag;fi

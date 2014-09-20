tag_name:=$(shell php get_tag.php)
latest_tag:=$(shell git describe --tags)
tag: check-if-can-tag create-tag push-tag create-release
check-if-can-tag:
	@git push 1>/dev/null 2>/dev/null || (echo "Error - you must have push rights to tag.";exit 1)
create-tag:
	@git tag $(tag_name)
push-tag:
	@git push --tags
create-release:
	@github-release release -t $(tag_name)
	@github-release upload -t $(tag_name) -n korra-dl -f korra-dl
drone-io-tag: create-tag drone-io-push-tag create-release
drone-io-push-tag:
	git remote set-url origin https://github.com/iggyvolz/korra-dl.git
	sudo apt-get install expect
	echo "spawn git push --tags; expect \"Username for 'https://github.com': \"; send \"$(user)\\r\"; expect \"Password for 'https://iggyvolz@github.com': \"; send $(pass)\\r\"; expect eof">expect_script
	expect expect_script

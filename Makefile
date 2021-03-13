DATE		= $(shell date)
NEWRELEASE	= $(shell echo $$(($(RELEASE) + 1)))
TOPDIR = $(shell pwd)
SHELL := /bin/bash
TRANS = /usr/bin/trans
# enable makefile to accept argument after command
#https://stackoverflow.com/questions/6273608/how-to-pass-argument-to-makefile-from-command-line
args = `arg="$(filter-out $@,$(MAKECMDGOALS))" && echo $${arg:-${1}}`
%:
	@:

all: help

status:
	git status
commit:
	git commit -am "$(call args, Automated commit message without details, Please read the code difference)"  && git push

guide-demo-tw:
	${TRANS} file://./en/rocky/8/guides/computer_assisted_translation.md :zh-TW
guide-demo-cn:
	${TRANS} file://./en/rocky/8/guides/computer_assisted_translation.md :zh-CN

guide-1-chinese:
	${TRANS} file://./docs-style-guide/sample-documentation/beginner-docs.md   :zh-CN
guide-2-chinese:
	${TRANS} file://./docs-style-guide/sample-documentation/simplified-docs.md :zh-CN
guide-3-chinese:
	${TRANS} file://./docs-style-guide/sample-documentation/advanced-docs.md   :zh-TW 
guide-3-japanese:
	${TRANS} file://./docs-style-guide/sample-documentation/advanced-docs.md   :ja
help:
	@echo "Usage: make <target>"
	@echo
	@echo "Available targets are:"
	@echo "  help                   show this text"
	@echo "  clean                  clean the mess"
	@echo "  commit                 git commit with default message"
	@echo "  commit my-message      git commit with my message"
	@echo ""

clean:
	@echo "--- files not needed  ---"
	-find . -type f -name *~  -exec rm -f {} \;

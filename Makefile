SKIP_SQUASH?=0

ifeq ($(TARGET),rhel7)
	OS := rhel7
else
	OS := centos7
endif

ifeq ($(VERSION), 2.4)
	VERSION := 2.4
else
	VERSION :=
endif

.PHONY: build
build:
	SKIP_SQUASH=$(SKIP_SQUASH) hack/build.sh $(OS) $(VERSION)


.PHONY: test
test:
	SKIP_SQUASH=$(SKIP_SQUASH) TEST_MODE=true hack/build.sh $(OS) $(VERSION)

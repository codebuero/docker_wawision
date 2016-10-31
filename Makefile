FILE_NAME := 16.3.6564ee8_oss_wawision.tar.gz
IMAGE_NAME := andirotter/wawivision
GENERIC_IMAGE_VERSION := latest

extract: $(FILE_NAME)
	mkdir tmp
	tar xzfv $(FILE_NAME) -C tmp --strip 1

build: extract Dockerfile
	docker build -t IMAGE_NAME:GENERIC_IMAGE_VERSION .

clean:
	rm -fr tmp

.PHONY: clean
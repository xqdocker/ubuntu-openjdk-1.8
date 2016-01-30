REPOSITORY = xqops/ubuntu-jdk1.8
VERSION = $(shell TZ=Asia/Shaanxi date +'%Y%m%d%H%M')

image:
	docker build -t $(REPOSITORY) .

release: image
	docker tag $(REPOSITORY):latest $(REPOSITORY):$(VERSION)
	docker push $(REPOSITORY):latest
	docker push $(REPOSITORY):$(VERSION)
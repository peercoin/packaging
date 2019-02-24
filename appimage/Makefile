all:
	make clean
	make resources-appimage-tools
	make resources-peercoin-source-code
	make docker-image
	make build-appimage

clean:
	rm -rf build/*
	cd resources/; rm -rf peercoin/ AppDir/ *.AppImage

resources-appimage-tools:
	cd resources/; wget https://github.com/linuxdeploy/linuxdeploy/releases/download/continuous/linuxdeploy-x86_64.AppImage
	cd resources/; chmod +x linuxdeploy-x86_64.AppImage
	cd resources/; wget https://github.com/linuxdeploy/linuxdeploy-plugin-qt/releases/download/continuous/linuxdeploy-plugin-qt-x86_64.AppImage
	cd resources/; chmod +x linuxdeploy-plugin-qt-x86_64.AppImage

resources-peercoin-source-code:
	cd resources/; git clone https://github.com/peercoin/peercoin
ifdef TAG
	cd resources/peercoin/; git checkout $(TAG)
endif

docker-image:
	docker build -t peercoin/appimage .

build-appimage:
	docker run --privileged -v `pwd`/build:/opt/appimage/build --rm peercoin/appimage

# Build AppImage
cd /opt/appimage/resources

./linuxdeploy-x86_64.AppImage --appdir AppDir \
                              -e peercoin/src/qt/peercoin-qt \
                              -d peercoin-qt.desktop \
                              -i peercoin/share/pixmaps/peercoin128.png \
                              --output appimage

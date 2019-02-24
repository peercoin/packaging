# Build AppImage
cd /opt/appimage/resources

export QT_SELECT=qt5
./linuxdeploy-x86_64.AppImage --appdir AppDir \
                              -e peercoin/src/qt/peercoin-qt \
                              -d peercoin-qt.desktop \
                              -i peercoin/share/pixmaps/peercoin128.png \
                              --plugin qt \
                              --output appimage


Debian
====================
This directory contains files used to package peercoin/peercoin-qt
for Debian-based Linux systems. If you compile peercoin/peercoin-qt yourself, there are some useful files here.

## peercoin: URI support ##


peercoin-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install peercoin-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your peercoin-qt binary to `/usr/bin`
and the `../../share/pixmaps/peercoin128.png` to `/usr/share/pixmaps`

peercoin-qt.protocol (KDE)


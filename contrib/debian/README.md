
Debian
====================
This directory contains files used to package destocoind/destocoin-qt
for Debian-based Linux systems. If you compile destocoind/destocoin-qt yourself, there are some useful files here.

## destocoin: URI support ##


destocoin-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install destocoin-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your destocoinqt binary to `/usr/bin`
and the `../../share/pixmaps/destocoin128.png` to `/usr/share/pixmaps`

destocoin-qt.protocol (KDE)


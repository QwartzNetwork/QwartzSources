
Debian
====================
This directory contains files used to package qwartzd/qwartz-qt
for Debian-based Linux systems. If you compile qwartzd/qwartz-qt yourself, there are some useful files here.

## qwartz: URI support ##


qwartz-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install qwartz-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your qwartz-qt binary to `/usr/bin`
and the `../../share/pixmaps/qwartz128.png` to `/usr/share/pixmaps`

qwartz-qt.protocol (KDE)



Debian
====================
This directory contains files used to package marlind/marlin-qt
for Debian-based Linux systems. If you compile marlind/marlin-qt yourself, there are some useful files here.

## marlin: URI support ##


marlin-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install marlin-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your marlin-qt binary to `/usr/bin`
and the `../../share/pixmaps/marlin128.png` to `/usr/share/pixmaps`

marlin-qt.protocol (KDE)


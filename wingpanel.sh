#!/bin/bash

if [[ -d /tmp/greeter ]]
then
	echo "/greeter exists within /tmp/, deleting."
	rm -rf /tmp/wingpanel
fi
# Clones wingpanel into tmp
cd /tmp/
git clone https://github.com/elementary/wingpanel.git
cd /tmp/wingpanel

# Replace path to new texture's path.
sed -i "s/#000;/alpha(#1C1616, 0.2);/" data/styles/panel.css

# Build wingpanel
meson _build --prefix=/usr
ninja install -C _build


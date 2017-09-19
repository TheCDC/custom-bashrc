#!/bin/bash
cd ~/
if [ ! -f "~/.bashrc" ]; then
	# echo ".bashrc exists"
	d=`date '+%Y_%m_%d__%H_%M_%S'`;
	target=".old-bashrc/.bashrc-$d"
	old=".bashrc"
	echo "Moving $old to $target"
	mkdir -p .old-bashrc
	touch $target
	cp -v $old $target
	# rm $old
fi
ln -s ~/custom-bashrc/.bashrc ~/.bashrc

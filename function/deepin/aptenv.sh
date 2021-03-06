#!/usr/bin/env bash

# apt package
aptenv(){
  apt-get update
  apt-get  autoremove -y
  declare -a myarray
 
  myarray=(
              libnss3-tools python-gtk2 libffi-dev python-appindicator libnss3-tools  fcitx-table-wbpy
              apt-transport-https ca-certificates
              vim-gnome   git    unrar p7zip    build-essential   cmake putty  python-pip
              ipython wget curl
              iftop    okular kchmviewer  goldendict  dia miredo
              electronic-wechat teamviewer-host xmind calibre  firefox
         )


	
	for i in ${myarray[@]};
	do
	   if (( $(dpkg -l | awk '{print $2}' | grep ^$i | wc -l)==0 )) ;then
        echo Install $i
	      apt-get install -y $i;
	   fi

	done
}


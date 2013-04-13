# !/bin/bash


# Adding some new repos...
#add-apt-repository -y ppa:nvbn-rm/ppa


#apt-get update


SOFT_STRING="filezilla padre geany netbeans everpad kopete mysql-workbench putty git"
for PNAME in $SOFT_STRING 
	do
		`apt-get install -y $PNAME >> /dev/null`
		echo "$PNAME installed"
	done


echo "Installing CPANminus"

cd /opt/ 
curl https://raw.github.com/miyagawa/cpanminus/master/cpanm > cpanm
chmod +x cpanm
ln -s /opt/cpanm /usr/bin/


echo "Installing padre plugins"
P_PLUGINS="Experimento PerlTidy" 
for PNAME in $P_PLUGINS
do
	FULL_PLUGIN_NAME="Padre::Plugin::$PNAME"
	cpanm $FULL_PLUGIN_NAME
done


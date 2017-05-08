echo "UNZIP BUNDLE_FE"

packageNum=`php currentPackage.php | xargs`

mkdir $HOME/Packages/Unzip/
cd $HOME/Packages/Unzip/

tar -xzf $HOME/Packages/frontendPackage-v"$packageNum".tar.gz -C /home/uziar/Packages/Unzip

sudo cp -a $HOME/Packages/frontend/Unzip/. /var/www/html/

echo -e "\n"
echo "Success"

rm -r $HOME/Packages/frontend/Unzip




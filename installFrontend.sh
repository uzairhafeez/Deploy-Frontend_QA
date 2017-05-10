echo "UNZIP BUNDLE_FE"

# packageNum=`php currentPackage.php | xargs`
package="$1"

mkdir $HOME/Packages/Unzip/
# cd $HOME/Packages/Unzip/

tar -xzf $HOME/Packages/$package -C /home/uzair/Packages/Unzip

echo "Adjusting RabbitMQ .ini..."

sed -i '2s/.*/BROKER_HOST = 192.168.2.20/g' $HOME/Packages/Unzip/FE/testRabbitMQ.ini

sudo cp -a $HOME/Packages/Unzip/FE/. /var/www/html/

echo -e "\n"

rm -r $HOME/Packages/frontend/Unzip

echo "Frontend Package is sucessfully installed!"


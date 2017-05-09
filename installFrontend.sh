echo "UNZIP BUNDLE_FE"

# packageNum=`php currentPackage.php | xargs`
package="$1"

mkdir $HOME/Packages/Unzip/
cd $HOME/Packages/Unzip/

tar -xzf $HOME/Packages/$package -C /home/uziar/Packages/Unzip

sudo cp -a $HOME/Packages/Unzip/. /var/www/html/

echo -e "\n"
echo "Success"

rm -r $HOME/Packages/frontend/Unzip


echo "Adjusting RabbitMQ .ini..."

sed -i '2s/.*/BROKER_HOST = 192.168.2.20/g' /var/www/html/testRabbitMQ.ini

echo "Frontend Package is sucessfully installed!"

wget https://unmined.net/download/unmined-cli-linux-x64-dev/?tmstv=$(date +%s) -O unmined.tar.gz
mkdir unmined
tar -xvf unmined.tar.gz --strip-components=1 -C ./unmined

rm -rf tiles unmined.* custom.markers.js custom.pin.png
./unmined/unmined-cli web render --world .map --dimension overworld --zoomin 3 --output .
mv unmined.index.html index.html

#rm -rf caves
#./unmined/unmined-cli web render --world .map --dimension overworld --zoomin 3 --gndxray true --output caves
#mv caves/unmined.index.html caves/index.html

rm -rf nether
./unmined/unmined-cli web render --world .map --dimension nether --zoomin 3 --output nether
mv nether/unmined.index.html nether/index.html

rm -rf end
./unmined/unmined-cli web render --world .map --dimension end --zoomin 3 --output end
mv end/unmined.index.html end/index.html

rm -rf unmined unmined.tar.gz

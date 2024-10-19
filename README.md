# BlumAtuo.js
download termux
open termux
pkg update && pkg upgrade && pkg install nodejs && pkg install git
git clone https://github.com/linkdotme/BlumAuto.js.git
cd BlumAuto.js
npm install
edit users.txt in BlumAuto.js/src/data/users.txt   (nano users.txt and pase quary_id)
cd ..
cd ..
nmp start

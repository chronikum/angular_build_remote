if [ -z "$1" ]
  then
    echo "Please provide me with your username"
    exit 1
fi
if [ -z "$2" ]
  then
    echo "Please provide me with a keyfile."
    exit 1
fi
if [ -z "$3"]
  then
   echo "Please provide me with a hostname or an ip address."
   exit 1
fi
if [ -z "$4"]
  then
   echo "Please provice me with the project folder of your angular project and place me next to it"
   exit 1
fi
echo "I will build the project $4 for you!"
ls
echo "Looking at what you got.."
cd $4
ls
rsync -avz -e "ssh -l $1 -i $2" --exclude 'node_modules' --exclude '.env' --exclude 'dist/*' $(pwd)  $1@$3:/home/$1/build
ssh $1@$3 -i $2 "cd build;cd $4; npm i;npx ng build --prod"
mkdir dist
rsync -avz -e "ssh -l $1 -i $2" $1@$3:/home/$1/build/$4/dist/$4 $(pwd)/dist
echo "Done! I built your angular project and it's located here: $(pwd)/dist/$4"

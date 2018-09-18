#!/bin/sh
[ -d target/large ] || mkdir -p target/large
[ -d target/thumb ] || mkdir -p target/thumb

./find_new_images.sh | xargs -P2 -n1 -I% convert  full/%  -auto-orient -thumbnail 500x180\>    target/thumb/% && jpegoptim target/thumb/* -t --all-progressive -m90 --strip-all
./find_new_images.sh | xargs -P2 -n1 -I£ convert  full/£  -auto-orient -resize 1920x1080\>  target/large/£  && jpegoptim target/large/* -t --all-progressive -m90// --strip-all 


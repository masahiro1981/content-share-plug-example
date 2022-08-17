#! /bin/bash

#Snap is calling content of other snap.
echo "Show $PATH."
echo $PATH

echo "Unfortunately, $SNAP/bin, $SNAP/usr/bin is not part of it so adding them"
export PATH=$PATH:$SNAP/bin/:$SNAP/usr/bin
echo $PATH

# call helloworld.sh shared by other snap.  
echo "Execute hellowrold from consumer snap without absolute path" 
helloworld.sh

echo "Execute hellowrold using abosolute  path"
$SNAP/bin/helloworld.sh


echo "Executing tree from provider snap without absolute path"
tree

echo "Executing tree using absolute path"
$SNAP/usr/bin/tree



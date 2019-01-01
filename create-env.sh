#!/bin/bash
cont_count=$1
echo "creating $cont_count containers.."
sleep 2;
for i in `seq $cont_count`
do
	echo "=============================="
    echo "Creating www.gamutkart$i container.."
    sleep 1
    docker run --name www.gamutkart$i -d -it --rm durai5050/jenkin-image /bin/bash
    echo "www.gamutkart$i container has been created!"
	echo "=============================="
done

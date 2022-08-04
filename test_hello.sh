#!/bin/bash

ERROR_EXIT () {
       	echo "$1" >&2 
	rm -f /tmp/$$-* 
	exit 1
}

./hello.sh > /tmp/$$-result
echo "hello" > /tmp/$$-ans
echo "world" >> /tmp/$$-ans
diff /tmp/$$-ans /tmp/$$-result || ERROR_EXIT "result err"

echo "テストクリアしました"
rm -f /tmp/$$-*

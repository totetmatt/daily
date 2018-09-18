#/bin/bash
ls full/ > /tmp/daily2.full
ls target/large/ > /tmp/daily2.large
diff -r /tmp/daily2.full /tmp/daily2.large  | grep "<" | sed 's/< //'

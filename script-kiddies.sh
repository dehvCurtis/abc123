#!/usr/bin/env bash

# SED
echo "SED"
cat <<-EOF > /tmp/test.txt
Nory was a engineer because her mother was a engineer, 
and Nory’s mother was a engineer because her father 
was a engineer, and her father was a engineer because 
his mother was a engineer, or had been.
EOF

echo 'Text to be altered:'
cat /tmp/test.txt

sed -i '.bak' 's/engineer/programmer/' /tmp/test.txt

echo 'Altered text:'
cat /tmp/test.txt

# AWK
echo "AWK"
cat <<-EOF > /tmp/test1.txt
Nory was a engineer because her mother was a engineer, 
and Nory’s mother was a engineer because her father 
was a engineer, and her father was a engineer because 
his mother was a engineer, or had been.
EOF

echo 'Text to be altered:'
cat /tmp/test1.txt

echo 'Altered text:'

awk '{sub(/engineer/,"manager")}1' /tmp/test1.txt
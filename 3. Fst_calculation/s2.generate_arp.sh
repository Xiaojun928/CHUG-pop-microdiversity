#!/bin/bash
for i in `ls *arp.tmp`
do
j=$(basename $i .arp.tmp)
cp template $j.arp
sed -i "9r ${i}" $j.arp
done


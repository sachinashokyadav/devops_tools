#!/bin/bash

##############################
#Created  by Sachin yadav
#Date 27th April
#File_System_Directory_Structure
##############################

set -e

cd /home/admin/directory_structure
rm -rf dir* home opt

mkdir home dir1 dir2 dir3 dir4 dir5 dir6 dir7 dir8 opt
touch f1 f2

cd /home/admin/directory_structure/dir1
touch f1

cd /home/admin/directory_structure/dir2
mkdir -p dir1/dir2/dir10
cd dir1/dir2
touch f3

cd /home/admin/directory_structure/dir3
mkdir dir11

cd /home/admin/directory_structure/dir4
mkdir dir12

cd dir12/
touch f5 f4

cd /home/admin/directory_structure/dir5
mkdir dir13

cd /home/admin/directory_structure/dir7
mkdir dir10
touch f3

cd /home/admin/directory_structure/dir8
mkdir dir9

cd /home/admin/directory_structure/opt
mkdir -p dir14/dir10

cd dir14
touch f3

echo "Script Executed Successful"

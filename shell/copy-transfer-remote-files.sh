#! /bin/sh
array=("10.10.19.10" "10.10.10.12" "10.10.10.10" "10.22.11.10" "10.10.20.10")
for i in "${array[@]}"; do
    echo "$i"
    rsync -r file1 file2.java file3.csv file4.csv <ssh-username>@$i:/etc/abcd/xyz
    echo $?
done

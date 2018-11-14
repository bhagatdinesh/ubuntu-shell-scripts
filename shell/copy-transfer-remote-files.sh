#! /bin/sh
array=("10.10.19.10" "10.10.10.12" "10.10.10.10" "10.22.11.10" "10.10.20.10")
for i in "${array[@]}"; do
    echo "$i"
    # rsync will create directory on remote machine if it does not exists and then transfers the files
    # transfer to remote machine
    rsync -r file1 file2.java file3.csv file4.csv <ssh-username>@$i:/etc/abcd/xyz
    # copy from remote machine
    rsync -r <ssh-username>@$i:/etc/abcd/xyz/* ~/Desktop/temp
    echo $?
done

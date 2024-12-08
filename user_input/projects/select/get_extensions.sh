#!/bin/bash


read -p "What is your name? " name
read -p "What is your surname/family name? " surname

PS3="Set the type of phone "

select phone in headset handheld; do
    echo "$phone"
    break
done

PS3="Set your department: "

select department in finance sales "customer device" engenearing; do
    echo "$department"
    break
done

read -N 4 -p "What is your extension number? " extension_number
read -N 4 -s -p "What access code would your like to use when dialing in? " acess_code

echo "$name,$surname,$phone,$department,$extension_number,$acess_code" >> extensions.csv

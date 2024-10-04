#!/bin/bash
if [ $(hostnamectl | grep -i -c 'kernel') -ne 0 ] 
then
    echo $(hostnamectl | grep -i kernel | cut -d: -f2-)
else
    echo "Não existe"
fi
read nome_do_arquivo
path=$(find / -name $nome_do_arquivo -type f 2> /dev/null) 
echo $path

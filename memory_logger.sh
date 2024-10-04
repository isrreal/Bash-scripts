if [[ -e $HOME/performance ]] ; then
	echo "A pasta $HOME/performance já existe"
else
	mkdir $HOME/performance
	echo "A pasta $HOME/performance acaba de ser criada"
fi

free >> $HOME/performance/memory.log


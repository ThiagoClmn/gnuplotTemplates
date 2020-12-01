#! /bin/bash
if  [ $# -ne 3 ]
then
	echo "os parâmetros são funcao1 funcao2 nome_do_script"
	exit
fi

#$0 nome do script
#$1
#$2
#e assim por diante

echo "set title 'Grafico exemplo'" > $3
echo "set key above" >> $3
echo "set xlabel 'coordenada x'" >> $3
echo "set xlabel 'coordenada y'" >> $3
echo "plot $1, $2" >> $3

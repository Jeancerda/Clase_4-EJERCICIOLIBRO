#Cuantas veces los niveles de los individuos 3 y 27 hay!

#Para los individuos 3

cut -f 1 data/Gesquiere2011_data.csv | grep -w 3 | grep -c 3

#Para los individuos 27

cut -f 1 data/Gesquiere2011_data.csv | grep -w 27 | grep -c 27


####

#Pra ello se crea un vector con las IDS del documento

Vdocuments=`tail -n +2 data/Gesquiere2011_data.csv | cut -f 1 | uniq `

for x in $Vdocuments
do
ids=`bash Conteo_Ejercicio_1-10-2.sh data/Gesquiere2011_data.csv $x`
echo "ID:" $x "conteo:" $ids
done


#mensaje de bienvenida
clear
echo "3 primeras filas" 
echo -e "\n"
head -n 3 AgGCN1.0_properties.csv
echo -e "\n"
echo "columnas 2 y 6"
echo -e "\n"
head -n 3 AgGCN1.0_properties.csv | cut -d "," -f 2,6 


# ver tamano del archivo
ls -lh ../data/Marra2014_data.fasta

# ver cuantos isogroup00036 hay!
grep isogroup00036 my_fila.fasta | wc -l

#reemplazar el limitar con dos espacios y una coma 
cat my_fila.fasta | tr -s " " "," > my_fila.tmp
mv my_fila.tmp my_fila.fasta

#cuantos ospgrps hay en el archivo
grep '>' my_fila.fasta |cut -d ',' -f 4 | sort | uniq | wc -l

#conting el mayor numero de lectura
grep '>' my_fila.fasta |cut -d ',' -f 1,3 | sort -t '='  -k 2 -n -r | head -n 1


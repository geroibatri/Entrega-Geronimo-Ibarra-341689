# Entrega Geronimo Ibarra - 341689
#!/bin/bash

#Muestra las opciones en pantalla y les agrega colores
imprimirOpciones(){
echo -e "\e[37m 1) Suma"
echo -e "\e[37m 2) Resta"
echo -e "\e[37m 3) Divisiòn"
echo -e "\e[37m 4) Saludo especial"
echo -e "\e[1;31m S) Salir"
echo -e "\e[0m" #Vuelve los colores a la normalidad
}

#Abre el script indicado segun la opcion que se le pase
abrirOpcion(){
case $1 in

"1") echo ""
read -p "Ingrese un nùmero: " num1
read -p "Ingrese un nùmero: " num2
echo "Resultado de Suma: $(expr $num1 + $num2)"
echo "";;

"2") echo ""
read -p "Ingrese un nùmero: " num1
read -p "Ingrese un nùmero: " num2
echo "Resultado de Resta: $(expr $num1 - $num2)"
echo "";;

"3") echo ""
read -p "Ingrese un nùmero: " num1
read -p "Ingrese un nùmero: " num2
echo "Resultado de Divisiòn: $(expr $num1 / $num2)"
echo "";;

"4") echo ""
read -p "Ingrese su nombre: " nombre
echo "Un saludo al mejor profe de la historia $nombre Chiarino"
echo "";;

"S")

echo ""
#Captura lo que ingrese el usuario en una variable salir y verifica su valor
read -p "Se cerrara el programa, esta seguro de que quiere salir? S para confirmar " salir

if [ $salir = "S" -o $salir = "s" ]
then
exit
fi
;;

"s")
echo ""
read -p "Se cerrara el programa, esta seguro de que quiere salir? S para confirmar " salir

if [ $salir = "S" -o $salir = "s" ]
then
exit
fi
;;

*)
echo "Opcion invalida"
;;

esac
}

#Aca empieza a ejecutarse el codigo

clear #Limpia la pantalla al empezar

while true #Usamos while para que no suceda que el usuario no pueda interactuar mas con el script despues de ingresar una opcion mal
do
imprimirOpciones
read -p "Seleccione una opcion " opc
abrirOpcion $opc
done

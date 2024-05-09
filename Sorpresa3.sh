#!/bin/bash

# Función para mostrar una ventana emergente con un mensaje
mostrar_ventana_emergente() {
    osascript -e 'display dialog "'"$1"'" buttons {"OK"} default button "OK" with title "'"$2"'"'
}

# Función para imprimir un dibujo con animación
imprimir_animacion() {
    local dibujo=$1
    local frames=$2
    for ((i = 0; i < $frames; i++)); do
        clear
        if [ $((i % 2)) -eq 0 ]; then
            imprimir_dibujo $dibujo
        else
            imprimir_dibujo_invertido $dibujo
        fi
        sleep 0.3
    done
}

# Función para imprimir un dibujo
imprimir_dibujo() {
    case $1 in
        1)
            echo "||\\   || || ||====  ======"
            echo "|| \\  || || ||        ||"
            echo "||  \\ || ||  ====||   ||"
            echo "||   \\|| ||      ||   ||"
            echo "||    \|| ||  =====    ||"
            ;;
        2)
            echo "|| ||===   /==\  	27001"
            echo "|| ||     ||  || 27001"
            echo "||  ===|| ||  || 	27001"
            echo "||     || ||  || 27001"
            echo "||  ====   \==/  	27001"
            ;;
        3)
	    echo "||=== \\  // ||==\  ||=== ||==\\"
            echo "||     \\//  ||  || ||    ||   ||"
            echo "||      ||   || -<  ||==  ||  //"
            echo "||      ||   ||  || ||    || \\"
            echo "||===   ||   ||==/  ||=== ||  \\"
            ;;
        *)
            echo "Opción de dibujo no válido."
            ;;
    esac
}

# Función para imprimir un dibujo invertido
imprimir_dibujo_invertido() {
    case $1 in
        1)
            echo "|•|\•\   |•| |@| |º|----  _______"
            echo "|•| \•\  |•| |@| |º|        |∞|"
            echo "|•|  \•\ |•| |@|  ----|º|   |∞|"
            echo "|•|   \•\|•| |@|      |º|   |∞|"
            echo "|•|    \•|•| |@|  ____|º|   |∞|"
            ;;
        2)
            echo "|| ||===   /==\  27001"
            echo "|| ||     ||  || 27001"
            echo "||  ===|| ||  || 27001"
            echo "||     || ||  || 27001"
            echo "||  ====   \==/  27001"
            ;;
        3)
            echo "|•|=== |º| |¡|--\\  |¶|=== |#|--\\"
            echo "|•|    |º| |¡|  |¡| |¶|    |#|   ||"
            echo "|•|    |º| |¡| --<  |¶|==  |#|  //"
            echo "|•|    |º| |¡|  |¡| |¶|    |#| \\"
            echo "|•|=== |º| |¡|__//  |¶|___ |#|  \\"
            ;;
        *)
            echo "Opción de dibujo no válido."
            ;;
    esac
}

# Función para mostrar el menú de opciones
mostrar_menu() {
    mostrar_ventana_emergente "Selecciona una opción:\n1. Ver dibujo animado\n2. Terminar programa" "Menú de Opciones"
    read -p "Selecciona una opción (1/2): " opcion
    case $opcion in
        1)
            mostrar_ventana_emergente "Selecciona una palabra animada:\n1. NIST\n2. ISO-27001\n3. CYBER" "Menú de Opciones"
            read -p "Captura un numero para imprimir un dibujo (1/2/3): " dibujo
            imprimir_animacion $dibujo 10
            ;;
        2)
            mostrar_ventana_emergente "¡Hasta luego! Gracias por utilizar mi pequenio programa." "Mensaje de Despedida, Bye"
            exit
            ;;
        *)
            mostrar_ventana_emergente "Opción inválida. Por favor, selecciona una opción válida." "Error"
            ;;
    esac
}

# Mostrar un mensaje de bienvenida
mostrar_ventana_emergente "¡Bienvenido al programa sorprendente! ¿Estas listo?" "Mensaje de Bienvenida a la Ciberseguridad"

# Loop principal
while true; do
    mostrar_menu
done

#Kevin Ramirez - 8SA

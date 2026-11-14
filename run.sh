#!/bin/bash
PLAYBOOK=$1
LIMIT=$2
DESTINO=$3

# Cargar explícitamente el PATH del usuario peet
export PATH="$HOME/.local/bin:$PATH"

# Ejecutar según si se pasa o no el argumento de destino extra
if [ -n "$DESTINO" ]; then
    /home/peet/.local/bin/ansible-playbook -i inventory.yml "$PLAYBOOK" --limit "$LIMIT" -e destino_host="$DESTINO"
else
    /home/peet/.local/bin/ansible-playbook -i inventory.yml "$PLAYBOOK" --limit "$LIMIT"
fi

#!/bin/bash set -e

echo “== Adicionando arquitetura i386 ==” sudo dpkg –add-architecture
i386

echo “== Atualizando pacotes ==” sudo apt update

echo “== Instalando Wine e dependências ==” sudo apt install -y wine
wine32 winetricks curl git python3 python3-pip

echo “== Clonando Grapejuice ==” git clone
https://gitlab.com/brinkervii/grapejuice.git || true cd grapejuice

echo “== Instalando Grapejuice ==” python3 install.py

echo “== Finalizado! Abra o Grapejuice pelo menu ou execute: grapejuice
gui”

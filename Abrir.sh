#!/bin/bash

DIR=$(dirname "$0")
echo "Insira o nome do aplicativo, todo em minusculo (Por exemplo: google, roblox, firefox, linux. E não: Google, Roblox, Firefox, Linux):"
read app
echo "Digite 2 vezes a senha do $app!"
gpg "$DIR/App.jar.gpg"
gpg "$DIR/Configuraçoes.tar.gz.gpg"
echo "Extraindo .$app"
tar -xzf Configuraçoes.tar.gz 
mv "$DIR/Configuraçoes/.$app" "$DIR/.$app"
echo "Se a senha estiver correta, o seu $app abrira em breve!"
java -jar ./App.jar
java -jar ./App.jar

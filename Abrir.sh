#!/bin/bash

echo "Insira o nome do aplicativo, todo em minusculo (Por exemplo: google, roblox, firefox, linux. E não: Google, Roblox, Firefox, Linux):"
read app
echo "Digite 2 vezes a senha do $app!"
gpg ./App.jar.gpg
gpg ./Configuraçoes.tar.gz.gpg
echo "Extraindo .$app"
tar -xzf Configuraçoes.tar.gz 
mv "./Configuraçoes/.$app" "~/.$app"
echo "Se a senha estiver correta, o seu $app abrira em breve!"
java -jar ./App.jar
java -jar ./App.jar


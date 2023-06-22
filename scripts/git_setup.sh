#!/bin/bash

echo "Setting up Git"

username=$1
email=$2

git config --global user.name $username
git config --global user.email $email

echo "Your username: $username"
echo "Your email: $email"

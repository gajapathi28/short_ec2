#!/bin/bash
if [ $1 == go ];
then
  export PATH=/usr/local/go/bin
  chmod +x /code/GO/hello.go
  go mod init
  go build -o /code/GO runme
  go install runme
elif [ $1 == cpp ];
then
  chmod + /code/CPP/main.cpp
  g++ hello.cpp -o runme
  ./runme
else echo "error in processing arguments"
fi
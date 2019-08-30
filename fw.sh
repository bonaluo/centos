#!/bin/sh

function reload(){
    firewall-cmd --reload
}

function add(){
    firewall-cmd --zone=public --add-port=$1/tcp --permanent
}

add $1
reload

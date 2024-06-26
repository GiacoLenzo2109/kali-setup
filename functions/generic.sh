#!/bin/bash

#################################################################### Generic ####################################################################

function echo_bold() {
    echo -e "\e[1;$CURRENT_COLOR$1\e[0m"
}

function category() {
    echo_bold ""
    echo_bold "[ * ] $1"
}

function subcategory() {
    echo_bold "|"
    echo_bold "[ * ][ * ] $1"
}

function setup_env() {
    DIR=$1
    mkdir $DIR > /dev/null 2>&1
    cd $DIR > /dev/null 2>&1
}

function folder() {
    if [ ! -d "$DIR/$1" ]; then
        mkdir -p "$DIR/$1" > /dev/null 2>&1
    fi
    cd $DIR/$1 > /dev/null 2>&1
}
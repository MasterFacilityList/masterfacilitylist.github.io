#!/usr/bin/env bash

build_folder=/tmp/build_html
src_folder=content/_build/html
current_hash=$(git rev-parse HEAD)

function build(){
    cp -R "$src_folder" "$build_folder"
    cd "$build_folder"
    git init
    git remote add deploy git@github.com/masterfacilitylist/masterfacilitylist.github.io
    git add .
    git commit -m "Autodeploy of MFL Documentation from $current_hash"
    git push -u origin deploy master
    cd -
}

function clean(){
    rm -rf "$build_folder"
}

build
clean

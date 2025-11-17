#!/usr/bin/env bash
# date: 17/11/2025
# author: omitida
# description: Cli interration using elixir programming language
#              it create, remotes and run the script

# helper function to display
function helper() {
    filename="${0}"
    echo
    echo "Usage: ${filename} <options> filename"
    echo
    echo "Avaliable Options:"
    echo "-d    : delete a file."
    echo "-g    : Create a generic exs file."
    echo "-r    : Compile and Run a exs file"
    echo "-h    : help."
}


# calle helper function if the cli parameter is wrong
[[ "${#}" != 2 ]] && helper

# opstring for interration
opstring="d:g:r:h"

while getopts "${opstring}" opt; do
    case "${opt}" in
        d)
            echo "deleting files..."
            ;;
        g)
            echo "creating a generic elixir file"
            ;;
        r)
            echo "run a file"
            ;;
        h)
            # display helper function
            helper
            exit 1
        ;;
        *)
            echo "Invalid file options."
            helper
            exit 1
    esac
done

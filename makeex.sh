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
    echo "-g    : Create a generic ex file."
    echo "-i    : Create a dummy project and lunch the elixir interraction prompts.
                  This project is deleted when you exit."
    echo "-p    : Creating an elixir project "
    echo "-r    : Compile and Run a ex or a exs file"
    echo "-s    : Create a generic exs file. A script file."
    echo "-h    : help."
}

# global filename initialized to empty
filename=

# check for the extension of the file
function check_extension() {
    file="${1}"
    # extension_type="${2}" # not needed for now
    file_extension="${file#*.}"
    if ! [[ -z "file_extension" ]]; then
        filename="${file%.*}"
    fi
}


# calle helper function if the cli parameter is wrong
[[ "${#}" != 2 ]] && helper

# opstring for interration
opstring="d:g:i:r:p:s:h"

while getopts "${opstring}" opt; do
    case "${opt}" in
        d)
            echo "deleting files..."
            ;;
        g)
            echo "creating a generic elixir file"

            file="${OPTARG}"
            check_extension "${file}" "not script"
            mix new "${filename}" --app "${filename}"
            ;;
        i)
            project_name="${OPTARG}"
            mix new "${project_name}"
            cd "${project_name}"
            iex -S mix
            cd ..
            while read -p "Will you like to retain the project: ${project_name}? [y|n]: " ans; do
                case "${ans}" in
                    y|Y)
                    echo "${project_name} is retained."
                    exit 0
                    ;;
                    n|N)
                        rm -rf "${project_name}"
                        echo "${project_name} is deleted."
                        exit
                        ;;
                    *)
                        echo "Invalid option. You can only use 'y' or 'n'. "
                        continue
                    ;;
                esac
            done
            ;;
        p)
            # create an elixir project with all required dependencies
            project_name="${OPTARG}"
            mix new "${project_name}"
            cd "${project_name}" && mix test
            ;;
        r)
            echo "run a file"
            ;;
        s)
            echo "run a elixir script file"

            file="${OPTARG}"
            # check_extension "${file}" "script"
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

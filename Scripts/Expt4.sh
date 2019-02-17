#!/bin/bash 

echo -e "Current User                : $USER (Login Name: $LOGNAME)"
echo -e "Current Shell               : $SHELL"
echo -e "Home Directory              : $HOME"
echo -e "OS Type                     : $OSTYPE"
echo -e "Path                        : $PATH"
echo -e "Current Working Directory   : $PWD"
echo -e "Number of Users Logged in   : `who | wc -l`"

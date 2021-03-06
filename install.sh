#!/bin/bash
############################
# This script creates symlinks from the home directory to any desired dotfiles in ~/Projects/dotfiles
############################

########## Variables

dir=~/Projects/dotfiles                    # dotfiles directory
olddir=~/dotfiles_backup                   # old dotfiles backup directory
files="bash bash_profile bashrc gitconfig gitignore_global hgignore hgrc lldbinit"   # list of files/folders to symlink in homedir

##########

# create dotfiles_old in homedir
echo "Creating $olddir for backup of any existing dotfiles in ~"
mkdir -p $olddir
echo "...done"

# change to the dotfiles directory
echo "Changing to the $dir directory"
cd $dir
echo "...done"

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks 
for file in $files; do
    echo "Moving any existing dotfiles from ~ to $olddir"
    mv ~/.$file $olddir
    echo "Creating symlink to $file in home directory."
    ln -s $dir/.$file ~/.$file
done


# Run script to set OS X defaults
sh osx/set-defaults.sh

#!/bin/bash
# Remove the nanorc file
rm -f ~/.nanorc

# Remove the custom bashrc lines
sed -i '/source ~\/.dotfiles\/etc\/bashrc_custom/d' ~/.bashrc


# Remove the .Trash directory
rm -rf ~/.TRASH

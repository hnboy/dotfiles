#!/usr/bin/env bash

yay -S base-devel cmake
yay -S fcitx5 fcitx5-rime fcitx5-configtool fcitx5-qt fcitx5-gtk 
yay -S rime-cloverpinyin fcitx5-material-color
yay -S noto-fonts-cjk


mkdir -p ~/.config/envirnment.d/
echo "GTK_IM_MODULE=fcitx
QT_IM_MODULE=fcitx
XMODIFIERS=@im=fcitx
INPUT_METHOD=fcitx
SDL_IM_MODULE=fcitx
GLFW_IM_MODULE=ibus"  > ~/.config/environment.d/fcitx.conf


echo "patch:
  menu/page_size: 8
  schema_list:
    - schema: clover" > ~/.local/share/fcitx5/rime/default.custom.yaml

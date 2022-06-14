#!/bin/bash

# Set '/' to R/W 
sudo steamos-readonly disable

# Create and populate with Arch keys
sudo pacman-key --init
sudo pacman-key --populate archlinux

# Some very useful commands
sudo pacman -S exa bat ninja meson cmake github-cli starship

# developement packages
sudo pacman -S base-devel
sudo pacman -S gcc clang python3 rust go

# SDL2 development packages
sudo pacman -S sdl2 sdl2_gfx sdl2_image sdl2_mixer sdl2_net sdl2_ttf

# OpenGL Extensions
sudo pacman -S freeglut glu glew

# OpenGL
sudo pacman -S libglvnd

# Link installed headers to the standard location
sudo pacman -S glibc
sudo pacman -S linux-neptune-headers
sudo ln -s /usr/lib/modules/5.13.0-valve15-1-neptune-02197-gf6ec7ad3762a/build/include/uapi/linux /usr/include/linux
sudo ln -s /usr/lib/modules/5.13.0-valve15-1-neptune-02197-gf6ec7ad3762a/build/include/uapi/asm-generic /usr/include/asm-generic
sudo ln -s /usr/lib/modules/5.13.0-valve15-1-neptune-02197-gf6ec7ad3762a/build/include/uapi/sound /usr/include/sound
sudo ln -s /usr/lib/modules/5.13.0-valve15-1-neptune-02197-gf6ec7ad3762a/build/include/uapi/video /usr/include/video
sudo ln -s /usr/lib/modules/5.13.0-valve15-1-neptune-02197-gf6ec7ad3762a/build/arch/x86/include/generated/uapi/asm /usr/include/asm

# Vulkan
sudo pacman -S vulkan-devel


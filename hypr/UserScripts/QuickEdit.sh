#!/bin/bash
# Rofi menu for Quick Edit / View of Settings (SUPER E)

configs="$HOME/.config/hypr/configs"
UserConfigs="$HOME/.config/hypr/UserConfigs"

menu(){
  printf "1. view Env-variables\n"
  printf "2. view Window-Rules\n"
  printf "3. view Startup_Apps\n"
  printf "4. view User-Keybinds\n"
  printf "5. view Monitors\n"
  printf "6. view Laptop-Keybinds\n"
  printf "7. view User-Settings\n"
  printf "8. view Default-Settings\n"
  printf "9. view Default-Keybinds\n"
}

main() {
    choice=$(menu | rofi -dmenu -config ~/.config/rofi/config-compact.rasi | cut -d. -f1)
    case $choice in
        1)
            neovide "$UserConfigs/ENVariables.conf"
            ;;
        2)
            neovide "$UserConfigs/WindowRules.conf"
            ;;
        3)
            neovide "$UserConfigs/Startup_Apps.conf"
            ;;
        4)
            neovide "$UserConfigs/UserKeybinds.conf"
            ;;
        5)
            neovide "$UserConfigs/Monitors.conf"
            ;;
        6)
            neovide "$UserConfigs/Laptops.conf"
            ;;
        7)
            neovide "$UserConfigs/UserSettings.conf"
            ;;
        8)
            neovide "$configs/Settings.conf"
            ;;
        9)
            neovide "$configs/Keybinds.conf"
            ;;
        *)
            ;;
    esac
}

main

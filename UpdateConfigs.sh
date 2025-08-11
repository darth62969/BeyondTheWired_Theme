# !/bin/bash
echo "Ensuring proper directory by changing directory to [$(dirname "$0")]"
cd $(dirname "$0")



echo "updateding configs ...."


case $1 in 
    hypr)
        cp -r ./.config/hypr/ ~/.config/
        ;;
    nwg-launcher)
        cp -r ./.config/nwg-launchers/ ~/.config/
        ;;
    waybar)
        cp -r ./.config/waybar/ ~/.config/
        ;;
    wpaperd)
        cp -r ./.config/wpaperd ~/.config/
        ;;
    backup)
        if [ ! -d backup ]; then
            mkdir backup
        fi
        cp -r ~/.config/wpaperd/ ./backup/
        cp -r ~/.config/waybar/ ./backup/
        cp -r ~/.config/nwg-launchers/ ./backup/
        cp -r ~/.config/hypr/ ./backup/
        ;;

    all)
        cp -r ./.config/ ~/.config/
        ;;
    *)
        echo "OOPS, please tell me what to do:"
        echo "options are hypr, nwg-launcher, waybar, wpaperd, and all."
        ;;
esac
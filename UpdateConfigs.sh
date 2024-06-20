# !/bin/bash
echo "Ensuring proper directory by changing directory to [$(dirname "$0")]"
cd $(dirname "$0")

echo "updateding configs ...."


case $1 in 
    hypr)
        cp -r ./.config/hypr/ ~/.config/
        ;;
    nwg-launcher)
        cp -r ./.config/nwg-launchers/ ~/.config/nwg-launchers/
    v    ;;
esac
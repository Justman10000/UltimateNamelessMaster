reset

echo "UltimateNamelessMaster by Justman10000"
sleep 1
echo "This is under the GNU General Public License v3.0"
sleep 2

clear

echo "What should be done?"
echo "Install (1)"
echo "Uninstall (2)"
echo "Exit (3)"
read WhatDo

case $WhatDo in
    "1")
        reset

        echo "Which series should be loaded?"
        echo "1.x [1]"
        echo "2.x [2] (Pre-Release)"
        read WhichSeries

        case $WhichSeries in
            "1")
                wget https://github.com/NamelessMC/Nameless/archive/refs/tags/v1.0.21.zip
            ;;

            "2")
                wget https://github.com/NamelessMC/Nameless/archive/refs/tags/v2.0.0-pr12.zip
            ;;
        esac

        unzip *.zip
        sleep 1
        mv Nameless*/* .
        sleep 1
        mv Nameless*/.* .
        sleep 1
        rm -r Nameless*
        sleep 1
        rm -r .*
        sleep 1
        rm -r *.md
        sleep 1
        rm -r *.txt
        sleep 1
        rm -r *.example
        sleep 1
        rm -r *.zip
        sleep 1
        chmod -R 775 .

        reset
    ;;

    "2")
        reset

        echo "Where is NameLess installed?"
        echo "Tip: Enter . to stated the current directory!"
        read WhereInstalled

        if [ "$WhereInstalled" == "." ]; then
            rm -r * .*
            sleep 1

            if [ -f *.zip ]; then
                rm -r *.zip
            fi

            reset
        fi        

        if [ $WhereInstalled ]; then
            rm -r $WhereInstalled
            sleep 1

            if [ -f *.zip ]; then
                rm -r *.zip
            fi

            reset
        fi

        if ! [ $WhereInstalled ]; then
            echo "This must be stated!"
            exit
            reset

            bash UltimateNamelessMaster.sh
        fi
    ;;

    "3")
        exit
        reset
    ;;
esac
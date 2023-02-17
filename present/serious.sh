printf '%80s Available Examples\n'

printf "%10s 1.Static\n"
printf "%10s 2.Construcor\n"
printf "%10s 3.Server\n"
printf "%10s 4.Client\n"
printf "%10s 5.Overriding\n"
echo
printf "%10s Enter your choice: "
read -r usrchoice

case $usrchoice in
    1)
        printf '%80s Entered Static example\n'
        cd static
        printf '%80s Static example Code\n'
        cat *.java
        printf '%80s Compiling and Executing program\n'
        javac -d ../classfiles *.java
        # ls | grep .class
        cd ..
        cd classfiles
        comm=$(ls | grep .class)
        Classfile=${comm::-6}
        java $Classfile
        make clean
        echo
        echo
        cd .. 
        ;;
    2)
        printf '%80sEntered Constructor example\n'
        echo
        echo
        cd constructor
        printf '%80s Constructor example Code\n'
        cat *.java
        printf '%80s Compiling and Executing program\n'
        javac -d ../classfiles *.java
        # ls | grep .class
        cd ..
        cd classfiles
        comm=$(ls | grep .class)
        Classfile=${comm::-6}
        java $Classfile
        echo
        echo
        make clean
        cd .. 
        ;;
    3)
        printf '%80sEntered Server example\n'
        echo
        echo
        cd server
        printf '%80s Server example Code\n'
        cat *.java
        printf '%80s Compiling and Executing program\n'
        javac -d ../classfiles *.java
        # ls | grep .class
        cd ..
        cd classfiles
        comm="Server.class"
        Classfile=${comm::-6}
        java $Classfile
        echo
        echo
        make clean
        cd .. 
        ;;
    4)
        printf '%80sEntered Client example\n'
        echo
        echo
        cd Client
        printf '%80s Client example Code\n'
        cat *.java
        printf '%80s Compiling and Executing program\n'
        javac -d ../classfiles *.java
        # ls | grep .class
        cd ..
        cd classfiles
        comm=$(ls | grep .class)
        Classfile=${comm::-6}
        java $Classfile
        echo
        echo
        make clean
        cd .. 
        ;;
    5)
        printf '%80sEntered Overriding example\n'
        echo
        echo
        cd Override
        printf '%80s Overriding example Code\n'
        cat *.java
        printf '%80s Compiling and Executing program\n'
        javac -d ../classfiles *.java
        # ls | grep .class
        cd ..
        cd classfiles
        comm="Over.class"
        Classfile=${comm::-6}
        java $Classfile
        echo
        echo
        make clean
        cd .. 
        ;;
    # 6)
    #     printf '%15sEntered Syn_flood set up\n'
    #     echo 
    #     var=$(ls | grep sensor)
    #     ret=$?
    #     if [ "$ret" == "0" ]
    #         then
    #         printf 'Enter MQTT broker address :            '
    #         read -r host_ip
    #         printf 'Finding arduino port...'
    #         cd sensor
    #         echo
    #         printf "Going to start with these parameters: \n"
    #         printf ' Host ip     :    %s\n ' "$host_ip"
    #         echo
    #         python3 mat.py $host_ip
    #     else
    #         echo "run script from intended directory or the file is missing/renamed"
    #     fi
    #     ;;
    # 7)
    #     printf '%15sEntered MQTT subscribe set up\n'
    #     echo 
    #     var=$(ls | grep sensor)
    #     ret=$?
    #     if [ "$ret" == "0" ]
    #         then
    #         printf 'Enter MQTT broker address :            '
    #         read -r host_ip
    #         echo
    #         printf "Going to start with these parameters: \n"
    #         printf ' Host ip     :    %s\n ' "$host_ip"
    #         echo
    #         cd sensor
    #         python3 data_sub.py $host_ip
    #     else
    #         echo "run script from intended directory or the file is missing/renamed"
    #     fi
    #     ;;
    # 8)
    #     printf '%15sStarting Snort \n'
    #     echo
    #     if [ "$EUID" -ne 0 ]
    #         then echo " Please run as root "
    #     exit
    #     fi
    #     snort -A full -l /home/hariprasaath/versions/miniproject_bash -i wlp3s0  -c /etc/snort/test_snort.conf
    #     ;;
    *)
        echo 'Enter a valid choice'
        ;;
esac

# if [ "$EUID" -ne 0 ]
#   then echo "Please run as root"
#   exit
# fi

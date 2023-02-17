printf '%80s Available Examples:\n'

printf "%10s 1.Static\n"
printf "%10s 2.Construcor\n"
echo
printf "%10s Enter your choice: "
read -r usrchoice

case $usrchoice in
    1)
        printf '%80s Entered Static example\n'
        cd static
        javac *.java
        # ls | grep .class
        comm=$(ls | grep .class)
        Classfile=${comm::-6}
        java $Classfile
        echo
        echo
        cd .. 
        ;;
    2)
        printf '%80sEntered Constructor example\n'
        echo
        echo
        cd constructor
        javac *.java
        # ls | grep .class
        comm=$(ls | grep .class)
        Classfile=${comm::-6}
        java $Classfile
        echo
        echo
        make clean
        cd .. 
        ;;
    # 3)
    #     printf '%15sEntered mosquitto starter set up\n'
    #     echo "starting mosqutto broker: "
    #     printf " If mosquitto already running please stop with sudo systemctl stop mosquitto\n"
    #         var=$(ls | grep test.conf)
    #         ret=$?
    #         if [ "$ret" == "0" ]
    #             then    
    #             echo
    #             mosquitto -v -c "test.conf"
    #         else
    #             echo "run script from intended directory or test.conf is missing"
    #         fi
    #     ;;
    # 4)
    #     printf '%15sEntered iptables rules\n'
    #     echo 
    #     if [ "$EUID" -ne 0 ]
    #         then echo " Please run as root "
    #     exit
    #     fi
    #     var=$(iptables --version)
    #     ret=$?
    #     if [ "$ret" == "0" ]
    #             then
    #             iptables -t nat -L
    #         else
    #             echo " iptables may not be installed in your system"
    #         fi

    #     ;;
    # 5)
    #     printf '%15sEntered Syn_flood set up\n'
    #     echo 

    #         var=$(ls | grep attackers)
    #         ret=$?
    #         if [ "$ret" == "0" ]
    #             then
    #             printf 'Enter target ip address :            '
    #             read -r target_ip
    #             printf 'Enter port number       :            '
    #             read -r port_num
    #             printf 'Enter num of packets    :            '
    #             read -r num_pkts
    #             cd attackers
    #             echo
    #             printf "Going to start with these parameters: \n"
    #             printf '  Host ip     :    %s\n ' "$target_ip"
    #             printf 'port numb    :    %s\n ' "$port_num"
    #             printf 'numb pkts    :    %s\n ' "$num_pkts"
    #             echo
    #             python3 syn_flood.py $target_ip $port_num $num_pkts
    #         else
    #             echo "run script from intended directory or the file is missing/renamed"
    #         fi
    #     ;;
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

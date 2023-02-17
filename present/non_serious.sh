printf "%80s Presentation for Head first JAVA with ChatGPT \n"
echo
echo
printf "%10s This task was given a 10 days of time to complete 700 pages and 70 pages per day but it doesn't happen like that\n"
echo 
echo
printf "%10s 'In this world, there are only two things that are certain: death and anything can happen.'"
echo
echo
printf "%90s -Hardboiled detective Kozenigata Heiji "
echo
echo
printf "%10s Here all the Examples which are to be presented are queried Chatgpt and tried to infer the usage of Chatgpt. All the queries are included"
echo
echo
printf "%10s This presentations is in github repo can be seen in parallel"
echo
echo
printf "%10s Sending Email"
echo
echo

javac -cp .:javax.mail.jar:activation.jar SendEmail.java
java -cp .:javax.mail.jar:activation.jar SendEmail
make clean

printf "%80s  serious stuffs\n"
./serious.sh


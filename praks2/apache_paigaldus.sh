#apache paigaldusskript
#
#kontrollib  kas apache2 on installitud
APACHE2=$(dpkg-query -W -f='${Status}' apache2 2>/dev/null | grep -c 'ok installed')
# kui muutuja = 0
if [ $APACHE2 -eq 0 ]; then
	echo "Paigaldame apache2"
	apt install apache2
	echo "Apache on paigaldatud"
# kui APACHE2 muutuja väärtus võrdub 1-ga
elif [ $APACHE2 -eq 1 ]; then
	echo "apache2 on juba paigaldatud"
	#stardime selle ja näitame staatust
	service apache2 start
	service apache2 status
# lõpetamise tingimuslause
fi
# lõpp


#!/bin/sh

# Header Guards
if [ -z ${FUNCTIONS_SH+dummy} ]; then
    FUNCTIONS_SH="FUNCTIONS_SH"

	print_color() {
		if [[ "$2" == "ERROR" || "$2" == "false" || "$2" == "EMPTY" ]]; then
			COLOR="\033[31m"    # Red
		else
			COLOR="\033[32m"    # Green
		fi
		printf "%-30s %-10b %-10s\n" "$1" " : $COLOR$2\033[0m" "$3"
	}

	stop_and_remove_container() {
		echo "$COLOR_YELLOW""Stop and delete your container : $CONTAINER_NAME ...""$COLOR_RESET"
    	docker stop $CONTAINER_NAME && docker rm $CONTAINER_NAME
}
fi

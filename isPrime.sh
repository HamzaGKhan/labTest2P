#!/bin/bash
is_prime () {
    declare -a REMAINDER_S=()
    let ARG_1=$1-1
    for N in $(seq 2 $ARG_1)
    do
        let REMINDER=$1%$N
        if [ $REMINDER == 0 ]
        then
            REMINDER_S=("${REMINDER_S[@]}" $REMINDER)
            return 1
        fi      
    done

    if [ ${#REMINDER_S[@]} == 0 ]
    then
        return 0
    fi
}

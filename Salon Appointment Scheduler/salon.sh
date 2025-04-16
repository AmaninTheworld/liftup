#!/bin/bash
PSQL="psql -X --username=freecodecamp --dbname=salon --tuples-only -c"

echo '
~~~~~ MY SALON ~~~~~

Welcome to My Salon, how can I help you?
'

LIST_SERVICE(){
  SERVICE_LIST=$($PSQL "select service_id,name from services")

  echo "$SERVICE_LIST" | while read ID BAR NAME
  do 
    echo "$ID) $NAME"
  done
}

PICK_SERVICE(){

  read SERVICE_ID_SELECTED

  VALID_SELECTED=false
  if [[ $SERVICE_ID_SELECTED =~ ^[0-9]+$ ]]
  then
    PICKED_SERVICE=$($PSQL "select name from services where service_id = $SERVICE_ID_SELECTED ")
    if [[ ! -z $PICKED_SERVICE ]]
    then 
      VALID_SELECTED=true
    fi
  fi 

  if [[ $VALID_SELECTED == false ]]
  then
    SERVICE_MENU "I could not find that service. What would you like today?"
  else
    echo "What's your phone number?"
    read CUSTOMER_PHONE

    PICKED_NAME=$($PSQL "select name from customers where phone like '$CUSTOMER_PHONE' ")
    if [[ -z $PICKED_NAME ]]
    then
      echo "I don't have a record for that phone number, what's your name?"
      read CUSTOMER_NAME
      PICKED_NAME=$CUSTOMER_NAME
    fi
    echo "What time would you like your $PICKED_SERVICE, $PICKED_NAME?" | sed 's/  / /' | cat 
    read SERVICE_TIME

    echo "I have put you down for a cut at $SERVICE_TIME, $PICKED_NAME."

    ADD_NEW_CUSTOMER_RESAULT=$($PSQL "insert into customers(name,phone) values('$NAME','$CUSTOMER_PHONE') ")
    echo "?$ADD_NEW_CUSTOMER_RESAULT?"
    CUSTOMER_ID=$($PSQL "select customer_id from customers where phone = '$CUSTOMER_PHONE' ")
    echo "?$CUSTOMER_ID?"
    
    ADD_APPOINTMENT=$($PSQL "insert into appointments(customer_id, service_id, time) values($CUSTOMER_ID, $SERVICE_ID_SELECTED, '$SERVICE_TIME') ")


  fi

}

SERVICE_MENU(){
  if [[ ! -z $1 ]]
  then
    echo $1
  fi

  LIST_SERVICE

  PICK_SERVICE

}

SERVICE_MENU














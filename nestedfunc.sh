#!/bin/bash
#example of nested functions

#function definition starts

#create a human being
funcHuman () {
  ARMS=2
  LEGS=2
 
  echo "A human has $ARMS arms and $LEGS legs"  

  funcMale () {
    BEARD=1
    echo "This man has $ARMS arms $LEGS legs with $BEARD beard"
  }

  funcFemale () {
    BEARD=0  
    echo "This Woman has $ARMS arms $LEGS legs with $BEARD beard"
  }
}

clear

echo "Enter your gender"
read GENDER

echo "Determining the characetristics based on gender passed"

if [ "$GENDER" == "male" ]; then
   funcHuman
   funcMale
elif [ "$GENDER" == "female" ]; then
   funcHuman
   funcFemale
else
   echo "You should have entered 'male' or 'female' only" 
fi


# Store and load a variable.
STRING Stored_value:_
STRING ~
DATA score 0
LOADN R1 17
STORE R1 score
LOADN R2 5
ADDM R2 score
STORE R2 score
LOADM R3 score
OUTSN 0
OUTR R3
OUTSN 1
STOP

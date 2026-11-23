# Move data between registers and calculate.
STRING Register_result:_
STRING ~
LOADN R1 12
LOADR R2 R1
ADDN R2 8
SUBR R2 R1
MULR R2 R1
OUTSN 0
OUTR R2
OUTSN 1
STOP

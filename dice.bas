#INCLUDE "dice.bi"

FUNCTION round( value AS DOUBLE) AS DOUBLE
	DIM number AS DOUBLE
	DIM fraction AS DOUBLE
	number = INT (value)  	' get the integer part of value
	fraction = Frac (value) ' Get the decimal part of value
	IF fraction >= .5 THEN	' round up if => .5,  round down if less than .5
		round = number +1
	ELSE
		round = number

	END IF


END FUNCTION
'******************************************************************
'function floor (value as double) as integer
'
'return nearest whole number less than  value..
'floor use a double and returns an integer 
'******************************************************************
FUNCTION floor (value AS DOUBLE) AS INTEGER
	DIM number AS DOUBLE
	DIM fraction AS DOUBLE
	number = INT (value)					' get the integer part of value
	fraction = Frac (value)				' Get the decimal part of value
	IF fraction <> 0 THEN
		IF SGN(value)= -1 THEN   		'degermine if value is negitive
			floor = number -1				'yes return number -1
		ELSE				
			floor=number					'No return Number
		END IF
	ELSE
		floor = value						'if whole number return number.
	END IF

END FUNCTION
'******************************************************************
'function ceil (value as double) as Integer 
'
'return nearest whole number greater to value
'ceil use a double and returns an integer
'******************************************************************
FUNCTION ceil (value AS DOUBLE) AS INTEGER
	DIM number AS DOUBLE
	DIM fraction AS DOUBLE
	number = INT (value)					' get the integer part of value
	fraction = Frac (value)				' Get the decimal part of value
	IF fraction <>0 THEN
		IF SGN(value)= -1 THEN			'degermine if value is negitive
			ceil = number					'yes return Number
		ELSE
			ceil=number + 1				'no return number +1
		END IF
	ELSE
		ceil= value
	END IF

END FUNCTION
'******************************************************************
'' Function to a random number in the range [first, last),
'  or {first <= x < last}.
'******************************************************************
FUNCTION rnd_range (first AS DOUBLE, last AS DOUBLE) AS DOUBLE
	
	rnd_range = RND * (last - first +1)
	
END FUNCTION

'******************************************************************
' Functions to return a random array member
'******************************************************************

FUNCTION pick OverLoad ( list() AS STRING) AS STRING
	RETURN list(rnd_range (LBOUND(list), UBOUND(list)-1))
END FUNCTION

FUNCTION pick OverLoad (list() AS INTEGER) AS INTEGER
	RETURN list(rnd_range (LBOUND(list), UBOUND(list)-1))
END FUNCTION





''/* boolean convenience functions */
FUNCTION CoinToss() AS INTEGER
	RETURN RollDice(1,2)
END FUNCTION

FUNCTION percentChance (chance AS INTEGER ) AS INTEGER

	IF  (RollDice(1,100) <= chance) THEN
		RETURN 1
	ELSE
		RETURN -1
	END IF
END FUNCTION
'******************************************************************
'Function:
'   getRandomNumber
'
'Inputs:
'   int numSides    // Range limit of 1..N inclusive
'
'Outputs:
'   int result
'
'Assumptions:
'   System randomizer has already been initialized because
'   it should not be initilized here since it will be reinitialized
'   every time this function is called.
'
'Notes:
'   The standard VB random number generation code is unfair to endpoint
'   numbers in the range.  My own analysis has deteremined that d20 (1..20)
'   that numbers 2..19 are greater than their theoretical occurance of 5%
'   and numbers 1 & 20 are below their theoretical occurance usually 2.5%
'
'   Analysis:
'   # Of dice:      500,000
'   # Of sides:     20
'
'Side    #      %
'1      13204   2.6408
'2      26357   5.2714
'3      26120   5.224
'4      26198   5.2396
'5      26033   5.2066
'6      26257   5.2514
'7      26378   5.2756
'8      26365   5.273
'9      26515   5.303
'10     26362   5.2724
'11     26231   5.2462
'12     26334   5.2668
'13     26297   5.2594
'14     26337   5.2674
'15     26655   5.331
'16     26121   5.2242
'17     26498   5.2996
'18     26243   5.2486
'19     26373   5.2746
'20     13122   2.6244
' This algorithm will attempt to correct the unfairness of
' the random number generation using the hypothesis that the endpoint values
' are less likely.  The solution will be to add an extra 2 numbers to the
' number range (ex> 1..20 becomes 1..23) These numbers will be the "new"
' endpoints.  When an endpoint roll occurs, it is ignored and re-rolled.
'' The resulting number range would be 2..21
' 1 is then subtracted from the result, yielding the proper range of 1..20
'******************************************************************
FUNCTION RollDice(numDice AS INTEGER, numSides AS INTEGER) AS INTEGER
CONST RANGE_PADDING AS INTEGER = 2
	DIM ROLL_ADJUSTMENT AS INTEGER
	DIM modifiedRange AS INTEGER
	DIM rollTotal AS INTEGER   ' Sum of the dice rolls
	DIM rollValue AS INTEGER   ' Value of one die roll
	DIM lcv AS INTEGER         ' Loop control variable
	RANDOMIZE ,3
	' Explicitly initialize variables (unnecessary, but good style)
	ROLL_ADJUSTMENT = Round(RANGE_PADDING ^ 0.5)
	rollTotal = 0
	rollValue = 0
	modifiedRange = numSides + RANGE_PADDING
	' For every roll...
	FOR lcv = 1 TO numDice
		' Get a random number from 1..numSides
		rollValue = Round((modifiedRange - 1) * RND) + 1
		DO WHILE (rollValue = 1 OR rollValue = modifiedRange)
			rollValue = Round((modifiedRange - 1) * RND) + 1
		LOOP
		' Adjust the rollValue to remove the padding
		rollValue = rollValue - ROLL_ADJUSTMENT
		' Add this number to the current total
		rollTotal = rollTotal + rollValue
	NEXT lcv
	' Set return value and exit
	RollDice = rollTotal
END FUNCTION
'******************************************************************
'Knuth shuffle
' version 22-10-2016
' function to randomize the members of an array and return the array
' compile with: fbc -s console
' for boundry checks on array's compile with: fbc -s console -exx
' sort from lower bound to the highter bound
' array's can have subscript range from -2147483648 to +2147483647
'******************************************************************
SUB knuth_down  overload( a() AS INTEGER)

	DIM AS INTEGER lb = LBOUND(a)
	DIM AS INTEGER n = UBOUND(a) ' - lb +1
	DIM AS INTEGER i, j
'	print "lb=";lb
	RANDOMIZE TIMER
	FOR i = 0 TO UBOUND(a)
'	print "a(";i;")=";a(i),
	NEXT i
'	print 
'	print "n=";n,"n-1=";n-1	
	FOR i = n -1 TO 0 STEP -1
		j =FIX(RND * (i +1))       ' 0 <= j <= i
'		print "j=";j,
		SWAP a(lb + i), a(lb + j)
'		print "a(";i;")=";a(i),
	NEXT

END SUB
'******************************************************************
'Knuth shuffle
' compile with: fbc -s console
' for boundry checks on array's compile with: fbc -s console -exx
' sort from upper bound to the lower bound
' array's can have subscript range from -2147483648 to +2147483647
'******************************************************************
SUB knuth_up OverLoad( a() AS INTEGER)

	DIM AS INTEGER lb = LBOUND(a)
	DIM AS INTEGER n = UBOUND(a) - lb +1
	DIM AS INTEGER i, j

	RANDOMIZE TIMER
	PRINT "n=";n,"n-2=";n-2
	FOR i = 0 TO n -2
		j = FIX(RND * (n - i) + i)   '  0 <= j < n-i, + i ==> i <= j < n
		PRINT "j=";j,
		SWAP a(lb + i), a(lb + j)
	NEXT

END SUB

'******************************************************************
'Knuth shuffle
' version 22-10-2016
' compile with: fbc -s console
' for boundry checks on array's compile with: fbc -s console -exx
' sort from lower bound to the highter bound
' array's can have subscript range from -2147483648 to +2147483647
'******************************************************************
SUB knuth_down OverLoad( a() AS STRING)

	DIM AS LONG lb = LBOUND(a)
	DIM AS ULong n = UBOUND(a) - lb +1
	DIM AS ULong i, j

	RANDOMIZE TIMER

	FOR i = n -1 TO 1 STEP -1
		j =FIX(RND * (i +1))       ' 0 <= j <= i
		SWAP a(lb + i), a(lb + j)
	NEXT

END SUB
'******************************************************************
'Knuth shuffle
' compile with: fbc -s console
' for boundry checks on array's compile with: fbc -s console -exx
' sort from upper bound to the lower bound
' array's can have subscript range from -2147483648 to +2147483647
'******************************************************************
SUB knuth_up  OverLoad(  a() AS STRING)

	DIM AS LONG lb = LBOUND(a)
	DIM AS ULong n = UBOUND(a) - lb +1
	DIM AS ulong i, j

	RANDOMIZE TIMER

	FOR i = 0 TO n -2
		j = FIX(RND * (n - i) + i)   '  0 <= j < n-i, + i ==> i <= j < n
		SWAP a(lb + i), a(lb + j)
	NEXT

END SUB

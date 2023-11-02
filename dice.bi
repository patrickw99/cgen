 #ifndef __dice__
 #define __dice__
 
declare Function round( value As double) As Double
declare function floor (value as double) as integer
declare function ceil (value as double) as integer
declare Function RollDice(numDice As Integer, numSides As Integer) As Integer

declare Function rnd_range (first As Double, last As Double) As Double
declare function pick overload ( list() as string) as string
declare Function pick overload (list() as integer) as integer

declare function CoinToss() as Integer
declare function percentChance (chance as integer ) as Integer

Declare Sub knuth_down  overload( a() As integer)
Declare Sub knuth_up OverLoad( a() As integer)

Declare Sub knuth_down OverLoad( a() As String)
Declare Sub knuth_up  OverLoad( a() As String)




#endif

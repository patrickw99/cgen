#Include "cgen.bi"
#Include "dice.bi"
#Include "tables.bi"


'public function


Sub Cbaseclass.rollchar()
	charclear
	ChooseSex
	abilities
	chooseEye
	chooseHair
	chooseSkin
	cClass = chooseclass()
	Select Case cClass
		Case Fighter, Cleric, Mage, Theif
			HumanHeight
		Case Elf
			elfHeight
		Case Dwarf
			dwarfheight
		Case Halfling
			halflingheight
	End Select
	feetinch
	Print "Class: ";cclass
	clevel = rollDice(1, 36)
	clalignment

End Sub
' ****************************Abilities************************
Property cbaseclass.Strength () As Integer
Return cAbility(1)
End Property
Property cbaseclass.Intellegence () As Integer
Return cAbility(2)
End Property
Property cbaseclass.Wisdom () As Integer
Return cAbility(3)
End Property
Property cbaseclass.Dexterity () As Integer
Return cAbility(4)
End Property
Property cbaseclass.Constitution () As Integer
Return cAbility(5)
End Property
Property cbaseclass.Charisma () As Integer
Return cAbility(6)
End Property

' *************************Ability Adjustments********************
Property cbaseclass.StrAdjustment () As Integer
Return cadjust(1)
End Property
Property cbaseclass.IntAdjustment () As Integer
Return cadjust(2)
End Property
Property cbaseclass.WisAdjustment () As Integer
Return cadjust(3)
End Property
Property cbaseclass.DexAdjustment () As Integer
Return cadjust(4)
End Property
Property cbaseclass.ConAdjustment () As Integer
Return cadjust(5)
End Property
Property cbaseclass.CharAdjustment () As Integer
Return cadjust(6)
End Property
' ******************character attributes. '
Property  cbaseclass.AC() As Integer
Return cAC
End Property
Property cbaseclass. HitPoint() As Integer
Return cHitPoint
End Property
Property  cbaseclass.Damage() As Integer
Return cDamage
End Property
Property cbaseclass.MoveNor() As Integer
Return cMoveNor
End Property
Property  cbaseclass. MoveEnc() As Integer
Return cMoveEnc
End Property
Property  cbaseclass.MoveRun() As Integer
Return cMoveRun
End Property
Property  cbaseclass.MoveOther() As Integer
Return cMoveOther
End Property
Property  cbaseclass.Race As integer 'done
Return cRace
End Property
Property  cbaseclass.Sex  As String ' done
If csex =1 Then
	Return "Male"
Else
	Return "Female"
EndIf
' return cSex
End Property
Property  cbaseclass.Height  As Integer
Return cHeight
End Property

Property cbaseclass.feet() As Integer 'done
Return chHight.foot
End Property
Property cbaseclass.inch() As Integer 'done
Return chHight.inch
End Property
Property  cbaseclass.Weight  As Integer 'done
Return cWeight
End Property
Property  cbaseclass.Age  As Integer ' done
Return cAge
End Property
Property  cbaseclass.Hair As String 'done
Return cHair
End Property
Property cbaseclass.skin() As String
Return cSkin
End Property
Property  cbaseclass.Eyes   As String
Return cEyes
End Property
Property  cbaseclass.FullName  As String
Return cFullName
End Property
Property  cbaseclass.alignment () As Integer
Return cAlignment
End Property
Property  cbaseclass.CharacterClass As Integer
Return cClass
End Property
Property  cbaseclass.CharacterClass(aclass As Integer)
cClass=aclass
End Property

Property  cbaseclass.Level As Integer

Return cLevel
End Property
Property cbaseclass.level(lvl As Integer)
clevel = lvl
End Property
Property  cbaseclass.Tohitac (armorclass As Integer) As Integer
Return    cattack ((armorclass) + 20 )

End Property
' *******************************Theif Skills*****************'
Property cbaseclass.OpenLocks() As Integer
Return ctskill (1)
End Property
Property cbaseclass.FindTraps() As Integer
Return ctskill (2)
End Property
Property cbaseclass.RemoveTraps() As Integer
Return ctskill (3)
End Property
Property cbaseclass.ClimbWalls() As Integer
Return ctskill (4)
End Property
Property cbaseclass.MoveSilently() As Integer
Return ctskill (5)
End Property
Property cbaseclass.HideinShadows() As Integer
Return ctskill (6)
End Property
Property cbaseclass.PickPockets() As Integer
Return ctskill (7)
End Property
Property cbaseclass.HearNoise() As Integer
Return ctskill (8)
End Property
' *******************saving throws ***********************'

Property cbaseclass.DeathRayPoison () As Integer
Return csaves(0)
End Property
Property cbaseclass.MagicWands () As Integer
Return csaves(1)
End Property
Property cbaseclass.ParalysisStone () As Integer
Return csaves(2)
End Property
Property cbaseclass.BreathAttack () As Integer
Return csaves(3)
End Property
Property cbaseclass.RodStaffSpell () As Integer
Return csaves(4)
End Property

Property cbaseclass.DeathRayPoison (value As Integer)
csaves(0) = value
End Property
Property cbaseclass.MagicWands (value As Integer)
csaves(1) = value
End Property
Property cbaseclass.ParalysisStone (value As Integer)
csaves(2) = value
End Property
Property cbaseclass.BreathAttack (value As Integer)
csaves(3) = value
End Property
Property cbaseclass.RodStaffSpell (value As Integer)
csaves(4) = value
End Property
' ****************cleric/druid turns****************************'
Property cbaseclass.Skeleton () As Integer
Return cturns(0)
End Property
Property cbaseclass.Zombie () As Integer
Return cturns(1)
End Property
Property cbaseclass.Ghoul () As Integer
Return cturns(2)
End Property
Property cbaseclass.Wight () As Integer
Return cturns(3)
End Property
Property cbaseclass.Wraith () As Integer
Return cturns(4)
End Property
Property cbaseclass.Mummy () As Integer
Return cturns(5)
End Property
Property cbaseclass.Spectre () As Integer
Return cturns(6)
End Property
Property cbaseclass.Vampire () As Integer
Return cturns(7)
End Property
Property cbaseclass.Phantom () As Integer
Return cturns(8)
End Property
Property cbaseclass.Haunt () As Integer
Return cturns(9)
End Property
Property cbaseclass.Spirit () As Integer
Return cturns(10)
End Property
Property cbaseclass.Nightshade () As Integer
Return cturns(11)
End Property
Property cbaseclass.Lich () As Integer
Return cturns(12)
End Property
Property cbaseclass.Special () As Integer
Return cturns(13)
End Property

Property cbaseclass.cspell(lvl As Integer) As Integer' lvl is between 0 and 7'
If lvl >= LBound(ccspell) And lvl <=  UBound(ccspell) Then
	Return ccspell(lvl)
End If
End Property

Property cbaseclass.espell(lvl As Integer) As Integer ' lvl is between 0 and 7'
If lvl >= LBound(cespell) And lvl <=  UBound(cespell) Then
	Return cespell(lvl)
End If
End Property
Property cbaseclass.mspell(lvl As Integer) As Integer ' lvl is between 0 and 7'
If lvl >= LBound(cmspell) And lvl <=  UBound(cmspell) Then
	Return cmspell(lvl)
End If
End Property

'Private functions and sub's
Sub cbaseclass.charclear() ' done
	Dim x As Integer
	Dim y As Integer
	For x = 0 To 5
		cAbility(x) = 0
		cadjust(x)  = 0
	Next x

	cprebonus = 0
	cRace  = 0
	cSex = 0
	cHeight   = 0
	cWeight = 0
	cAge = 0
	cHair  = ""
	cEyes  = ""
	cFullName = ""
	cAlignment = 0

	For x = 0 To 40
		cattack (x) = 0
	Next x

	cXPAdj = 0
	cXPTotal = 0
	cPrimeReq = 0
	cAC = 0
	cHitPoint = 0
	cDamage = 0

	cMoveNor = 0
	cMoveEnc = 0
	cMoveRun = 0
	cMoveOther = 0
	For x = 0 To 4
		cMoneyhome (x) = 0
		cMoneyelsewhere (x) = 0
		cMoneycarried (x) = 0

	Next x
	'for x = 0 to 8
	'for y = 0 to 8
	'	cspellbook(x,y) = ""
	'next y
	'next x
	cClass =0
	cLevel =0
	For x =0 To 4
		csaves (x)=0
	Next x
	For x = 0 To 13
		cturns (x) = 0
	Next x
	For x = 0 To 8
		ccspell (x)=0
	Next x
	'for x = 0 to 10
	'	cmespell(x) = 0
	'next x
	For x = 0 To 8
		ctskill (x)  = 0
	Next x
End Sub

Sub  cbaseclass.ChooseSex() ' done
	CSex = RollDice(1,2)

End Sub
Sub cbaseclass.heightWeight(array() As Integer)
	Dim As Integer dl, ul, count 
	Dim As Integer hmod, wmod
 	dl =LBound(array)
	ul = ubound (array)
	
	For count = dl To ul
		
		If  array(count,0) = crace Then 
				Hmod = RollDice(array(count,2),array(count,3))
				Wmod = RollDice(array(count,6),array(count,7))
				 cheight = array(count,1) + Hmod
				If Csex = male Then
					cweight = array(count,4) + (Hmod * Wmod)
				Else
					cweight = array(count,5) + (Hmod * Wmod)
				End If
		End if
		
	Next 
	
	
End Sub

Sub cbaseclass.dwarfheight () 'done
	cHeight = rnd_range (44 , 52)
	Select Case cHeight
		Case 44, 45
			If CSex = Male Then
				cWeight = rnd_range (1300,1399)
			Else
				cWeight = rnd_range (1250, 1349)
			End If
		Case 44, 45
			If CSex = Male Then
				cWeight = rnd_range (1400,1499)
			Else
				cWeight = rnd_range (1350, 1449)
			End If
		Case 44, 45
			If CSex = Male Then
				cWeight = rnd_range (1500,1549)
			Else
				cWeight = rnd_range (1450, 1549)
			End If
		Case 44, 45
			If CSex = Male Then
				cWeight = rnd_range (1550,1649)
			Else
				cWeight = rnd_range (1500, 1599)
			End If
		Case 44, 45
			If CSex = Male Then
				cWeight = rnd_range (1650,1750)
			Else
				cWeight = rnd_range (1600, 1700)
			End If
	End Select
End Sub
Sub cbaseclass.HumanHeight () ' done
	cHeight = rnd_range(58, 76)
	Select Case cHeight
		Case 58, 59
			If CSex = Male Then
				cWeight = rnd_range (1100,1199)
			Else
				cWeight = rnd_range (1050, 1099)
			End If
		Case 60, 61
			If CSex = Male Then
				cWeight = rnd_range (1200,1299)
			Else
				cWeight = rnd_range (1100 , 1199)
			End If
		Case 62, 63
			If CSex = Male Then
				cWeight = rnd_range (1300,1399)
			Else
				cWeight = rnd_range (1200,1249)
			End If
		Case 64, 65
			If CSex = Male Then
				cWeight = rnd_range (1400,1499)
			Else
				cWeight = rnd_range (1250,1299)
			End If
		Case 66, 67
			If CSex = Male Then
				cWeight = rnd_range (1500,1549)
			Else
				cWeight = rnd_range (1300,1399)
			End If
		Case 68,69
			If CSex = Male Then
				cWeight = rnd_range (1550, 1649)
			Else
				cWeight = rnd_range ( 1400,1499)
			End If
		Case 70,71
			If CSex = Male Then
				cWeight = rnd_range (1650,1749)
			Else
				cWeight = rnd_range (1500,1549)
			End If
		Case 72, 73
			If CSex = Male Then
				cWeight = rnd_range (1750,1849)
			Else
				cWeight = rnd_range (1550,1649)
			End If
		Case 74,75
			If CSex = Male Then
				cWeight = rnd_range (1850,1999)
			Else
				cWeight = rnd_range (1650,1749)
			End If
		Case 76
			If CSex = Male Then
				cWeight = rnd_range ( 2000,2100)
			Else
				cWeight = rnd_range (1750,1850)
			End If
	End Select
End Sub
Sub cbaseclass.ElfHeight ()' done
	cHeight = rnd_range(56, 68)
	Select Case cheight
		Case 56 , 57
			If csex = Male Then
				cWeight = rnd_range (900,999)
			Else
				cWeight = rnd_range (750, 799)
			End If
		Case 58, 59
			If csex = Male Then
				cWeight = rnd_range (1000,1099)
			Else
				cWeight = rnd_range (800 , 899)
			End If
		Case 60, 61
			If csex = Male Then
				cWeight = rnd_range (1100,1199)
			Else
				cWeight = rnd_range (900,999)
			End If
		Case 62, 63
			If csex = Male Then
				cWeight = rnd_range (1200,1299)
			Else
				cWeight = rnd_range (1000,1099)
			End If
		Case 64, 65
			If csex = Male Then
				cWeight = rnd_range (1300,1399)
			Else
				cWeight = rnd_range (1100,1199)
			End If
		Case  66,67
			If csex = Male Then
				cWeight = rnd_range (1400, 1499)
			Else
				cWeight = rnd_range (1200 ,1299)
			End If
		Case  68
			If csex = Male Then
				cWeight = rnd_range (1500, 1600)
			Else
				cWeight = rnd_range (1300 ,1400)
			End If
	End Select
End Sub
Sub cbaseclass.halflingHeight() ' done
	cHeight = rnd_range(34, 38)
	Select Case cHeight
		Case 34, 35
			cWeight = rnd_range (580,599)
		Case 36 , 37
			cWeight = rnd_range (600,619)
		Case  38
			cWeight = rnd_range (620,630)
	End Select

End Sub

Sub cbaseclass.feetinch() 'done
	chHight.foot = floor(cHeight / 12)
	chHight.inch = cHeight - (chHight.foot *12)
End Sub

Sub cbaseclass.CharMovement(cMoveEncb As Integer)
	Select Case cMoveEncb
		Case 0 To 400
			cMoveNor = 120
			cMoveEnc = 40
			cMoveRun = 120
		Case 401 To 800
			cMoveNor = 90
			cMoveEnc = 30
			cMoveRun = 90
		Case 801 To 1200
			cMoveNor = 60
			cMoveEnc = 20
			cMoveRun = 60
		Case 1201 To 1600
			cMoveNor = 30
			cMoveEnc = 10
			cMoveRun = 30
		Case 1601 To 2400
			cMoveNor = 15
			cMoveEnc = 5
			cMoveRun = 15
		Case Is >= 2401
			cMoveNor = 0
			cMoveEnc = 0
			cMoveRun = 0
	End Select

End Sub
Sub cbaseclass.chooseEye () 'done
	Dim  eye  As Integer = rollDice(1, 100)
	Select Case eye
		Case 1 To 16
			cEyes = "Amber"
		Case 17 To 36
			cEyes = "Brown"
		Case 37 To 52
			cEyes = "Hazel"
		Case 53 To 68
			cEyes = "Green"
		Case 69 To 84
			cEyes = "Blue"
		Case 85 To 100
			cEyes = "Gray"
	End Select
End Sub
Sub cbaseclass.chooseHair () 'done
	Dim  hairtype  As Integer = rollDice(1, 100)
	Select Case hairtype
		Case 1 To 12
			cHair = "Black"
		Case 13 To 20
			cHair = "Gray"
		Case 21 To 28
			cHair = "Platinum"
		Case 29 To 36
			cHair =  "White"
		Case 37 To 44
			cHair = "Dark Blonde"
		Case 45 To 52
			cHair = "Blonde"
		Case 53 To 60
			cHair = "Bleach Blonde"
		Case 61 To 68
			cHair =  "Dark Redhead"
		Case 69 To 76
			cHair =  "Redhead"
		Case 77 To 84
			cHair = "Light Redhead"
		Case 85 To 92
			cHair =  "Brunette"
		Case 93 To 100
			cHair = "Auburn"
	End Select
End Sub
Sub cbaseclass.chooseSkin () ' done
	Dim  skintype  As Integer = rollDice(1, 100)
	Select Case skintype
		Case 1 To 12
			cSkin= "Pale"
		Case 13 To 24
			cSkin= "Fair"
		Case 25 To 37
			cSkin= "Light"
		Case 38 To 50
			cSkin=  "Light Tan"
		Case 51 To 63
			cSkin= "Tan"
		Case 64 To 76
			cSkin= "Dark Tan"
		Case 77 To 88
			cSkin= "Brown"
		Case 89 To 100
			cSkin=  "Dark Brown"
	End Select
End Sub

Function cbaseclass.abilitiesadj (ability As Integer ) As Integer 'done

	Select Case ability
		Case 3
			abilitiesadj = -3
		Case 4TO 5
			abilitiesadj = -2
		Case 6 To 8
			abilitiesadj = -1
		Case 9 To 1
			abilitiesadj = 0
		Case 13 To 15
			abilitiesadj = 1
		Case 16 To 17
			abilitiesadj = 2
		Case 18
			abilitiesadj = 3
	End Select
End Function
Sub cbaseclass.abilities() 'done
	Dim  i As Integer
	For i = LBound(cAbility) To UBound (cAbility)
		cAbility(i) = RollDice(3,6)
	Next
	For i = LBound(cadjust) To UBound (cadjust)
		cadjust(i) = abilitiesadj(cability(i))
	Next
End Sub
Function cbaseclass.chooseclass() As Integer 'done
	Dim ClassChoice(0 To 8) As Integer
	Dim count As Integer =1
	Dim rclass As Integer
	Dim ccount As Integer  = -1

	Do
		If cAbility(1) >= 9 Then
			classChoice(count) = Fighter
			count += 1
			ccount=1
		EndIf

		If cAbility(2) >= 9 Then
			classChoice(count) = Mage
			count += 1
			ccount=1
		EndIf

		If cAbility(3) >= 9 Then
			classChoice(count) = cleric
			count += 1
			ccount=1
		EndIf

		If cAbility(4) >= 9 Then
			classChoice(count) = theif
			count += 1
			ccount=1
		EndIf

		If cAbility(1) >= 9 And  cAbility(2) >= 9 Then
			classChoice(count) = Elf
			count += 1
			ccount=1
		EndIf

		If cAbility(1) >= 9 And  cAbility(5) >= 9 Then
			classChoice(count) =dwarf
			count += 1
			ccount=1
		EndIf

		If cAbility(1) >= 9 And  cAbility(4) >= 9 And cAbility(5) >= 9 Then
			classChoice(count) = halfling
			count += 1
			ccount=1
		EndIf
		If ccount = -1 Then
			abilities()
		EndIf
	Loop While ccount = -1
	Do
		rclass = pick(ClassChoice())
		Select Case rclass
			Case dwarf
				crace=dwarf
			Case elf
				crace= elf
			Case halfling
				crace=halfling
			Case Else 
				crace=human
		End Select
	Loop While rclass = 0
	Return rclass


End Function
Sub cbaseclass.savers(array() As Integer) 'done
	Dim x As Integer
	Dim y As Integer
	For x = LBound(array) To UBound (array)
		If clevel >= array(x, 0) And clevel <= array(x, 1) Then
			For y = LBound (csaves) To UBound(csaves)
				csaves(y) = array (x,y+2)
			Next
		End If
	Next
End Sub
Sub cbaseclass.attacks(array() As Integer) 'done
	Dim x As Integer
	Dim y As Integer
	For x = LBound (array) To UBound (array)
		If clevel >= array(x, 0) And clevel <= array(x, 1) Then
			For y = LBound (cattack) To UBound (cattack)
				'print "array";x;",";y;"  ";array(x,y)
				cattack(y) = array (x,y+2)
			Next
		End If
	Next
End Sub
Sub cbaseclass.theifskill(array() As Integer) 'done
	Dim x As Integer
	Dim y As Integer
	For y = LBound (array,2) To UBound (array, 2)
		ctskill(y) = array (clevel,y)
	Next
End Sub
Sub cbaseclass.clericturn (array() As Integer)' done
	Dim x As Integer
	Dim y As Integer
	Dim lower As Integer = LBound (array,2)
	Dim upper As Integer = UBound (array, 2)
	Select Case cClass
		Case Cleric
			For y = lower To upper
				cturns(y) = array (clevel,y)
			Next
		Case Fighter
			If cLevel >= 9 And Wisdom  >= 13 Then
				For y = lower To upper
					cturns(y) = array (floor(cLevel/5),y)
				Next
			End If
	End Select
End Sub

' spells: this populates the spell array.  based on class it will load
'the array with number of spells that can be cast in one day.
/'SUB cbaseclass.spells(array() AS INTEGER) 'done
DIM x AS INTEGER
DIM y AS INTEGER
''dim lower as integer = lbound (array,2)
''dim upper as integer = ubound (array, 2)
DIM mespellchoice(13) AS INTEGER ={0,1,2,3,4,5,6,7,8,9,10,11,12}
DIM cspellchoice(9) AS INTEGER = {0,1,2,3,4,5,6,7,8}

SELECT CASE  cClass
CASE Cleric
'print "lower=";lower,"upper=";upper
FOR y = LBOUND (array,2) TO UBOUND (array, 2)
ccspell(y) = array (clevel,y)
PRINT "ccspell(";y;")="; ccspell(y),"array(";clevel;",";y;")= ";array(clevel,y)
NEXT
CASE Mage
FOR y = LBOUND (array,2) TO UBOUND (array, 2)
cmspell(y) = array (clevel,y)
PRINT "cmspell(";y;")="; cmspell(y),"array(";clevel;",";y;")= ";array(clevel,y)
NEXT
FOR x = LBOUND (array()) TO UBOUND(cmspell())
IF ccspell(x) <> 0 THEN
knuth_down (cspellchoice())
spellnum = rnd_range(LBOUND (cspellchoice()), UBOUND (cspellchoice())
FOR y = 0 TO spellnum

cmspellbook(x,y)= mepellchoice(y)
FOR z = 1 TO range
ccdailyspells(z) =

NEXT
NEXT
NEXT





CASE Elf
IF  clevel <= 9 THEN
FOR y = LBOUND (array,2) TO UBOUND (array, 2)
cespell(y) = array (clevel,y)
PRINT "cespell(";y;")="; cespell(y),"array(";clevel;",";y;")= ";array(clevel,y)
NEXT
ELSE
FOR y = LBOUND (array,2) TO UBOUND (array, 2)
cespell(y) = array (9,y)
PRINT "cespell(";y;")="; cespell(y),"array(";9;",";y;")= ";array(9,y)
NEXT
END IF
CASE Fighter
IF clevel >= 9 AND Wisdom  >= 13 THEN
IF cAlignment <> Nutral THEN
FOR y = LBOUND (array,2) TO UBOUND (array, 2)
ccspell(y) = array (floor(clevel/3),y)
PRINT "ccspell(";y;")="; ccspell(y),"array(";clevel;",";y;")= ";array(clevel,y)
NEXT
ENDIF
END IF
END SELECT
'for x = lower to upper
'print cspell (x)
'next
END SUB '/
'function cbaseclass.clspell(spelllevel as integer) as integer
'	return cspell(spelllevel)
'end function
'function cbaseclass.mespell(spelllevel as integer) as integer
'	'print "spelllevel=";spelllevel
'	return cspell( spelllevel)
'end function

'function cbaseclass.getspell(lvl as integer, spnum as integer) as string
'print "spnum=";spnum
'	select case cClass
'case Cleric
'	return cspellbook(lvl,spnum)
'case Mage
'	return cspellbook(lvl,spnum)
'case elf
'	print "lvl=";lvl, "spnum=";spnum
'	return cspellbook(lvl,spnum)
'end select


'end function

/'FUNCTION  cbaseclass.cSpellbook(value AS INTEGER) AS INTEGER 'done
SELECT CASE cClass
CASE Cleric
RETURN cCspell(value)
CASE Mage
RETURN cMspell(value)
CASE elf
RETURN cEspell(value)
END SELECT
END FUNCTION '/

/'SUB cbaseclass.spellbook (x AS INTEGER, y AS INTEGER,  value AS STRING)

SELECT CASE cClass
CASE Cleric
cCspellbook(x,y) = value

CASE Mage

CASE Elf

END SELECT

END SUB '/
/'FUNCTION cbaseclass.spellbook OVERLOAD ( x AS INTEGER, y AS INTEGER) AS STRING 'done

SELECT CASE cClass
CASE Cleric

RETURN ccspellbook (x,y)
CASE Mage

RETURN cmspellbook(x,y)
CASE Elf

RETURN cespellbook(x,y)
END SELECT

END FUNCTION '/

Function cbaseclass.moneyhome (cointype As Integer)As Integer
	Select Case cointype
		Case PLATINUM
			Return cMoneyhome(PLATINUM)
		Case GOLD
			Return cMoneyhome(GOLD)
		Case ELECTRUM
			Return cMoneyhome(ELECTRUM)
		Case SILVER
			Return cMoneyhome(SILVER)
		Case COPPER
			Return cMoneyhome(COPPER)
	End Select

End Function
Function cbaseclass.moneycarried(cointype As Integer)As Integer
	Select Case cointype
		Case PLATINUM
			Return cmoneycarried(PLATINUM)
		Case GOLD
			Return cmoneycarried(GOLD)
		Case ELECTRUM
			Return cmoneycarried(ELECTRUM)
		Case SILVER
			Return cmoneycarried(SILVER)
		Case COPPER
			Return cmoneycarried(COPPER)
	End Select

End Function
Function cbaseclass.moneyelsewhere(cointype As Integer) As Integer
	Select Case cointype
		Case PLATINUM
			Return cMoneyelsewhere(PLATINUM)
		Case GOLD
			Return cMoneyelsewhere(GOLD)
		Case ELECTRUM
			Return cMoneyelsewhere(ELECTRUM)
		Case SILVER
			Return cMoneyelsewhere(SILVER)
		Case COPPER
			Return cMoneyelsewhere(COPPER)
	End Select

End Function
Sub cbaseclass.moneyadd( place As Integer, cointype As Integer, amount As Integer)

	Select Case cointype
		Case PLATINUM
			Select Case place
				Case home
					cMoneyhome(PLATINUM) =+ amount
				Case Carried
					cMoneycarried(PLATINUM) =+ amount
				Case elseware
					cMoneyelsewhere(PLATINUM)=+ amount
			End Select
		Case GOLD
			Select Case place

				Case home
					cMoneyhome(GOLD) =+ amount
				Case Carried
					cMoneycarried(GOLD) =+ amount
				Case elseware
					cMoneyelsewhere(GOLD)=+ amount

			End Select
		Case ELECTRUM
			Select Case place

				Case home
					cMoneyhome(ELECTRUM) =+ amount
				Case Carried
					cMoneycarried(ELECTRUM) =+ amount
				Case elseware
					cMoneyelsewhere(ELECTRUM)=+ amount

			End Select
		Case SILVER
			Select Case place
				Case home
					cMoneyhome(SILVER) =+ amount
				Case Carried
					cMoneycarried(SILVER) =+ amount
				Case elseware
					cMoneyelsewhere(SILVER)=+ amount

			End Select
		Case COPPER
			Select Case place
				Case home
					cMoneyhome(COPPER) =+ amount
				Case Carried
					cMoneycarried(COPPER) =+ amount
				Case elseware
					cMoneyelsewhere(COPPER)=+ amount

			End Select
	End Select


End Sub
Sub cbaseclass.moneysub( place As Integer, cointype As Integer, amount As Integer)
	Select Case cointype
		Case PLATINUM
			Select Case place
				Case home
					cMoneyhome(PLATINUM) =- amount
				Case Carried
					cMoneycarried(PLATINUM) =- amount
				Case elseware
					cMoneyelsewhere(PLATINUM)=- amount
			End Select
		Case GOLD
			Select Case place

				Case home
					cMoneyhome(GOLD) =- amount
				Case Carried
					cMoneycarried(GOLD) =- amount
				Case elseware
					cMoneyelsewhere(GOLD)=- amount

			End Select
		Case ELECTRUM
			Select Case place

				Case home
					cMoneyhome(ELECTRUM) =- amount
				Case Carried
					cMoneycarried(ELECTRUM) =- amount
				Case elseware
					cMoneyelsewhere(ELECTRUM)=- amount

			End Select
		Case SILVER
			Select Case place
				Case home
					cMoneyhome(SILVER) =- amount
				Case Carried
					cMoneycarried(SILVER) =- amount
				Case elseware
					cMoneyelsewhere(SILVER)=- amount

			End Select
		Case COPPER
			Select Case place
				Case home
					cMoneyhome(COPPER) =- amount
				Case Carried
					cMoneycarried(COPPER) =- amount
				Case elseware
					cMoneyelsewhere(COPPER)=+ amount

			End Select
	End Select
End Sub
Sub cbaseclass.clalignment () 'done
	cAlignment =  rnd_range (1, 3)
End Sub


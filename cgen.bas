#INCLUDE "cgen.bi"
#INCLUDE "dice.bi"
#INCLUDE "tables.bi"


'public function


SUB Cbaseclass.rollchar()
charclear
ChooseSex
abilities
chooseEye
chooseHair
chooseSkin
cClass = chooseclass()
SELECT CASE cClass
CASE Fighter, Cleric, Mage, Theif
HumanHeight
CASE Elf
elfHeight
CASE Dwarf
dwarfheight
CASE Halfling
halflingheight
END SELECT
feetinch
PRINT "Class: ";cclass
clevel = rollDice(1, 36)
clalignment

END SUB
' ****************************Abilities************************
PROPERTY cbaseclass.Strength () AS INTEGER
RETURN cAbility(1)
END PROPERTY
PROPERTY cbaseclass.Intellegence () AS INTEGER
RETURN cAbility(2)
END PROPERTY
PROPERTY cbaseclass.Wisdom () AS INTEGER
RETURN cAbility(3)
END PROPERTY
PROPERTY cbaseclass.Dexterity () AS INTEGER
RETURN cAbility(4)
END PROPERTY
PROPERTY cbaseclass.Constitution () AS INTEGER
RETURN cAbility(5)
END PROPERTY
PROPERTY cbaseclass.Charisma () AS INTEGER
RETURN cAbility(6)
END PROPERTY

' *************************Ability Adjustments********************
PROPERTY cbaseclass.StrAdjustment () AS INTEGER
RETURN cadjust(1)
END PROPERTY
PROPERTY cbaseclass.IntAdjustment () AS INTEGER
RETURN cadjust(2)
END PROPERTY
PROPERTY cbaseclass.WisAdjustment () AS INTEGER
RETURN cadjust(3)
END PROPERTY
PROPERTY cbaseclass.DexAdjustment () AS INTEGER
RETURN cadjust(4)
END PROPERTY
PROPERTY cbaseclass.ConAdjustment () AS INTEGER
RETURN cadjust(5)
END PROPERTY
PROPERTY cbaseclass.CharAdjustment () AS INTEGER
RETURN cadjust(6)
END PROPERTY
' ******************character attributes. '
PROPERTY  cbaseclass.AC() AS INTEGER
RETURN cAC
END PROPERTY
PROPERTY cbaseclass. HitPoint() AS INTEGER
RETURN cHitPoint
END PROPERTY
PROPERTY  cbaseclass.Damage() AS INTEGER
RETURN cDamage
END PROPERTY
PROPERTY cbaseclass.MoveNor() AS INTEGER
RETURN cMoveNor
END PROPERTY
PROPERTY  cbaseclass. MoveEnc() AS INTEGER
RETURN cMoveEnc
END PROPERTY
PROPERTY  cbaseclass.MoveRun() AS INTEGER
RETURN cMoveRun
END PROPERTY
PROPERTY  cbaseclass.MoveOther() AS INTEGER
RETURN cMoveOther
END PROPERTY
PROPERTY  cbaseclass.Race AS STRING 'done
RETURN cRace
END PROPERTY
PROPERTY  cbaseclass.Sex  AS STRING ' done
IF csex =1 THEN
RETURN "Male"
ELSE
RETURN "Female"
ENDIF
' return cSex
END PROPERTY
PROPERTY  cbaseclass.Height  AS INTEGER
RETURN cHeight
END PROPERTY

PROPERTY cbaseclass.feet() AS INTEGER 'done
RETURN chHight.foot
END PROPERTY
PROPERTY cbaseclass.inch() AS INTEGER 'done
RETURN chHight.inch
END PROPERTY
PROPERTY  cbaseclass.Weight  AS INTEGER 'done
RETURN cWeight
END PROPERTY
PROPERTY  cbaseclass.Age  AS INTEGER ' done
RETURN cAge
END PROPERTY
PROPERTY  cbaseclass.Hair AS STRING 'done
RETURN cHair
END PROPERTY
PROPERTY cbaseclass.skin() AS STRING
RETURN cSkin
END PROPERTY
PROPERTY  cbaseclass.Eyes   AS STRING
RETURN cEyes
END PROPERTY
PROPERTY  cbaseclass.FullName  AS STRING
RETURN cFullName
END PROPERTY
PROPERTY  cbaseclass.alignment () AS INTEGER
RETURN cAlignment
END PROPERTY
PROPERTY  cbaseclass.CharacterClass AS INTEGER
RETURN cClass
END PROPERTY
PROPERTY  cbaseclass.CharacterClass(aclass AS INTEGER)
cClass=aclass
END PROPERTY

PROPERTY  cbaseclass.Level AS INTEGER

RETURN cLevel
END PROPERTY
PROPERTY cbaseclass.level(lvl AS INTEGER)
clevel = lvl
END PROPERTY
PROPERTY  cbaseclass.Tohitac (armorclass AS INTEGER) AS INTEGER
RETURN    cattack ((armorclass) + 20 )

END PROPERTY
' *******************************Theif Skills*****************'
PROPERTY cbaseclass.OpenLocks() AS INTEGER
RETURN ctskill (1)
END PROPERTY
PROPERTY cbaseclass.FindTraps() AS INTEGER
RETURN ctskill (2)
END PROPERTY
PROPERTY cbaseclass.RemoveTraps() AS INTEGER
RETURN ctskill (3)
END PROPERTY
PROPERTY cbaseclass.ClimbWalls() AS INTEGER
RETURN ctskill (4)
END PROPERTY
PROPERTY cbaseclass.MoveSilently() AS INTEGER
RETURN ctskill (5)
END PROPERTY
PROPERTY cbaseclass.HideinShadows() AS INTEGER
RETURN ctskill (6)
END PROPERTY
PROPERTY cbaseclass.PickPockets() AS INTEGER
RETURN ctskill (7)
END PROPERTY
PROPERTY cbaseclass.HearNoise() AS INTEGER
RETURN ctskill (8)
END PROPERTY
' *******************saving throws ***********************'

PROPERTY cbaseclass.DeathRayPoison () AS INTEGER
RETURN csaves(0)
END PROPERTY
PROPERTY cbaseclass.MagicWands () AS INTEGER
RETURN csaves(1)
END PROPERTY
PROPERTY cbaseclass.ParalysisStone () AS INTEGER
RETURN csaves(2)
END PROPERTY
PROPERTY cbaseclass.BreathAttack () AS INTEGER
RETURN csaves(3)
END PROPERTY
PROPERTY cbaseclass.RodStaffSpell () AS INTEGER
RETURN csaves(4)
END PROPERTY

PROPERTY cbaseclass.DeathRayPoison (value AS INTEGER)
csaves(0) = value
END PROPERTY
PROPERTY cbaseclass.MagicWands (value AS INTEGER)
csaves(1) = value
END PROPERTY
PROPERTY cbaseclass.ParalysisStone (value AS INTEGER)
csaves(2) = value
END PROPERTY
PROPERTY cbaseclass.BreathAttack (value AS INTEGER)
csaves(3) = value
END PROPERTY
PROPERTY cbaseclass.RodStaffSpell (value AS INTEGER)
csaves(4) = value
END PROPERTY
' ****************cleric/druid turns****************************'
PROPERTY cbaseclass.Skeleton () AS INTEGER
RETURN cturns(0)
END PROPERTY
PROPERTY cbaseclass.Zombie () AS INTEGER
RETURN cturns(1)
END PROPERTY
PROPERTY cbaseclass.Ghoul () AS INTEGER
RETURN cturns(2)
END PROPERTY
PROPERTY cbaseclass.Wight () AS INTEGER
RETURN cturns(3)
END PROPERTY
PROPERTY cbaseclass.Wraith () AS INTEGER
RETURN cturns(4)
END PROPERTY
PROPERTY cbaseclass.Mummy () AS INTEGER
RETURN cturns(5)
END PROPERTY
PROPERTY cbaseclass.Spectre () AS INTEGER
RETURN cturns(6)
END PROPERTY
PROPERTY cbaseclass.Vampire () AS INTEGER
RETURN cturns(7)
END PROPERTY
PROPERTY cbaseclass.Phantom () AS INTEGER
RETURN cturns(8)
END PROPERTY
PROPERTY cbaseclass.Haunt () AS INTEGER
RETURN cturns(9)
END PROPERTY
PROPERTY cbaseclass.Spirit () AS INTEGER
RETURN cturns(10)
END PROPERTY
PROPERTY cbaseclass.Nightshade () AS INTEGER
RETURN cturns(11)
END PROPERTY
PROPERTY cbaseclass.Lich () AS INTEGER
RETURN cturns(12)
END PROPERTY
PROPERTY cbaseclass.Special () AS INTEGER
RETURN cturns(13)
END PROPERTY

PROPERTY cbaseclass.cspell(lvl AS INTEGER) AS INTEGER' lvl is between 0 and 7'
IF lvl >= LBOUND(ccspell) AND lvl <=  UBOUND(ccspell) THEN
RETURN ccspell(lvl)
END IF
END PROPERTY

PROPERTY cbaseclass.espell(lvl AS INTEGER) AS INTEGER ' lvl is between 0 and 7'
IF lvl >= LBOUND(cespell) AND lvl <=  UBOUND(cespell) THEN
RETURN cespell(lvl)
END IF
END PROPERTY
PROPERTY cbaseclass.mspell(lvl AS INTEGER) AS INTEGER ' lvl is between 0 and 7'
IF lvl >= LBOUND(cmspell) AND lvl <=  UBOUND(cmspell) THEN
RETURN cmspell(lvl)
END IF
END PROPERTY

'Private functions and sub's
SUB cbaseclass.charclear() ' done
DIM x AS INTEGER
DIM y AS INTEGER
FOR x = 0 TO 5
cAbility(x) = 0
cadjust(x)  = 0
NEXT x

cprebonus = 0
cRace  = ""
cSex = 0
cHeight   = 0
cWeight = 0
cAge = 0
cHair  = ""
cEyes  = ""
cFullName = ""
cAlignment = 0

FOR x = 0 TO 40
cattack (x) = 0
NEXT x

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
FOR x = 0 TO 4
cMoneyhome (x) = 0
cMoneyelsewhere (x) = 0
cMoneycarried (x) = 0

NEXT x
'for x = 0 to 8
'for y = 0 to 8
'	cspellbook(x,y) = ""
'next y
'next x
cClass =0
cLevel =0
FOR x =0 TO 4
csaves (x)=0
NEXT x
FOR x = 0 TO 13
cturns (x) = 0
NEXT x
FOR x = 0 TO 8
ccspell (x)=0
NEXT x
'for x = 0 to 10
'	cmespell(x) = 0
'next x
FOR x = 0 TO 8
ctskill (x)  = 0
NEXT x
END SUB

SUB  cbaseclass.ChooseSex() ' done
CSex = RollDice(1,2)

END SUB
SUB cbaseclass.dwarfheight () 'done
cHeight = rnd_range (44 , 52)
SELECT CASE cHeight
CASE 44, 45
IF CSex = Male THEN
cWeight = rnd_range (1300,1399)
ELSE
cWeight = rnd_range (1250, 1349)
END IF
CASE 44, 45
IF CSex = Male THEN
cWeight = rnd_range (1400,1499)
ELSE
cWeight = rnd_range (1350, 1449)
END IF
CASE 44, 45
IF CSex = Male THEN
cWeight = rnd_range (1500,1549)
ELSE
cWeight = rnd_range (1450, 1549)
END IF
CASE 44, 45
IF CSex = Male THEN
cWeight = rnd_range (1550,1649)
ELSE
cWeight = rnd_range (1500, 1599)
END IF
CASE 44, 45
IF CSex = Male THEN
cWeight = rnd_range (1650,1750)
ELSE
cWeight = rnd_range (1600, 1700)
END IF
END SELECT
END SUB
SUB cbaseclass.HumanHeight () ' done
cHeight = rnd_range(58, 76)
SELECT CASE cHeight
CASE 58, 59
IF CSex = Male THEN
cWeight = rnd_range (1100,1199)
ELSE
cWeight = rnd_range (1050, 1099)
END IF
CASE 60, 61
IF CSex = Male THEN
cWeight = rnd_range (1200,1299)
ELSE
cWeight = rnd_range (1100 , 1199)
END IF
CASE 62, 63
IF CSex = Male THEN
cWeight = rnd_range (1300,1399)
ELSE
cWeight = rnd_range (1200,1249)
END IF
CASE 64, 65
IF CSex = Male THEN
cWeight = rnd_range (1400,1499)
ELSE
cWeight = rnd_range (1250,1299)
END IF
CASE 66, 67
IF CSex = Male THEN
cWeight = rnd_range (1500,1549)
ELSE
cWeight = rnd_range (1300,1399)
END IF
CASE 68,69
IF CSex = Male THEN
cWeight = rnd_range (1550, 1649)
ELSE
cWeight = rnd_range ( 1400,1499)
END IF
CASE 70,71
IF CSex = Male THEN
cWeight = rnd_range (1650,1749)
ELSE
cWeight = rnd_range (1500,1549)
END IF
CASE 72, 73
IF CSex = Male THEN
cWeight = rnd_range (1750,1849)
ELSE
cWeight = rnd_range (1550,1649)
END IF
CASE 74,75
IF CSex = Male THEN
cWeight = rnd_range (1850,1999)
ELSE
cWeight = rnd_range (1650,1749)
END IF
CASE 76
IF CSex = Male THEN
cWeight = rnd_range ( 2000,2100)
ELSE
cWeight = rnd_range (1750,1850)
END IF
END SELECT
END SUB
SUB cbaseclass.ElfHeight ()' done
cHeight = rnd_range(56, 68)
SELECT CASE cheight
CASE 56 , 57
IF csex = Male THEN
cWeight = rnd_range (900,999)
ELSE
cWeight = rnd_range (750, 799)
END IF
CASE 58, 59
IF csex = Male THEN
cWeight = rnd_range (1000,1099)
ELSE
cWeight = rnd_range (800 , 899)
END IF
CASE 60, 61
IF csex = Male THEN
cWeight = rnd_range (1100,1199)
ELSE
cWeight = rnd_range (900,999)
END IF
CASE 62, 63
IF csex = Male THEN
cWeight = rnd_range (1200,1299)
ELSE
cWeight = rnd_range (1000,1099)
END IF
CASE 64, 65
IF csex = Male THEN
cWeight = rnd_range (1300,1399)
ELSE
cWeight = rnd_range (1100,1199)
END IF
CASE  66,67
IF csex = Male THEN
cWeight = rnd_range (1400, 1499)
ELSE
cWeight = rnd_range (1200 ,1299)
END IF
CASE  68
IF csex = Male THEN
cWeight = rnd_range (1500, 1600)
ELSE
cWeight = rnd_range (1300 ,1400)
END IF
END SELECT
END SUB
SUB cbaseclass.halflingHeight() ' done
cHeight = rnd_range(34, 38)
SELECT CASE cHeight
CASE 34, 35
cWeight = rnd_range (580,599)
CASE 36 , 37
cWeight = rnd_range (600,619)
CASE  38
cWeight = rnd_range (620,630)
END SELECT

END SUB

SUB cbaseclass.feetinch() 'done
chHight.foot = floor(cHeight / 12)
chHight.inch = cHeight - (chHight.foot *12)
END SUB

SUB cbaseclass.CharMovement(cMoveEncb AS INTEGER)
SELECT CASE cMoveEncb
CASE 0 TO 400
cMoveNor = 120
cMoveEnc = 40
cMoveRun = 120
CASE 401 TO 800
cMoveNor = 90
cMoveEnc = 30
cMoveRun = 90
CASE 801 TO 1200
cMoveNor = 60
cMoveEnc = 20
cMoveRun = 60
CASE 1201 TO 1600
cMoveNor = 30
cMoveEnc = 10
cMoveRun = 30
CASE 1601 TO 2400
cMoveNor = 15
cMoveEnc = 5
cMoveRun = 15
CASE IS >= 2401
cMoveNor = 0
cMoveEnc = 0
cMoveRun = 0
END SELECT

END SUB
SUB cbaseclass.chooseEye () 'done
DIM  eye  AS INTEGER = rollDice(1, 100)
SELECT CASE eye
CASE 1 TO 16
cEyes = "Amber"
CASE 17 TO 36
cEyes = "Brown"
CASE 37 TO 52
cEyes = "Hazel"
CASE 53 TO 68
cEyes = "Green"
CASE 69 TO 84
cEyes = "Blue"
CASE 85 TO 100
cEyes = "Gray"
END SELECT
END SUB
SUB cbaseclass.chooseHair () 'done
DIM  hairtype  AS INTEGER = rollDice(1, 100)
SELECT CASE hairtype
CASE 1 TO 12
cHair = "Black"
CASE 13 TO 20
cHair = "Gray"
CASE 21 TO 28
cHair = "Platinum"
CASE 29 TO 36
cHair =  "White"
CASE 37 TO 44
cHair = "Dark Blonde"
CASE 45 TO 52
cHair = "Blonde"
CASE 53 TO 60
cHair = "Bleach Blonde"
CASE 61 TO 68
cHair =  "Dark Redhead"
CASE 69 TO 76
cHair =  "Redhead"
CASE 77 TO 84
cHair = "Light Redhead"
CASE 85 TO 92
cHair =  "Brunette"
CASE 93 TO 100
cHair = "Auburn"
END SELECT
END SUB
SUB cbaseclass.chooseSkin () ' done
DIM  skintype  AS INTEGER = rollDice(1, 100)
SELECT CASE skintype
CASE 1 TO 12
cSkin= "Pale"
CASE 13 TO 24
cSkin= "Fair"
CASE 25 TO 37
cSkin= "Light"
CASE 38 TO 50
cSkin=  "Light Tan"
CASE 51 TO 63
cSkin= "Tan"
CASE 64 TO 76
cSkin= "Dark Tan"
CASE 77 TO 88
cSkin= "Brown"
CASE 89 TO 100
cSkin=  "Dark Brown"
END SELECT
END SUB

FUNCTION cbaseclass.abilitiesadj (ability AS INTEGER ) AS INTEGER 'done

SELECT CASE ability
CASE 3
abilitiesadj = -3
CASE 4TO 5
abilitiesadj = -2
CASE 6 TO 8
abilitiesadj = -1
CASE 9 TO 1
abilitiesadj = 0
CASE 13 TO 15
abilitiesadj = 1
CASE 16 TO 17
abilitiesadj = 2
CASE 18
abilitiesadj = 3
END SELECT
END FUNCTION
SUB cbaseclass.abilities() 'done
DIM  i AS INTEGER
FOR i = LBOUND(cAbility) TO UBOUND (cAbility)
cAbility(i) = RollDice(3,6)
NEXT
FOR i = LBOUND(cadjust) TO UBOUND (cadjust)
cadjust(i) = abilitiesadj(cability(i))
NEXT
END SUB
FUNCTION cbaseclass.chooseclass() AS INTEGER 'done
DIM ClassChoice(0 TO 8) AS INTEGER
DIM count AS INTEGER =1
DIM rclass AS INTEGER
DIM ccount AS INTEGER  = -1

DO
IF cAbility(1) >= 9 THEN
classChoice(count) = Fighter
count += 1
ccount=1
ENDIF

IF cAbility(2) >= 9 THEN
classChoice(count) = Mage
count += 1
ccount=1
ENDIF

IF cAbility(3) >= 9 THEN
classChoice(count) = cleric
count += 1
ccount=1
ENDIF

IF cAbility(4) >= 9 THEN
classChoice(count) = theif
count += 1
ccount=1
ENDIF

IF cAbility(1) >= 9 AND  cAbility(2) >= 9 THEN
classChoice(count) = Elf
count += 1
ccount=1
ENDIF

IF cAbility(1) >= 9 AND  cAbility(5) >= 9 THEN
classChoice(count) =dwarf
count += 1
ccount=1
ENDIF

IF cAbility(1) >= 9 AND  cAbility(4) >= 9 AND cAbility(5) >= 9 THEN
classChoice(count) = halfling
count += 1
ccount=1
ENDIF
IF ccount = -1 THEN
abilities()
ENDIF
LOOP WHILE ccount = -1
DO
rclass = pick(ClassChoice())
LOOP WHILE rclass = 0
RETURN rclass


END FUNCTION
SUB cbaseclass.savers(array() AS INTEGER) 'done
DIM x AS INTEGER
DIM y AS INTEGER
FOR x = LBOUND(array) TO UBOUND (array)
IF clevel >= array(x, 0) AND clevel <= array(x, 1) THEN
FOR y = LBOUND (csaves) TO UBOUND(csaves)
csaves(y) = array (x,y+2)
NEXT
END IF
NEXT
END SUB
SUB cbaseclass.attacks(array() AS INTEGER) 'done
DIM x AS INTEGER
DIM y AS INTEGER
FOR x = LBOUND (array) TO UBOUND (array)
IF clevel >= array(x, 0) AND clevel <= array(x, 1) THEN
FOR y = LBOUND (cattack) TO UBOUND (cattack)
'print "array";x;",";y;"  ";array(x,y)
cattack(y) = array (x,y+2)
NEXT
END IF
NEXT
END SUB
SUB cbaseclass.theifskill(array() AS INTEGER) 'done
DIM x AS INTEGER
DIM y AS INTEGER
FOR y = LBOUND (array,2) TO UBOUND (array, 2)
ctskill(y) = array (clevel,y)
NEXT
END SUB
SUB cbaseclass.clericturn (array() AS INTEGER)' done
DIM x AS INTEGER
DIM y AS INTEGER
DIM lower AS INTEGER = LBOUND (array,2)
DIM upper AS INTEGER = UBOUND (array, 2)
SELECT CASE cClass
CASE Cleric
FOR y = lower TO upper
cturns(y) = array (clevel,y)
NEXT
CASE Fighter
IF cLevel >= 9 AND Wisdom  >= 13 THEN
FOR y = lower TO upper
cturns(y) = array (floor(cLevel/5),y)
NEXT
END IF
END SELECT
END SUB

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

FUNCTION cbaseclass.moneyhome (cointype AS INTEGER)AS INTEGER
SELECT CASE cointype
CASE PLATINUM
RETURN cMoneyhome(PLATINUM)
CASE GOLD
RETURN cMoneyhome(GOLD)
CASE ELECTRUM
RETURN cMoneyhome(ELECTRUM)
CASE SILVER
RETURN cMoneyhome(SILVER)
CASE COPPER
RETURN cMoneyhome(COPPER)
END SELECT

END FUNCTION
FUNCTION cbaseclass.moneycarried(cointype AS INTEGER)AS INTEGER
SELECT CASE cointype
CASE PLATINUM
RETURN cmoneycarried(PLATINUM)
CASE GOLD
RETURN cmoneycarried(GOLD)
CASE ELECTRUM
RETURN cmoneycarried(ELECTRUM)
CASE SILVER
RETURN cmoneycarried(SILVER)
CASE COPPER
RETURN cmoneycarried(COPPER)
END SELECT

END FUNCTION
FUNCTION cbaseclass.moneyelsewhere(cointype AS INTEGER) AS INTEGER
SELECT CASE cointype
CASE PLATINUM
RETURN cMoneyelsewhere(PLATINUM)
CASE GOLD
RETURN cMoneyelsewhere(GOLD)
CASE ELECTRUM
RETURN cMoneyelsewhere(ELECTRUM)
CASE SILVER
RETURN cMoneyelsewhere(SILVER)
CASE COPPER
RETURN cMoneyelsewhere(COPPER)
END SELECT

END FUNCTION
SUB cbaseclass.moneyadd( place AS INTEGER, cointype AS INTEGER, amount AS INTEGER)

SELECT CASE cointype
CASE PLATINUM
SELECT CASE place
CASE home
cMoneyhome(PLATINUM) =+ amount
CASE Carried
cMoneycarried(PLATINUM) =+ amount
CASE elseware
cMoneyelsewhere(PLATINUM)=+ amount
END SELECT
CASE GOLD
SELECT CASE place

CASE home
cMoneyhome(GOLD) =+ amount
CASE Carried
cMoneycarried(GOLD) =+ amount
CASE elseware
cMoneyelsewhere(GOLD)=+ amount

END SELECT
CASE ELECTRUM
SELECT CASE place

CASE home
cMoneyhome(ELECTRUM) =+ amount
CASE Carried
cMoneycarried(ELECTRUM) =+ amount
CASE elseware
cMoneyelsewhere(ELECTRUM)=+ amount

END SELECT
CASE SILVER
SELECT CASE place
CASE home
cMoneyhome(SILVER) =+ amount
CASE Carried
cMoneycarried(SILVER) =+ amount
CASE elseware
cMoneyelsewhere(SILVER)=+ amount

END SELECT
CASE COPPER
SELECT CASE place
CASE home
cMoneyhome(COPPER) =+ amount
CASE Carried
cMoneycarried(COPPER) =+ amount
CASE elseware
cMoneyelsewhere(COPPER)=+ amount

END SELECT
END SELECT


END SUB
SUB cbaseclass.moneysub( place AS INTEGER, cointype AS INTEGER, amount AS INTEGER)
SELECT CASE cointype
CASE PLATINUM
SELECT CASE place
CASE home
cMoneyhome(PLATINUM) =- amount
CASE Carried
cMoneycarried(PLATINUM) =- amount
CASE elseware
cMoneyelsewhere(PLATINUM)=- amount
END SELECT
CASE GOLD
SELECT CASE place

CASE home
cMoneyhome(GOLD) =- amount
CASE Carried
cMoneycarried(GOLD) =- amount
CASE elseware
cMoneyelsewhere(GOLD)=- amount

END SELECT
CASE ELECTRUM
SELECT CASE place

CASE home
cMoneyhome(ELECTRUM) =- amount
CASE Carried
cMoneycarried(ELECTRUM) =- amount
CASE elseware
cMoneyelsewhere(ELECTRUM)=- amount

END SELECT
CASE SILVER
SELECT CASE place
CASE home
cMoneyhome(SILVER) =- amount
CASE Carried
cMoneycarried(SILVER) =- amount
CASE elseware
cMoneyelsewhere(SILVER)=- amount

END SELECT
CASE COPPER
SELECT CASE place
CASE home
cMoneyhome(COPPER) =- amount
CASE Carried
cMoneycarried(COPPER) =- amount
CASE elseware
cMoneyelsewhere(COPPER)=+ amount

END SELECT
END SELECT
END SUB
SUB cbaseclass.clalignment () 'done
cAlignment =  rnd_range (1, 3)
END SUB


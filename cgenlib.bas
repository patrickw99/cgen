#Include "cgen.bi"
#Include "dice.bi"
#Include "tables.bi"


/'

function  ChooseSex() as integer 
   ' CSex = RollDice(1,2)

End function

sub rollchar() 
 '   charclear
 '   ChooseSex
 '   abilities
 '   chooseEye
 '   chooseHair
 '   chooseSkin
 '   cClass = chooseclass()
 '   Select Case cClass
 '   Case Fighter, Cleric, Mage, Theif
 '       HumanHeight
  '  Case Elf
  '      elfHeight
 '   Case Dwarf
 '       dwarfheight
 '   Case Halfling
 '       halflingheight
 '   End Select
 '   feetinch
 '   Print "Class: ";cclass
 '   clevel = rollDice(1, 36)
 '   clalignment

End sub 
function dwarfheight () as integer  'done
 '   cHeight = rnd_range (44 , 52)
 '   Select Case cHeight
 '   Case 44, 45
 '       If CSex = Male Then
 '           cWeight = rnd_range (1300,1399)
 '       Else
 '           cWeight = rnd_range (1250, 1349)
 '       End If
 '   Case 44, 45
 '       If CSex = Male Then
 '           cWeight = rnd_range (1400,1499)
  '      Else
  '          cWeight = rnd_range (1350, 1449)
'        End If
'   Case 44, 45
'        If CSex = Male Then
'            cWeight = rnd_range (1500,1549)
'        Else
'            cWeight = rnd_range (1450, 1549)
'        End If
'    Case 44, 45
'        If CSex = Male Then
'            cWeight = rnd_range (1550,1649)
'        Else
'            cWeight = rnd_range (1500, 1599)
'        End If
'    Case 44, 45
'        If CSex = Male Then
'            cWeight = rnd_range (1650,1750)
'        Else
'            cWeight = rnd_range (1600, 1700)
'        End If
'    End Select
End function
function HumanHeight () as integer 

' done
'    cHeight = rnd_range(58, 76)
'    Select Case cHeight
'    Case 58, 59
'        If CSex = Male Then
'            cWeight = rnd_range (1100,1199)
'        Else
'            cWeight = rnd_range (1050, 1099)
'        End If
'    Case 60, 61
'        If CSex = Male Then
'            cWeight = rnd_range (1200,1299)
'        Else
'            cWeight = rnd_range (1100 , 1199)
'        End If
'    Case 62, 63
'        If CSex = Male Then
'            cWeight = rnd_range (1300,1399)
'        Else
'            cWeight = rnd_range (1200,1249)
'        End If
'    Case 64, 65
'        If CSex = Male Then
'            cWeight = rnd_range (1400,1499)
'        Else
'            cWeight = rnd_range (1250,1299)
'        End If
'    Case 66, 67
'        If CSex = Male Then
'            cWeight = rnd_range (1500,1549)
'        Else
'            cWeight = rnd_range (1300,1399)
'        End If
'    Case 68,69
'        If CSex = Male Then
'            cWeight = rnd_range (1550, 1649)
'        Else
'            cWeight = rnd_range ( 1400,1499)
'        End If
'    Case 70,71
'        If CSex = Male Then
'            cWeight = rnd_range (1650,1749)
'        Else
'            cWeight = rnd_range (1500,1549)
'        End If
'    Case 72, 73
'        If CSex = Male Then
'            cWeight = rnd_range (1750,1849)
'        Else
'            cWeight = rnd_range (1550,1649)
'        End If
'    Case 74,75
'        If CSex = Male Then
'            cWeight = rnd_range (1850,1999)
'        Else
 '           cWeight = rnd_range (1650,1749)
'        End If
'    Case 76
'        If CSex = Male Then
'            cWeight = rnd_range ( 2000,2100)
'        Else
'            cWeight = rnd_range (1750,1850)
'        End If
'    End Select
End function
function ElfHeight () as integer' done
'    cHeight = rnd_range(56, 68)
'    Select Case cheight
'    Case 56 , 57
'        If csex = Male Then
'            cWeight = rnd_range (900,999)
'        Else
'            cWeight = rnd_range (750, 799)
'        End If
'    Case 58, 59
'        If csex = Male Then
'            cWeight = rnd_range (1000,1099)
'        Else
'            cWeight = rnd_range (800 , 899)
'        End If
'    Case 60, 61
'        If csex = Male Then
'            cWeight = rnd_range (1100,1199)
'        Else
'            cWeight = rnd_range (900,999)
'        End If
'    Case 62, 63
'        If csex = Male Then
'            cWeight = rnd_range (1200,1299)
'        Else
'            cWeight = rnd_range (1000,1099)
'        End If
'    Case 64, 65
'        If csex = Male Then
'            cWeight = rnd_range (1300,1399)
'        Else
'            cWeight = rnd_range (1100,1199)
'        End If
'    Case  66,67
'        If csex = Male Then
'            cWeight = rnd_range (1400, 1499)
'        Else
'            cWeight = rnd_range (1200 ,1299)
'        End If
'    Case  68
'        If csex = Male Then
'            cWeight = rnd_range (1500, 1600)
'        Else
'            cWeight = rnd_range (1300 ,1400)
'        End If
 '   End Select
End function
function halflingHeight() as integer ' done
'    cHeight = rnd_range(34, 38)
'    Select Case cHeight
'    Case 34, 35
'        cWeight = rnd_range (580,599)
'    Case 36 , 37
'        cWeight = rnd_range (600,619)
'    Case  38
'        cWeight = rnd_range (620,630)
'    End Select

End function

function feetinch() as integer 'done
'    chHight.foot = floor(cHeight / 12)
'    chHight.inch = cHeight - (chHight.foot *12)
End function

function CharMovement(cMoveEncb As Integer) as integer
'    Select Case cMoveEncb
'    Case 0 To 400
'        cMoveNor = 120
'        cMoveEnc = 40
'        cMoveRun = 120
'    Case 401 To 800
'        cMoveNor = 90
'        cMoveEnc = 30
'        cMoveRun = 90
'    Case 801 To 1200
'        cMoveNor = 60
'        cMoveEnc = 20
'        cMoveRun = 60
'    Case 1201 To 1600
'        cMoveNor = 30
'        cMoveEnc = 10
'        cMoveRun = 30
'    Case 1601 To 2400
'        cMoveNor = 15
'        cMoveEnc = 5
'        cMoveRun = 15
'    Case Is >= 2401
'        cMoveNor = 0
'        cMoveEnc = 0
'        cMoveRun = 0
'    End Select

End function
function chooseEye () as integer 'done
'    Dim  eye  As Integer = rollDice(1, 100)
'    Select Case eye
'    Case 1 To 16
'        cEyes = "Amber"
'    Case 17 To 36
'        cEyes = "Brown"
'    Case 37 To 52
'        cEyes = "Hazel"
'    Case 53 To 68
'        cEyes = "Green"
'    Case 69 To 84
'        cEyes = "Blue"
'    Case 85 To 100
'        cEyes = "Gray"
'    End Select
End function
function chooseHair () as integer 'done
'    Dim  hairtype  As Integer = rollDice(1, 100)
'    Select Case hairtype
'    Case 1 To 12
'        cHair = "Black"
'    Case 13 To 20
'        cHair = "Gray"
'    Case 21 To 28
'        cHair = "Platinum"
'    Case 29 To 36
'        cHair =  "White"
'    Case 37 To 44
'        cHair = "Dark Blonde"
'    Case 45 To 52
'        cHair = "Blonde"
'    Case 53 To 60
'        cHair = "Bleach Blonde"
'    Case 61 To 68
'        cHair =  "Dark Redhead"
'    Case 69 To 76
'        cHair =  "Redhead"
'    Case 77 To 84
'        cHair = "Light Redhead"
'    Case 85 To 92
'        cHair =  "Brunette"
'    Case 93 To 100
'        cHair = "Auburn"
'    End Select
End function
function chooseSkin ()  as integer' done
'    Dim  skintype  As Integer = rollDice(1, 100)
'    Select Case skintype
'    Case 1 To 12
'        cSkin= "Pale"
'    Case 13 To 24
'        cSkin= "Fair"
'    Case 25 To 37
'        cSkin= "Light"
'    Case 38 To 50
'        cSkin=  "Light Tan"
'    Case 51 To 63
'        cSkin= "Tan"
'    Case 64 To 76
'        cSkin= "Dark Tan"
'    Case 77 To 88
'        cSkin= "Brown"
'    Case 89 To 100
'        cSkin=  "Dark Brown"
'    End Select
End function

Function abilitiesadj (ability As Integer ) As Integer 'done

'    Select Case ability
'    Case 3
'        abilitiesadj = -3
'    Case 4To 5
'        abilitiesadj = -2
'    Case 6 To 8
'        abilitiesadj = -1
'    Case 9 To 1
'        abilitiesadj = 0
'    Case 13 To 15
'        abilitiesadj = 1
'    Case 16 To 17
'        abilitiesadj = 2
'    Case 18
'        abilitiesadj = 3
'    End Select
End Function
function abilities() 'done
'    Dim  i As Integer
'    For i = Lbound(cAbility) To Ubound (cAbility)
'        cAbility(i) = RollDice(3,6)
'    Next
'    For i = Lbound(cadjust) To Ubound (cadjust)
'        cadjust(i) = abilitiesadj(cability(i))
'    Next
End function
Function chooseclass() As Integer 'done
'    Dim ClassChoice(0 To 8) As Integer
'    Dim count As Integer =1
'    Dim rclass As Integer
'    Dim ccount As Integer  = -1
'
'    Do
'        If cAbility(1) >= 9 Then
'            classChoice(count) = Fighter
'            count += 1
'            ccount=1
'        Endif
'
'        If cAbility(2) >= 9 Then
'            classChoice(count) = Mage
'            count += 1
'            ccount=1
'        Endif
'
'        If cAbility(3) >= 9 Then
'            classChoice(count) = cleric
'            count += 1
'            ccount=1
'        Endif

 '       If cAbility(4) >= 9 Then
 '           classChoice(count) = theif
 '           count += 1
 '           ccount=1
'        Endif

'        If cAbility(1) >= 9 And  cAbility(2) >= 9 Then
'            classChoice(count) = Elf
'            count += 1
'            ccount=1
'        Endif

'        If cAbility(1) >= 9 And  cAbility(5) >= 9 Then
'            classChoice(count) =dwarf
'            count += 1
'            ccount=1
'        Endif

'        If cAbility(1) >= 9 And  cAbility(4) >= 9 And cAbility(5) >= 9 Then
'            classChoice(count) = halfling
'            count += 1
'            ccount=1
'        Endif
'        If ccount = -1 Then
'            abilities()
'        Endif
'    Loop While ccount = -1
'    Do
'        rclass = pick(ClassChoice())
'    Loop While rclass = 0
'    Return rclass


End Function

function savers(array() As Integer)  as integer'done
'    Dim x As Integer
'    Dim y As Integer
'    For x = Lbound(array) To Ubound (array)
'        If clevel >= array(x, 0) And clevel <= array(x, 1) Then
'            For y = Lbound (csaves) To Ubound(csaves)
'                csaves(y) = array (x,y+2)
'            Next
'        End If
'    Next
End function

function attacks(ac as integer, value as integer) as integer
'	cattack(20 + ac) = value
end function

function attacks(array() As Integer)  as integer'done
'    Dim x As Integer
'    Dim y As Integer
'    For x = Lbound (array) To Ubound (array)
'        If clevel >= array(x, 0) And clevel <= array(x, 1) Then
'            For y = Lbound (cattack) To Ubound (cattack)
'print "array";x;",";y;"  ";array(x,y)
'                cattack(y) = array (x,y+2)
'            Next
'        End If
'    Next
End function

function theifskills ( skill as integer, value as integer) as integer
	
'	ctskill(skill) = value
end function 
function theifskill(array() As Integer)  as integer'done
'    Dim x As Integer
'    Dim y As Integer
'    For y = Lbound (array,2) To Ubound (array, 2)
'        ctskill(y) = array (clevel,y)
'    Next
End function

function clericturn(turn as integer, value as integer) as integer
'	cturns(turn) = value 
end function

sub clericturn (array() As Integer, player as CbaseClass)  as integer ' done
'    Dim x As Integer
'    Dim y As Integer
'    Dim lower As Integer = Lbound (array,2)
'    Dim upper As Integer = Ubound (array, 2)
'    Select Case player.CharacterClass
'    Case Cleric
'        For y = lower To upper
'            player.cturns(y) = array (clevel,y)
'        Next
'    Case Fighter
'        If cLevel >= 9 And Wisdom  >= 13 Then
'            For y = lower To upper
'                player.cturns(y) = array (floor(cLevel/5),y)
'            Next
'        End If
'    End Select
End sub '/

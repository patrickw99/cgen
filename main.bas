#include "tables.bi"
#include "dice.bi"
#include "cgen.bi"

dim x as integer
'driver / test

	dim cc as CbaseClass
	cc.rollchar()
 print "Strength      : "; cc.Strength ();"  Adjustment: "; cc.StrAdjustment () 
 print "Intellegence  : ";cc.Intellegence ();"  Adjustment: ";   cc.IntAdjustment ()
 print "wisdom        : ";cc.Wisdom ();"  Adjustment: ";  cc.WisAdjustment () 
 print "Dexterity     : ";cc.Dexterity ();"  Adjustment: ";  cc.DexAdjustment ()
 print "Constitution  : ";cc.Constitution ();"  Adjustment: ";  cc.ConAdjustment () 
 print "Charisma      : ";cc.Charisma ();"  Adjustment: ";  cc.CharAdjustment () 


/''	
theifskill(array() as integer) 
clericturn (array() as integer)	
 '/
 
select case cc.CharacterClass()
	Case Fighter
		cc.savers(fightersaves())  
		cc.attacks(fighterattack() ) 
	Case Cleric
		cc.savers(clericsaves() ) 
		cc.attacks(ctdattack() )
		cc.clericturn (turns())
	case Theif
		cc.savers(theifsaves () ) 
		cc.attacks(ctdattack() )
		cc.theifskill(theifskills())
	Case Mage
		cc.savers( magesaves() ) 
		cc.attacks(mageattack() ) 
    Case Elf
		cc.savers(elfsaves () )
		cc.attacks(dhattack() )  
    case Dwarf
		cc.savers(dwarfsaves() ) 
		cc.attacks(dhattack() ) 
    case Halfling
        cc.savers(halflingsaves() ) 
        cc.attacks(dhattack() ) 
 End Select	

for  x = 20 to -20 step -1
 print "ac :";x;"=";cc.Tohitac(x),
Next x
 print
 
print "Death Ray Poision:  ";cc.DeathRayPoison ()
print "Magic Wands" ; cc.MagicWands ()
print "Paralysis Stone:"; cc.ParalysisStone ()
print "Breath Attack:"; cc.BreathAttack () 
print "Rod Staff Spell:"; cc.RodStaffSpell ()
print 


if cc.CharacterClass() = Theif then

	 Print "open locks: "; cc.OpenLocks (), 
	 Print "Find Traps:"; cc.FindTraps (), 
	 Print "Remove Traps:";cc.RemoveTraps (), 
	 Print "Climb Walls:"; cc.ClimbWalls () ,
	 Print "Move Silently:"; cc.MoveSilently (), 
	 Print "Hide in Shadows:"; cc.HideinShadows (), 
	 Print "Pick Pocket:"; cc.PickPockets () ,
	 Print "Hear Noise:"; cc.HearNoise () ,
	 print
end if 

if cc.characterclass() = cleric then
	print "Skeleton"; cc.Skeleton () 
	print "Zombie"; cc.Zombie () 
	print "Ghoul"; cc.Ghoul () 
	print "wight"; cc.Wight () 
	print "wraith"; cc.Wraith () 
	print "mummy"; cc.Mummy () 
	print "Spectre"; cc.Spectre () 
	print "Vampire"; cc.Vampire () 
	print "Phantom"; cc.Phantom () 
	print "Haunt"; cc.Haunt () 
	print "Spirit"; cc.Spirit () 
	print "Nightshade"; cc.Nightshade ()
	print "lich"; cc.Lich () 
	print "special"; cc.Special () 
end if
	sleep

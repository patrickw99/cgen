#ifndef __cgen__
 #define __cgen__

TYPE  charhight
	DIM foot AS INTEGER
	DIM inch AS INTEGER
END Type
TYPE CbaseClass
	PRIVATE:

	DIM  cAbility(6) AS INTEGER
	DIM  cadjust(6) AS INTEGER
	DIM  cprebonus  AS INTEGER

	DIM  cRace AS Integer
	Dim  c_race As Integer
	DIM  cSex  AS INTEGER
	DIM  chHight AS charhight
	DIM  cHeight  AS INTEGER
	'Dim  cHFT AS INTEGER
	'Dim  CHINC AS INTEGER
	Dim  cWeight  AS INTEGER
	Dim  cAge  AS INTEGER
	Dim  cHair AS STRING
	DIM  cSkin AS STRING
	DIM  cEyes   AS STRING
	DIM  cFullName  AS STRING
	DIM  cAlignment  AS INTEGER

	Dim  cattack (41) AS INTEGER
	DIM  cXPAdj AS INTEGER
	Dim  cXPTotal AS INTEGER
	Dim  cPrimeReq AS INTEGER

	Dim  cAC AS INTEGER
	Dim  cHitPoint AS INTEGER
	Dim  cDamage AS INTEGER

	Dim  cMoveNor AS INTEGER
	Dim  cMoveEnc AS INTEGER
	Dim  cMoveRun AS INTEGER
	Dim  cMoveOther AS INTEGER

	Dim  cMoneycarried (5) AS INTEGER
	DIM  cMoneyhome (5) AS INTEGER
	DIM  cMoneyelsewhere (5) AS INTEGER

	DIM  cClass AS INTEGER
	DIM  cLevel AS INTEGER

	DIM  csaves (5) AS INTEGER
	DIM  cturns (14)  AS INTEGER
	DIM  ctskill (8) As INTEGER

	DIM  cCspell(8)  AS INTEGER
	DIM  cmspell(9)  AS INTEGER
	dim  cespell(5) as integer


	DIM  cMspellbook(9,9) AS integer
	DIM  cEspellbook(5,9) AS integer


	DECLARE SUB chooseSex () 'done
	DECLARE SUB chooseHeight () 'done
	DECLARE SUB feetinch() 'done
	DECLARE SUB chooseHair() 'done
	DECLARE SUB chooseSkin () 'done
	DECLARE SUB chooseWeight (hight AS STRING, sex AS INTEGER) 'done
	DECLARE SUB CharMovement(cMoveEncb AS INTEGER )
	DECLARE SUB chooseEye () 'done
	DECLARE FUNCTION  abilitiesadj (ability AS INTEGER  ) AS INTEGER 'done
	DECLARE SUB abilities( ) 'done
	DECLARE FUNCTION chooseclass() AS INTEGER
	DECLARE SUB dwarfheight ()
	DECLARE SUB HumanHeight () 'done
	DECLARE SUB ElfHeight ()
	DECLARE SUB halflingHeight()
	DECLARE SUB clalignment () 'done
PUBLIC:
   /' DECLARE function spellbook (x as integer, y as integer) as integer
    DECLARE sub spellbook OVERLOAD ( x AS INTEGER, y AS INTEGER,value as string)
    DECLARE SUB spells(array() AS INTEGER)
    declare function Spellbook OVERLOAD(value as integer) As integer
    DECLARE FUNCTION clspell(spell AS INTEGER) AS INTEGER
	DECLARE FUNCTION mespell(spell AS INTEGER) AS INTEGER
	DECLARE FUNCTION getspell(lvl AS INTEGER, spnum AS INTEGER) AS STRING
'/

   Declare FUNCTION moneyhome (cointype AS INTEGER)AS INTEGER
	DECLARE FUNCTION moneycarried(cointype AS INTEGER)AS INTEGER
	DECLARE FUNCTION moneyelsewhere(cointype AS INTEGER) AS INTEGER
	DECLARE SUB moneyadd( place AS INTEGER, cointtype AS INTEGER, amount AS INTEGER)
	DECLARE SUB moneysub( place AS INTEGER, cointtype AS INTEGER, amount AS INTEGER)

   Declare SUB attacks(array() AS INTEGER) 'done
	DECLARE SUB theifskill(array() AS INTEGER)
	DECLARE SUB clericturn (array() AS INTEGER)
	Declare Sub heightWeight(array() As Integer)


	DECLARE SUB rollchar()
	DECLARE SUB charclear()  'done
	DECLARE SUB savers(array() AS INTEGER) 'done
	
	

	REM ' *******************character attributs***********************'
	DECLARE PROPERTY AC() AS INTEGER
	DECLARE PROPERTY HitPoint() AS INTEGER
	DECLARE PROPERTY Damage() AS INTEGER
	DECLARE PROPERTY MoveNor() AS INTEGER
	DECLARE PROPERTY MoveEnc ()AS INTEGER
	DECLARE PROPERTY MoveRun() AS INTEGER
	DECLARE PROPERTY MoveOther() AS INTEGER
	DECLARE PROPERTY Race() AS integer
	DECLARE PROPERTY Sex()  AS string  'done
	DECLARE PROPERTY Height()  AS INTEGER  'done
	DECLARE PROPERTY feet() AS INTEGER 'done
	DECLARE PROPERTY inch() AS INTEGER 'done
	DECLARE PROPERTY Weight () AS INTEGER 'done
	DECLARE PROPERTY Age()  AS INTEGER
	DECLARE PROPERTY Hair() AS STRING 'done
	DECLARE PROPERTY skin() AS STRING 'done
	DECLARE PROPERTY Eyes()   AS STRING 'done
	DECLARE PROPERTY FullName()  AS STRING
	DECLARE PROPERTY alignment () AS INTEGER 'done
	DECLARE PROPERTY CharacterClass() AS INTEGER 'done
   Declare PROPERTY CharacterClass(aclass as integer) 'done
	DECLARE PROPERTY Level() AS INTEGER 'done
	DEclare property level(lvl as integer) 'done
	DECLARE PROPERTY Tohitac (armorclass AS INTEGER) AS INTEGER 'done
	' ****************************Abilities************************
	DECLARE PROPERTY Strength () AS INTEGER 'done
	DECLARE PROPERTY Intellegence () AS INTEGER 'done
	DECLARE PROPERTY Wisdom () AS INTEGER 'done
	DECLARE PROPERTY Dexterity () AS INTEGER 'done
	DECLARE PROPERTY Constitution () AS INTEGER 'done
	DECLARE PROPERTY Charisma () AS INTEGER 'done

	DECLARE PROPERTY Strength ( value AS INTEGER) 'done
	DECLARE PROPERTY Intellegence ( value AS INTEGER) 'done
	DECLARE PROPERTY Wisdom ( value AS INTEGER) 'done
	DECLARE PROPERTY Dexterity (value  AS INTEGER ) 'done
	DECLARE PROPERTY Constitution (value  AS INTEGER ) 'done
	DECLARE PROPERTY Charisma (value  AS INTEGER ) 'done
	' *************************Ability Adjustments********************
	
    DECLARE PROPERTY StrAdjustment () AS INTEGER 'done
	DECLARE PROPERTY IntAdjustment () AS INTEGER 'done
	DECLARE PROPERTY WisAdjustment () AS INTEGER 'done
	DECLARE PROPERTY DexAdjustment () AS INTEGER 'done
	DECLARE PROPERTY ConAdjustment () AS INTEGER 'done
	DECLARE PROPERTY CharAdjustment () AS INTEGER 'done
	' *******************saving throws ***********************'
	DECLARE PROPERTY DeathRayPoison () AS INTEGER  'done
	DECLARE PROPERTY MagicWands () AS INTEGER  'done
	DECLARE PROPERTY ParalysisStone () AS INTEGER  'done
	DECLARE PROPERTY BreathAttack () AS INTEGER  'done
	DECLARE PROPERTY RodStaffSpell () AS INTEGER  'done

	DECLARE PROPERTY DeathRayPoison (value AS INTEGER)  'done
	DECLARE PROPERTY MagicWands (value AS INTEGER) 'done
	DECLARE PROPERTY ParalysisStone (value AS INTEGER) 'done
	DECLARE PROPERTY BreathAttack (value AS INTEGER) 'done
	DECLARE PROPERTY RodStaffSpell (value AS INTEGER) 'done

	' ****************cleric/druid turns****************************'
	DECLARE PROPERTY Skeleton () AS INTEGER
	DECLARE PROPERTY Zombie () AS INTEGER
	DECLARE PROPERTY Ghoul () AS INTEGER
	DECLARE PROPERTY Wight () AS INTEGER
	DECLARE PROPERTY Wraith () AS INTEGER
	DECLARE PROPERTY Mummy () AS INTEGER
	DECLARE PROPERTY Spectre () AS INTEGER
	DECLARE PROPERTY Vampire () AS INTEGER
	DECLARE PROPERTY Phantom () AS INTEGER
	DECLARE PROPERTY Haunt () AS INTEGER
	DECLARE PROPERTY Spirit () AS INTEGER
	DECLARE PROPERTY Nightshade () AS INTEGER
	DECLARE PROPERTY Lich () AS INTEGER
	DECLARE PROPERTY Special () AS INTEGER

	' *******************************Theif Skills*****************'
	DECLARE PROPERTY OpenLocks () AS INTEGER
	DECLARE PROPERTY FindTraps () AS INTEGER
	DECLARE PROPERTY RemoveTraps () AS INTEGER
	DECLARE PROPERTY ClimbWalls () AS INTEGER
	DECLARE PROPERTY MoveSilently () AS INTEGER
	DECLARE PROPERTY HideinShadows () AS INTEGER
	DECLARE PROPERTY PickPockets () AS INTEGER
	DECLARE PROPERTY HearNoise () AS INTEGER

    DECLARE property espell(lvl as integer) as integer
    DECLARE property cspell(lvl as integer) as integer
    DECLARE property mspell(lvl as integer) as integer




	DECLARE SUB rolchar()
END TYPE

#endif

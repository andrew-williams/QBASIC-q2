DIM level AS INTEGER
DIM button AS STRING
DIM switch AS INTEGER
DIM force AS STRING
DIM monsterturn AS INTEGER
DIM quad AS STRING
DIM quadcounter AS INTEGER
DIM maxhealth AS INTEGER
DIM mdmgmax AS INTEGER
DIM armortype AS INTEGER
DIM armor AS STRING
DIM pack AS STRING
DIM mhealth AS INTEGER
DIM maxmhealth AS INTEGER
DIM mhealthcounter AS STRING
DIM mname AS STRING
DIM rewardnum AS INTEGER
DIM soulgain AS INTEGER
DIM you AS STRING '1
DIM youx AS INTEGER '2
DIM youy AS INTEGER '3
DIM keys AS STRING  '4
DIM keys2 AS STRING
DIM keyf1 AS STRING '5
DIM keyf2 AS STRING '6
DIM key1 AS STRING '7
DIM key2 AS STRING '8
DIM key1t AS STRING '9
DIM key2t AS STRING '10
DIM message AS STRING '11
DIM moves AS DOUBLE   '12
DIM oxygen AS DOUBLE '13
DIM oxygen1 AS STRING '14
DIM health AS DOUBLE '15
DIM weapon1 AS STRING '16
DIM weapon2 AS STRING '17
DIM weapon3 AS STRING '18
DIM weapon4 AS STRING '19
DIM weapon5 AS STRING '20
DIM weapon6 AS STRING '21
DIM weapon7 AS STRING '22
DIM weapon8 AS STRING '23
DIM weapon9 AS STRING '24
DIM weapon0 AS STRING '25
'DIM wpn1t AS STRING
'DIM wpn2t AS STRING
'DIM wpn3t AS STRING
'DIM wpn4t AS STRING
'DIM wpn5t AS STRING
'DIM wpn6t AS STRING
'DIM wpn7t AS STRING
'DIM wpn8t AS STRING
'DIM wpn9t AS STRING
DIM wpn0t AS STRING
DIM shells AS INTEGER
DIM bullet AS INTEGER
DIM grenade AS INTEGER
DIM rocket AS INTEGER
DIM slug AS INTEGER
DIM cell AS INTEGER
DIM soul AS INTEGER
monsterturn = 0
quadcounter = 0
quad = " "
maxhealth = 1000
switch = 0
force = "±"
button = "œ"
shells = 50 '
bullet = 0 '!
grenade = 0 'Ì
rocket = 0 '
slug = 0
cell = 0 '
soul = 0
pack = " "
armor = " "
level = 1
armortype = 0
'wpn1t = "™"
'wpn2t = "∑"
'wpn3t = ""
'wpn4t = ""
'wpn5t = ""
'wpn6t = ""
'wpn7t = "∏"
'wpn8t = "∆"
'wpn9t = ""
wpn0t = ""
weapon1 = "1"
weapon2 = "2"
weapon3 = " "
weapon4 = " "
weapon5 = " "
weapon6 = " "
weapon7 = " "
weapon8 = " "
weapon9 = " "
weapon0 = " "
message = "Please Do Not Cheat"
you = ""
oxygen1 = "Ë"
youx = 16
youy = 9
keyf1 = "å"
keyf2 = "ç"
oxygen = 1000
health = 1000
'd 20 r 80

CLS


DO
rndbattle% = 100
LOCATE 1, 1
'armor check
IF armortype = 0 THEN
armor = " "
ELSEIF armortype = 1 THEN
armor = ""
ELSEIF armortype = 2 THEN
armor = ""
ELSEIF armortype = 3 THEN
armor = ""
END IF
'ammo check
mname = "        "
IF pack = " " THEN
	IF shells > 100 THEN
	shells = 100
	END IF
	IF bullet > 200 THEN
	bullet = 200
	END IF
	IF grenade > 50 THEN
	grenade = 50
	END IF
	IF rocket > 50 THEN
	rocket = 50
	END IF
	IF slug > 50 THEN
	slug = 50
	END IF
	IF cell > 200 THEN
	cell = 200
	END IF
ELSEIF pack = "0" THEN
	IF shells > 200 THEN
	shells = 200
	END IF
	IF bullet > 300 THEN
	bullet = 300
	END IF
	IF grenade > 100 THEN
	grenade = 100
	END IF
	IF rocket > 100 THEN
	rocket = 100
	END IF
	IF slug > 100 THEN
	slug = 100
	END IF
	IF cell > 300 THEN
	cell = 300
	END IF
END IF
IF soul > 5 THEN
soul = 5
END IF
'end ammo check
soulgain = 1
IF health > maxhealth THEN
health = maxhealth
END IF
IF key1t = "true" THEN
	key1 = "å"
	keyf1 = " "
ELSE
	key1 = " "
END IF
IF key2t = "true" THEN
	key2 = "ç"
	keyf2 = " "
ELSE
	key2 = " "
END IF
IF oxygen >= 9999 THEN
	oxygen = 9999
END IF
'level map
IF level = 1 THEN
'      00000000011111111112222222222333333333344444444445555555555666666666677777777778
'      12345678901234567890123456789012345678901234567890123456789012345678901234567890
PRINT "€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€             " '1
PRINT "€Battle Percentage: 10%                                         €  STATUS BAR " '2
PRINT "€Requirements To Exit: 2 White Keys                             €  ========== " '3
PRINT "€Exit Is Located As An 'X'                                      €     Items   " '4
PRINT "€Touch The 'X' To Win                                           €   "; key1; key2; armor; pack; quad; "    "'5
PRINT "€Touch It Before Your Oxygen Runs Out                           €    Oxygen   "'6
PRINT "€THIS GAME IS HARD!!!!!!!!!!!!!!!!                              €   "; oxygen; "     "'7
PRINT "€≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤X≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤                 €    Health   "'8
PRINT "€±±±±±±±±±±±±±±±±±±±≤Õ≤   "; wpn0t; "≤    ≤≤"; oxygen1; "≤          ≤                 €    "; health; "    "'9
PRINT "€±LEVEL 001±±±±±±±±±≤Õ≤   ≤≤≤≤≤    ≤ ≤≤≤≤≤≤≤≤ ≤                 €    Weapon   " '10
PRINT "€±±±±±±±±±±±±±±≤≤≤≤≤≤ ≤≤≤     ≤≤ ≤ ≤        ≤ ≤                 €  "; weapon1; weapon2; weapon3; weapon4; weapon5; weapon6; weapon7; weapon8; weapon9; weapon0'11
PRINT "€Welcome To The≤      ≤   ≤≤≤    ≤ ≤≤≤≤≤≤≤≤ ≤ ≤                 €     Ammo    "'12
PRINT "€Cave≤≤≤≤≤≤≤≤≤v≤ ≤≤≤≤≤≤≤≤   ≤≤≤≤≤≤          ≤ ≤                 € Shells:"; shells; "  " '13"
PRINT "€∞∞∞∞≤       ∞∞∞   ≤≤≤≤≤≤≤ ≤    ≤≤≤≤≤≤≤≤≤≤≤≤ ≤                 € Bullet:"; bullet; "  " '14"
PRINT "€∞∞∞∞≤ ≤≤≤≤≤≤≤^≤ ≤≤≤≤≤≤≤≤≤  ≤  ≤              ≤                 € Grnade:"; grenade; "  "'15
PRINT "€∞∞∞∞≤ ≤     ≤≤≤ ≤       ≤"; keyf2; "≤≤  ≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤                 € Rocket:"; rocket; "  "'16
PRINT "€∞∞∞∞≤ ≤     ≤≤≤ ≤≤≤≤≤≤≤ ≤≤≤≤ ≤≤         ≤    ≤                 € Slugs :"; slug; "  "'17
PRINT "€≤≤≤≤≤ ≤≤≤ ≤≤≤≤≤         ≤       ≤≤≤≤≤≤≤   ≤≤ ≤                 € Cells :"; cell; "  "'18
PRINT "€             ≤≤ ≤≤≤≤≤≤≤≤≤ ≤≤≤≤≤≤≤≤    ≤ ≤≤≤  ≤                 € Soul C:"; soul; "    "'19
PRINT "€             ≤≤                    ≤≤"; keyf1; "≤      ≤                 €   Moves Made"'20
PRINT "€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€   "; moves'21
ELSEIF level = 2 THEN
'      00000000011111111112222222222333333333344444444445555555555666666666677777777778
'y     12345678901234567890123456789012345678901234567890123456789012345678901234567890
PRINT "€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€             " '1
PRINT "€Level Type: Medium                                             €  STATUS BAR " '2
PRINT "€Requirements To Exit: 2 White Keys                             €  ========== " '3
PRINT "€Exit Is Located As An 'X'                                      €     Items   " '4
PRINT "€Touch The 'X' To Win                                           €   "; key1; key2; armor; pack; quad; "     "'5
PRINT "€Touch It Before Your Oxygen Runs Out                           €    Oxygen   "'6
PRINT "€≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤€   "; oxygen; "     "'7
PRINT "€≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ ≤≤≤≤≤≤≤≤≤≤≤≤ ≤≤≤≤≤≤≤≤≤≤≤≤                 €    Health   "'8
PRINT "€±±±±±±±±±±±±±±±±±±±≤ ≤≤≤    ≤  ≤≤ ≤          ≤"; keyf1; "≤≤≤≤≤≤≤ ≤≤≤≤≤ ≤≤€    "; health; "    "'9
PRINT "€±LEVEL 002±±±±±±±±±≤     ≤≤ ≤≤  ≤ ≤ ≤≤≤≤≤≤≤≤ ≤≤≤≤≤≤≤≤≤ ≤       €    Weapon   " '10
PRINT "€±±±±±±±±±±±±±±≤≤≤≤≤≤≤≤≤≤≤≤≤  ≤≤ ≤ ≤        ≤ ≤v≤    ≤≤ ≤≤≤≤≤≤≤≤€  "; weapon1; weapon2; weapon3; weapon4; weapon5; weapon6; weapon7; weapon8; weapon9; weapon0'11
PRINT "€≤≤≤≤≤≤≤≤≤≤"; button; "≤≤≤≤  ≤  ±  ≤  ≤≤      ≤≤≤≤≤≤≤≤ ≤ ∞"; force; "∞    "; keyf2; "≤         €     Ammo    "'12
PRINT "€  ±  ≤     ≤≤v≤  ≤ ±o± ≤  ≤v≤≤≤≤≤          ≤ ≤^≤    ≤≤≤≤≤≤≤≤≤≤ € Shells:"; shells; "  " '13"
PRINT "€ ±o± ≤ ≤≤≤  ∞"; force; "∞  ≤  ∞  ≤  ∞∞∞   ≤ ≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤   ≤≤    € Bullet:"; bullet; "  "'14"
PRINT "€  ∞  ≤ ≤≤≤≤≤≤^≤  ≤≤≤Õ≤≤≤  ≤^≤ ≤   ≤            ≤       ≤ ≤  ≤≤≤€ Grnade:"; grenade; "  "'15
PRINT "€≤≤ ≤≤≤      ≤≤≤           ≤≤≤ ≤≤≤≤≤ ≤≤≤≤≤≤≤≤≤≤ ≤ ≤≤≤ ≤≤≤≤≤ ≤≤ ≤€ Rocket:"; rocket; "  "'16
PRINT "€       ≤≤Õ≤≤≤≤≤≤≤≤≤≤ ≤≤≤≤≤≤≤              ≤  ≤   ≤   ≤   ≤ ≤≤ ≤€ Slugs :"; slug; "  "'17
PRINT "€≤≤≤≤≤≤≤≤      ≤≤±±≤≤∞≤≤±±≤≤  ≤≤≤≤≤≤≤≤≤≤   ≤≤ ≤ ≤ ≤ ≤≤≤ ≤   ≤≤  € Cells :"; cell; "  "'18
PRINT "€X≤≤≤≤≤≤≤≤≤≤≤≤ ≤±±≤≤∞∞∞≤≤±±≤ ≤≤        ≤ ≤≤≤  ≤ ≤≤≤≤≤≤≤ ≤≤≤≤≤≤≤ € Soul C:"; soul; "    "'19
PRINT "€              ≤±±±≤≤∞≤≤±±±≤    ≤≤≤≤≤≤ ≤      ≤                 €   Moves Made"'20
PRINT "€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€   "; moves'21
END IF
'end levelmap
PRINT "Keys: a = left d = right w = up s = down x = quit " 'x: ; youx;  y: ; youy RND; rndbattle%
PRINT "Message: "; message
LOCATE youx, youy
PRINT you
LOCATE 24, 1
IF level = 1 THEN
IF youx = 8 AND youy = 22 THEN
LOCATE 22, 1
	message = "You Have Encountered A Battle!          "
	mhealth = 5000
	maxmhealth = 5000
	mname = "BOSS    "
	mdmgmax = 500
	boss = 1
	rewardnum = 0
	GOTO battle

END IF
END IF
IF health <= 0 THEN
LOCATE 22, 1
	message = "You Lose                                 "
	PRINT "Message: "; message
	GOTO win
END IF
keys = INKEY$ 'INPUT "Enter A Direction: ", keys
'temp
IF keys = "o" THEN
level = 2
ELSEIF keys = "i" THEN
level = 1
'end temp
ELSEIF keys = "s" THEN
	moves = moves + 1
	oxygen = oxygen - 1
	PRINT " "
	message = "                                                                    "
	youx = youx + 1
	IF level = 1 THEN
	'key checker
	IF youy = 39 AND youx = 20 THEN
		IF keyf1 = "å" THEN
			message = "You Found A å Key!"
			key1t = "true"
		END IF
	END IF
	IF youy = 27 AND youx = 16 THEN
		IF keyf2 = "ç" THEN
			message = "You Found A ç Key!"
			key2t = "true"
		END IF
	END IF
	'key checker end
	'wall checker
	IF youy = 37 AND youx = 20 THEN
		message = "You Hit A Wall"
		youx = youx - 1
	ELSEIF youy = 38 AND youx = 20 THEN
		message = "You Hit A Wall"
		youx = youx - 1
	ELSEIF youy = 8 AND youx = 15 THEN
		message = "You Hit A Wall"
		youx = youx - 1
	ELSEIF youy = 9 AND youx = 15 THEN
		message = "You Hit A Wall"
		youx = youx - 1
	ELSEIF youy = 10 AND youx = 15 THEN
		message = "You Hit A Wall"
		youx = youx - 1
	ELSEIF youy = 11 AND youx = 15 THEN
		message = "You Hit A Wall"
		youx = youx - 1
	ELSEIF youy = 12 AND youx = 15 THEN
		message = "You Hit A Wall"
		youx = youx - 1
	ELSEIF youy = 13 AND youx = 15 THEN
		message = "You Hit A Wall"
		youx = youx - 1
	ELSEIF youy = 14 AND youx = 15 THEN
		message = "You Hit A Wall"
		youx = youx - 1
	ELSEIF youy = 15 AND youx = 15 THEN
		message = "You Hit A Wall"
		youx = youx - 1
	ELSEIF youy = 16 AND youx = 15 THEN
		message = "You Hit A Wall"
		youx = youx - 1
	ELSEIF youy = 18 AND youx = 15 THEN
		message = "You Hit A Wall"
		youx = youx - 1
	ELSEIF youy = 19 AND youx = 15 THEN
		message = "You Hit A Wall"
		youx = youx - 1
	ELSEIF youy = 18 AND youx = 19 THEN
		message = "You Hit A Wall"
		youx = youx - 1
	ELSEIF youy = 19 AND youx = 19 THEN
		message = "You Hit A Wall"
		youx = youx - 1
	ELSEIF youy = 20 AND youx = 19 THEN
		message = "You Hit A Wall"
		youx = youx - 1
	ELSEIF youy = 21 AND youx = 19 THEN
		message = "You Hit A Wall"
		youx = youx - 1
	ELSEIF youy = 22 AND youx = 19 THEN
		message = "You Hit A Wall"
		youx = youx - 1
	ELSEIF youy = 23 AND youx = 19 THEN
		message = "You Hit A Wall"
		youx = youx - 1
	ELSEIF youy = 24 AND youx = 19 THEN
		message = "You Hit A Wall"
		youx = youx - 1
	ELSEIF youy = 25 AND youx = 19 THEN
		message = "You Hit A Wall"
		youx = youx - 1
	ELSEIF youy = 28 AND youx = 19 THEN
		message = "You Hit A Wall"
		youx = youx - 1
	ELSEIF youy = 29 AND youx = 19 THEN
		message = "You Hit A Wall"
		youx = youx - 1
	ELSEIF youy = 30 AND youx = 19 THEN
		message = "You Hit A Wall"
		youx = youx - 1
	ELSEIF youy = 31 AND youx = 19 THEN
		message = "You Hit A Wall"
		youx = youx - 1
	ELSEIF youy = 32 AND youx = 19 THEN
		message = "You Hit A Wall"
		youx = youx - 1
	ELSEIF youy = 33 AND youx = 19 THEN
		message = "You Hit A Wall"
		youx = youx - 1
	ELSEIF youy = 42 AND youx = 19 THEN
		message = "You Hit A Wall"
		youx = youx - 1
	ELSEIF youy = 43 AND youx = 19 THEN
		message = "You Hit A Wall"
		youx = youx - 1
	ELSEIF youy = 45 AND youx = 18 THEN
		message = "You Hit A Wall"
		youx = youx - 1
	ELSEIF youy = 44 AND youx = 18 THEN
		message = "You Hit A Wall"
		youx = youx - 1
	ELSEIF youy = 40 AND youx = 18 THEN
		message = "You Hit A Wall"
		youx = youx - 1
	ELSEIF youy = 39 AND youx = 18 THEN
		message = "You Hit A Wall"
		youx = youx - 1
	ELSEIF youy = 38 AND youx = 18 THEN
		message = "You Hit A Wall"
		youx = youx - 1
	ELSEIF youy = 37 AND youx = 18 THEN
		message = "You Hit A Wall"
		youx = youx - 1
	ELSEIF youy = 36 AND youx = 18 THEN
		message = "You Hit A Wall"
		youx = youx - 1
	ELSEIF youy = 35 AND youx = 18 THEN
		message = "You Hit A Wall"
		youx = youx - 1
	ELSEIF youy = 34 AND youx = 18 THEN
		message = "You Hit A Wall"
		youx = youx - 1
	ELSEIF youy = 13 AND youx = 18 THEN
		message = "You Hit A Wall"
		youx = youx - 1
	ELSEIF youy = 12 AND youx = 18 THEN
		message = "You Hit A Wall"
		youx = youx - 1
	ELSEIF youy = 10 AND youx = 18 THEN
		message = "You Hit A Wall"
		youx = youx - 1
	ELSEIF youy = 9 AND youx = 18 THEN
		message = "You Hit A Wall"
		youx = youx - 1
	ELSEIF youy = 19 AND youx = 17 THEN
		message = "You Hit A Wall"
		youx = youx - 1
	ELSEIF youy = 20 AND youx = 17 THEN
		message = "You Hit A Wall"
		youx = youx - 1
	ELSEIF youy = 21 AND youx = 17 THEN
		message = "You Hit A Wall"
		youx = youx - 1
	ELSEIF youy = 22 AND youx = 17 THEN
		message = "You Hit A Wall"
		youx = youx - 1
	ELSEIF youy = 23 AND youx = 17 THEN
		message = "You Hit A Wall"
		youx = youx - 1
	ELSEIF youy = 24 AND youx = 17 THEN
		message = "You Hit A Wall"
		youx = youx - 1
	ELSEIF youy = 18 AND youx = 13 THEN
		message = "You Hit A Wall"
		youx = youx - 1
	ELSEIF youy = 19 AND youx = 13 THEN
		message = "You Hit A Wall"
		youx = youx - 1
	ELSEIF youy = 20 AND youx = 13 THEN
		message = "You Hit A Wall"
		youx = youx - 1
	ELSEIF youy = 21 AND youx = 13 THEN
		message = "You Hit A Wall"
		youx = youx - 1
	ELSEIF youy = 22 AND youx = 13 THEN
		message = "You Hit A Wall"
		youx = youx - 1
	ELSEIF youy = 31 AND youx = 17 THEN
		message = "You Hit A Wall"
		youx = youx - 1
	ELSEIF youy = 27 AND youx = 17 THEN
		message = "You Hit A Wall"
		youx = youx - 1
	ELSEIF youy = 28 AND youx = 16 THEN
		message = "You Hit A Wall"
		youx = youx - 1
	ELSEIF youy = 32 AND youx = 15 THEN
		message = "You Hit A Wall"
		youx = youx - 1
	ELSEIF youy = 33 AND youx = 16 THEN
		message = "You Hit A Wall"
		youx = youx - 1
	ELSEIF youy = 34 AND youx = 16 THEN
		message = "You Hit A Wall"
		youx = youx - 1
	ELSEIF youy = 35 AND youx = 16 THEN
		message = "You Hit A Wall"
		youx = youx - 1
	ELSEIF youy = 36 AND youx = 16 THEN
		message = "You Hit A Wall"
		youx = youx - 1
	ELSEIF youy = 37 AND youx = 16 THEN
		message = "You Hit A Wall"
		youx = youx - 1
	ELSEIF youy = 38 AND youx = 16 THEN
		message = "You Hit A Wall"
		youx = youx - 1
	ELSEIF youy = 39 AND youx = 16 THEN
		message = "You Hit A Wall"
		youx = youx - 1
	ELSEIF youy = 40 AND youx = 16 THEN
		message = "You Hit A Wall"
		youx = youx - 1
	ELSEIF youy = 41 AND youx = 16 THEN
		message = "You Hit A Wall"
		youx = youx - 1
	ELSEIF youy = 42 AND youx = 16 THEN
		message = "You Hit A Wall"
		youx = youx - 1
	ELSEIF youy = 43 AND youx = 16 THEN
		message = "You Hit A Wall"
		youx = youx - 1
	ELSEIF youy = 44 AND youx = 16 THEN
		message = "You Hit A Wall"
		youx = youx - 1
	ELSEIF youy = 45 AND youx = 16 THEN
		message = "You Hit A Wall"
		youx = youx - 1
	ELSEIF youy = 46 AND youx = 16 THEN
		message = "You Hit A Wall"
		youx = youx - 1
	ELSEIF youy = 35 AND youx = 14 THEN
		message = "You Hit A Wall"
		youx = youx - 1
	ELSEIF youy = 36 AND youx = 14 THEN
		message = "You Hit A Wall"
		youx = youx - 1
	ELSEIF youy = 37 AND youx = 14 THEN
		message = "You Hit A Wall"
		youx = youx - 1
	ELSEIF youy = 38 AND youx = 14 THEN
		message = "You Hit A Wall"
		youx = youx - 1
	ELSEIF youy = 39 AND youx = 14 THEN
		message = "You Hit A Wall"
		youx = youx - 1
	ELSEIF youy = 40 AND youx = 14 THEN
		message = "You Hit A Wall"
		youx = youx - 1
	ELSEIF youy = 41 AND youx = 14 THEN
		message = "You Hit A Wall"
		youx = youx - 1
	ELSEIF youy = 42 AND youx = 14 THEN
		message = "You Hit A Wall"
		youx = youx - 1
	ELSEIF youy = 43 AND youx = 14 THEN
		message = "You Hit A Wall"
		youx = youx - 1
	ELSEIF youy = 44 AND youx = 14 THEN
		message = "You Hit A Wall"
		youx = youx - 1
	ELSEIF youy = 27 AND youx = 14 THEN
		message = "You Hit A Wall"
		youx = youx - 1
	ELSEIF youy = 26 AND youx = 14 THEN
		message = "You Hit A Wall"
		youx = youx - 1
	ELSEIF youy = 32 AND youx = 13 THEN
		message = "You Hit A Wall"
		youx = youx - 1
	ELSEIF youy = 31 AND youx = 13 THEN
		message = "You Hit A Wall"
		youx = youx - 1
	ELSEIF youy = 30 AND youx = 13 THEN
		message = "You Hit A Wall"
		youx = youx - 1
	ELSEIF youy = 25 AND youx = 13 THEN
		message = "You Hit A Wall"
		youx = youx - 1
	ELSEIF youy = 24 AND youx = 13 THEN
		message = "You Hit A Wall"
		youx = youx - 1
	ELSEIF youy = 33 AND youx = 13 THEN
		message = "You Hit A Wall"
		youx = youx - 1
	ELSEIF youy = 27 AND youx = 12 THEN
		message = "You Hit A Wall"
		youx = youx - 1
	ELSEIF youy = 28 AND youx = 12 THEN
		message = "You Hit A Wall"
		youx = youx - 1
	ELSEIF youy = 29 AND youx = 12 THEN
		message = "You Hit A Wall"
		youx = youx - 1
	ELSEIF youy = 37 AND youx = 12 THEN
		message = "You Hit A Wall"
		youx = youx - 1
	ELSEIF youy = 38 AND youx = 12 THEN
		message = "You Hit A Wall"
		youx = youx - 1
	ELSEIF youy = 39 AND youx = 12 THEN
		message = "You Hit A Wall"
		youx = youx - 1
	ELSEIF youy = 40 AND youx = 12 THEN
		message = "You Hit A Wall"
		youx = youx - 1
	ELSEIF youy = 41 AND youx = 12 THEN
		message = "You Hit A Wall"
		youx = youx - 1
	ELSEIF youy = 42 AND youx = 12 THEN
		message = "You Hit A Wall"
		youx = youx - 1
	ELSEIF youy = 43 AND youx = 12 THEN
		message = "You Hit A Wall"
		youx = youx - 1
	ELSEIF youy = 24 AND youx = 11 THEN
		message = "You Hit A Wall"
		youx = youx - 1
	ELSEIF youy = 25 AND youx = 11 THEN
		message = "You Hit A Wall"
		youx = youx - 1
	ELSEIF youy = 32 AND youx = 11 THEN
		message = "You Hit A Wall"
		youx = youx - 1
	ELSEIF youy = 34 AND youx = 11 THEN
		message = "You Hit A Wall"
		youx = youx - 1
	ELSEIF youy = 27 AND youx = 10 THEN
		message = "You Hit A Wall"
		youx = youx - 1
	ELSEIF youy = 29 AND youx = 10 THEN
		message = "You Hit A Wall"
		youx = youx - 1
	ELSEIF youy = 30 AND youx = 10 THEN
		message = "You Hit A Wall"
		youx = youx - 1
	ELSEIF youy = 31 AND youx = 10 THEN
		message = "You Hit A Wall"
		youx = youx - 1
	ELSEIF youy = 38 AND youx = 10 THEN
		message = "You Hit A Wall"
		youx = youx - 1
	ELSEIF youy = 39 AND youx = 10 THEN
		message = "You Hit A Wall"
		youx = youx - 1
	ELSEIF youy = 40 AND youx = 10 THEN
		message = "You Hit A Wall"
		youx = youx - 1
	ELSEIF youy = 41 AND youx = 10 THEN
		message = "You Hit A Wall"
		youx = youx - 1
	ELSEIF youy = 42 AND youx = 10 THEN
		message = "You Hit A Wall"
		youx = youx - 1
	ELSEIF youy = 43 AND youx = 10 THEN
		message = "You Hit A Wall"
		youx = youx - 1
	ELSEIF youy = 44 AND youx = 10 THEN
		message = "You Hit A Wall"
		youx = youx - 1
	ELSEIF youy = 45 AND youx = 10 THEN
		message = "You Hit A Wall"
		youx = youx - 1
	END IF
	ELSEIF level = 2 THEN
	IF ((youy >= 33 AND youy <= 38) OR (youy = 21) OR (youy = 23)) AND youx = 20 THEN
		message = "You Hit A Wall"
		youx = youx - 1
	ELSEIF ((youy >= 10 AND youy <= 14) OR (youy >= 42 AND youy <= 43) OR (youy >= 50 AND youy <= 52) OR (youy = 30) OR (youy >= 57 AND youy <= 63)) AND youx = 19 THEN
		message = "You Hit A Wall"
		youx = youx - 1
	ELSEIF ((youy >= 2 AND youy <= 8) OR (youy >= 31 AND youy <= 40) OR (youy >= 53 AND youy <= 54) OR (youy = 45) OR (youy = 49) OR (youy = 57)) AND youx = 18 THEN
		message = "You Hit A Wall"
		youx = youx - 1
	ELSEIF ((youy >= 9 AND youy <= 10) OR (youy >= 12 AND youy <= 21) OR (youy >= 23 AND youy <= 27)) AND youx = 17 THEN
		message = "You Hit A Wall"
		youx = youx - 1
	ELSEIF ((youy >= 38 AND youy <= 47) OR (youy >= 51 AND youy <= 53) OR (youy >= 55 AND youy <= 58) OR (youy = 61) OR (youy >= 2 AND youy <= 3) OR (youy >= 5 AND youy <= 6) OR (youy >= 33 AND youy <= 35)) AND youx = 16 THEN
		message = "You Hit A Wall"
		youx = youx - 1
	ELSEIF ((youy >= 12 AND youy <= 16) OR (youy >= 20 AND youy <= 21) OR (youy >= 23 AND youy <= 24) OR (youy = 32) OR (youy >= 28 AND youy <= 30) OR (youy >= 62 AND youy <= 64) OR (youy = 57)) AND youx = 15 THEN
		message = "You Hit A Wall"
		youx = youx - 1
	ELSEIF ((youy >= 9 AND youy <= 11) OR (youy >= 36 AND youy <= 53)) AND youx = 14 THEN
		message = "You Hit A Wall"
		youx = youx - 1
	ELSEIF ((youy >= 30 AND youy <= 34) OR (youy >= 47 AND youy <= 49) OR (youy >= 54 AND youy <= 63)) AND youx = 13 THEN
		message = "You Hit A Wall"
		youx = youx - 1
	ELSEIF ((youy = 29) OR (youy >= 37 AND youy <= 43)) AND youx = 12 THEN
		message = "You Hit A Wall"
		youx = youx - 1
	ELSEIF ((youy = 32) OR (youy >= 22 AND youy <= 26) OR (youy >= 58)) AND youx = 11 THEN
		message = "You Hit A Wall"
		youx = youx - 1
	ELSEIF ((youy = 31) OR (youy >= 38 AND youy <= 45) OR (youy >= 27 AND youy <= 28) OR (youy = 48)) AND youx = 10 THEN
		message = "You Hit A Wall"
		youx = youx - 1
	ELSEIF ((youy >= 63) OR (youy >= 49 AND youy <= 55) OR (youy >= 57 AND youy <= 61)) AND youx = 9 THEN
		message = "You Hit A Wall"
		youx = youx - 1
	ELSEIF youy = 11 AND youx = 17 THEN
		IF key2 = "ç" THEN
		message = "                                                    "
		ELSE
		message = "This Door Requires A ç Key"
		youx = youx - 1
		END IF
	ELSEIF (youy = 3 AND youx = 14) OR (youy = 5 AND youx = 14) OR (youy = 21 AND youx = 13) OR (youy = 23 AND youx = 13) THEN
		message = "You Hit A Barrier"
		youx = youx - 1
	END IF
	END IF
	'wall checker end
	IF youx = 21 THEN
		youx = 20
	END IF
	LOCATE youx, youy
	PRINT you
	'battle generator
	RANDOMIZE TIMER
	rndbattle% = INT(RND * 100) + 1
ELSEIF keys = "w" THEN
	moves = moves + 1
	oxygen = oxygen - 1
	PRINT " "
	message = "                                                                    "
	youx = youx - 1
	IF youx = 1 THEN
		youx = 2
	END IF
	'door checker
	IF level = 1 THEN
	IF youy = 22 AND youx = 9 THEN
		IF key1t = "true" THEN
		' blank
		ELSE
		message = "This Door Requires A å Key"
		youx = youx + 1
		END IF
	END IF
	IF youy = 22 AND youx = 10 THEN
		IF key2t = "true" THEN
		' blank
		ELSE
		message = "This Door Requires A ç Key"
		youx = youx + 1
		END IF
	END IF
	IF youy = 35 AND youx = 9 THEN
		IF oxygen1 = "Ë" THEN
			message = "You Found An Oxygen Tank! +100 o2"
			oxygen = oxygen + 100
			oxygen1 = " "
		END IF
	END IF
	'door checker end
	'wall checker begin
	IF (youy >= 18 AND youy <= 26 OR youy >= 28 AND youy <= 35 OR youy >= 42 AND youy <= 44) AND youx = 19 THEN 'Row 19 North
		message = "You Hit A Wall"
		youx = youx + 1
	ELSEIF (youy > 1 AND youy < 7 OR youy > 7 AND youy < 11 OR youy >= 12 AND youy <= 14 OR youy >= 36 AND youy <= 39 OR youy = 45) AND youx = 18 THEN 'Row 18 North
		message = "You Hit A Wall"
		youx = youx + 1
	ELSEIF (youy >= 9 AND youy <= 13 OR youy >= 19 AND youy <= 25) AND youx = 15 THEN 'Row 15 North
		message = "You Hit A Wall"
		youx = youx + 1
	ELSEIF (youy >= 18 AND youy <= 24 OR youy >= 27 AND youy <= 29 OR youy >= 31 AND youy <= 32 OR youy = 42) AND youx = 17 THEN 'Row 17 North
		message = "You Hit A Wall"
		youx = youx + 1
	ELSEIF (youy >= 33 AND youy <= 41 OR youy >= 43 AND youy <= 46) AND youx = 16 THEN 'Row 16 North
		message = "You Hit A Wall"
		youx = youx + 1
	ELSEIF (youy = 27 OR youy >= 34 AND youy <= 45) AND youx = 14 THEN 'Row 14 North
		message = "You Hit A Wall"
		youx = youx + 1
	ELSEIF (youy >= 7 AND youy <= 16 OR youy >= 18 AND youy <= 19 OR youy >= 30 AND youy <= 33) AND youx = 13 THEN 'Row 13 North
		message = "You Hit A Wall"
		youx = youx + 1
	ELSEIF (youy >= 27 AND youy <= 28 OR youy >= 36 AND youy <= 43) AND youx = 12 THEN 'Row 12 North
		message = "You Hit A Wall"
		youx = youx + 1
	ELSEIF (youy >= 17 AND youy <= 21 OR youy >= 24 AND youy <= 25 OR youy >= 31 AND youy <= 32) AND youx = 11 THEN 'Row 11 North
		message = "You Hit A Wall"
		youx = youx + 1
	ELSEIF (youy >= 27 AND youy <= 30 OR youy >= 38 AND youy <= 44) AND youx = 10 THEN 'Row 10 North
		message = "You Hit A Wall"
		youx = youx + 1
	ELSEIF (youy >= 33 AND youy <= 34) AND youx = 9 THEN 'Row 9 North
		message = "You Hit A Wall"
		youx = youx + 1
	ELSEIF (youy > 23) AND youx = 8 THEN 'Row 8 North
		message = "You Hit A Wall"
		youx = youx + 1
	END IF
	ELSEIF level = 2 THEN
	IF youx = 7 THEN
		message = "You Hit A Wall"
		youx = youx + 1
	ELSEIF ((youy >= 26 AND youy <= 29) OR (youy >= 31 AND youy <= 32) OR (youy >= 37 AND youy <= 46)) AND youx = 8 THEN
		message = "You Hit A Wall"
		youx = youx + 1
	ELSEIF ((youy >= 23 AND youy <= 25) OR (youy = 33) OR (youy >= 58 AND youy <= 61) OR (youy >= 63 AND youy <= 64)) AND youx = 9 THEN
		message = "You Hit A Wall"
		youx = youx + 1
	ELSEIF ((youy >= 38 AND youy <= 44) OR (youy = 30) OR (youy >= 50 AND youy <= 54)) AND youx = 10 THEN
		message = "You Hit A Wall"
		youx = youx + 1
	ELSEIF ((youy >= 17 AND youy <= 27) OR (youy = 34) OR (youy >= 31 AND youy <= 32) OR (youy >= 47 AND youy <= 49) OR (youy = 54) OR (youy >= 57)) AND youx = 11 THEN
		message = "You Hit A Wall"
		youx = youx + 1
	ELSEIF ((youy >= 2 AND youy <= 11) OR (youy >= 36 AND youy <= 43)) AND youx = 12 THEN
		message = "You Hit A Wall"
		youx = youx + 1
	ELSEIF (youy = 22 AND youx = 12) OR (youy = 4 AND youx = 13) OR (youy = 21 AND youx = 13) OR (youy = 3 AND youx = 14) OR (youy = 5 AND youx = 14) OR (youy = 23 AND youx = 13) THEN
		message = "You Hit A Barrier"
		youx = youx + 1
	ELSEIF youy = 22 AND youx = 13 THEN
		message = "You Went Through The Teleporter And End Up In Another Location"
		youx = 14
		youy = 4
	ELSEIF youy = 4 AND youx = 14 THEN
		message = "You Went Through The Teleporter And End Up In Another Location"
		youx = 13
		youy = 22
	ELSEIF ((youy >= 13 AND youy <= 16) OR (youy >= 28 AND youy <= 33) OR (youy >= 56 AND youy <= 63)) AND youx = 13 THEN
		message = "You Hit A Wall"
		youx = youx + 1
	ELSEIF ((youy >= 37 AND youy <= 55) OR (youy = 34) OR (youy = 60)) AND youx = 14 THEN
		message = "You Hit A Wall"
		youx = youx + 1
	ELSEIF ((youy >= 9 AND youy <= 13) OR (youy = 63) OR (youy >= 19 AND youy <= 21) OR (youy >= 23 AND youy <= 25)) AND youx = 15 THEN
		message = "You Hit A Wall"
		youx = youx + 1
	ELSEIF ((youy = 49) OR (youy >= 56 AND youy <= 58) OR (youy >= 52 AND youy <= 53) OR (youy >= 38 AND youy <= 46) OR (youy >= 2 AND youy <= 3) OR (youy = 30) OR (youy >= 5 AND youy <= 7) OR (youy >= 32 AND youy <= 36)) AND youx = 16 THEN
		message = "You Hit A Wall"
		youx = youx + 1
	ELSEIF ((youy >= 12 AND youy <= 15) OR (youy = 10) OR (youy = 29) OR (youy = 59) OR (youy = 64)) AND youx = 17 THEN
		message = "You Hit A Wall"
		youx = youx + 1
	ELSEIF ((youy >= 32 AND youy <= 39) OR (youy = 45) OR (youy = 21) OR (youy = 23)) AND youx = 18 THEN
		message = "You Hit A Wall"
		youx = youx + 1
	ELSEIF ((youy >= 3 AND youy <= 14) OR (youy >= 30 AND youy <= 31) OR (youy >= 42 AND youy <= 44) OR (youy >= 49 AND youy <= 55) OR (youy >= 57 AND youy <= 63)) AND youx = 19 THEN
		message = "You Hit A Wall"
		youx = youx + 1
	ELSEIF youy = 22 AND youx = 15 THEN
		IF key1 = "å" THEN
		message = "                                                    "
		ELSE
		message = "This Door Requires A å Key"
		youx = youx + 1
		END IF
	END IF
	IF youy = 12 AND youx = 12 THEN
		youx = youx + 1
		IF button = "œ" THEN
		message = "You Pull The Switch... And Deactivate The Force Fields"
		button = "—"
		force = "∞"
		switch = 1
		ELSEIF button = "—" THEN
		message = "You Pull The Switch... And Activate The Force Fields"
		force = "±"
		button = "œ"
		switch = 0
		END IF
	END IF

	END IF
	'wall checker end
	LOCATE youx, youy
	PRINT you
	'battle generator
	RANDOMIZE TIMER
	rndbattle% = INT(RND * 100) + 1
ELSEIF keys = "a" THEN
	moves = moves + 1
	oxygen = oxygen - 1
	PRINT " "
	youy = youy - 1
	IF level = 1 THEN
	IF youy = 8 AND youx = 16 THEN
		message = "You Hit A Wall"
		youy = youy + 1
	ELSEIF youy = 8 AND youx = 17 THEN
		message = "You Hit A Wall"
		youy = youy + 1
	ELSEIF youy = 10 AND youx = 18 THEN
		message = "You Hit A Wall"
		youy = youy + 1
	ELSEIF youy = 6 AND youx < 19 THEN 'Column 6 Walls
		message = "You Hit A Wall"
		youy = youy + 1
	ELSEIF youy = 16 AND youx = 12 THEN
		message = "You Hit A Wall"
		youy = youy + 1
	ELSEIF youy = 16 AND youx = 13 THEN
		message = "You Hit A Wall"
		youy = youy + 1
	ELSEIF youy = 16 AND youx = 15 THEN
		message = "You Hit A Wall"
		youy = youy + 1
	ELSEIF youy = 16 AND youx = 16 THEN
		message = "You Hit A Wall"
		youy = youy + 1
	ELSEIF youy = 16 AND youx = 17 THEN
		message = "You Hit A Wall"
		youy = youy + 1
	ELSEIF youy = 16 AND youx = 18 THEN
		message = "You Hit A Wall"
		youy = youy + 1
	ELSEIF youy = 16 AND youx = 19 THEN
		message = "You Hit A Wall"
		youy = youy + 1
	ELSEIF youy = 16 AND youx = 20 THEN
		message = "You Hit A Wall"
		youy = youy + 1
	ELSEIF youy = 18 AND youx = 16 THEN
		message = "You Hit A Wall"
		youy = youy + 1
	ELSEIF youy = 26 AND youx = 18 THEN
		message = "You Hit A Wall"
		youy = youy + 1
	ELSEIF youy = 26 AND youx = 19 THEN
		message = "You Hit A Wall"
		youy = youy + 1
	ELSEIF youy = 26 AND youx = 16 THEN
		message = "You Hit A Wall"
		youy = youy + 1
	ELSEIF youy = 26 AND youx = 15 THEN
		message = "You Hit A Wall"
		youy = youy + 1
	ELSEIF youy = 27 AND youx = 14 THEN
		message = "You Hit A Wall"
		youy = youy + 1
	ELSEIF youy = 25 AND youx = 13 THEN
		message = "You Hit A Wall"
		youy = youy + 1
	ELSEIF youy = 23 AND youx = 12 THEN
		message = "You Hit A Wall"
		youy = youy + 1
	ELSEIF youy = 25 AND youx = 11 THEN
		message = "You Hit A Wall"
		youy = youy + 1
	ELSEIF youy = 23 AND youx = 10 THEN
		message = "You Hit A Wall"
		youy = youy + 1
	ELSEIF youy = 23 AND youx = 9 THEN
		message = "You Hit A Wall"
		youy = youy + 1
	ELSEIF youy = 21 AND youx = 8 THEN
		message = "You Hit A Wall"
		youy = youy + 1
	ELSEIF youy = 21 AND youx = 11 THEN
		message = "You Hit A Wall"
		youy = youy + 1
	ELSEIF youy = 21 AND youx = 10 THEN
		message = "You Hit A Wall"
		youy = youy + 1
	ELSEIF youy = 21 AND youx = 9 THEN
		message = "You Hit A Wall"
		youy = youy + 1
	ELSEIF youy = 35 AND youx = 19 THEN
		message = "You Hit A Wall"
		youy = youy + 1
	ELSEIF youy = 38 AND youx = 20 THEN
		message = "You Hit A Wall"
		youy = youy + 1
	ELSEIF youy = 29 AND youx = 17 THEN
		message = "You Hit A Wall"
		youy = youy + 1
	ELSEIF youy = 29 AND youx = 16 THEN
		message = "You Hit A Wall"
		youy = youy + 1
	ELSEIF youy = 29 AND youx = 15 THEN
		message = "You Hit A Wall"
		youy = youy + 1
	ELSEIF youy = 29 AND youx = 14 THEN
		message = "You Hit A Wall"
		youy = youy + 1
	ELSEIF youy = 32 AND youx = 15 THEN
		message = "You Hit A Wall"
		youy = youy + 1
	ELSEIF youy = 32 AND youx = 17 THEN
		message = "You Hit A Wall"
		youy = youy + 1
	ELSEIF youy = 28 AND youx = 9 THEN
		message = "You Hit A Wall"
		youy = youy + 1
	ELSEIF youy = 31 AND youx = 10 THEN
		message = "You Hit A Wall"
		youy = youy + 1
	ELSEIF youy = 32 AND youx = 11 THEN
		message = "You Hit A Wall"
		youy = youy + 1
	ELSEIF youy = 24 AND youx = 17 THEN
		message = "You Hit A Wall"
		youy = youy + 1
	ELSEIF youy = 29 AND youx = 12 THEN
		message = "You Hit A Wall"
		youy = youy + 1
	ELSEIF youy = 34 AND youx = 9 THEN
		message = "You Hit A Wall"
		youy = youy + 1
	ELSEIF youy = 34 AND youx = 13 THEN
		message = "You Hit A Wall"
		youy = youy + 1
	ELSEIF youy = 34 AND youx = 11 THEN
		message = "You Hit A Wall"
		youy = youy + 1
	ELSEIF youy = 34 AND youx = 12 THEN
		message = "You Hit A Wall"
		youy = youy + 1
	ELSEIF youy = 40 AND youx = 20 THEN
		message = "You Hit A Wall"
		youy = youy + 1
	ELSEIF youy = 40 AND youx = 19 THEN
		message = "You Hit A Wall"
		youy = youy + 1
	ELSEIF youy = 40 AND youx = 18 THEN
		message = "You Hit A Wall"
		youy = youy + 1
	ELSEIF youy = 42 AND youx = 17 THEN
		message = "You Hit A Wall"
		youy = youy + 1
	ELSEIF youy = 44 AND youx = 19 THEN
		message = "You Hit A Wall"
		youy = youy + 1
	ELSEIF youy = 45 AND youx = 18 THEN
		message = "You Hit A Wall"
		youy = youy + 1
	ELSEIF youy = 36 AND youx = 9 THEN
		message = "You Hit A Wall"
		youy = youy + 1
	ELSEIF youy = 36 AND youx = 10 THEN
		message = "You Hit A Wall"
		youy = youy + 1
	ELSEIF youy = 36 AND youx = 11 THEN
		message = "You Hit A Wall"
		youy = youy + 1
	ELSEIF youy = 45 AND youx = 14 THEN
		message = "You Hit A Wall"
		youy = youy + 1
	ELSEIF youy = 45 AND youx = 13 THEN
		message = "You Hit A Wall"
		youy = youy + 1
	ELSEIF youy = 45 AND youx = 12 THEN
		message = "You Hit A Wall"
		youy = youy + 1
	ELSEIF youy = 45 AND youx = 11 THEN
		message = "You Hit A Wall"
		youy = youy + 1
	ELSEIF youy = 45 AND youx = 10 THEN
		message = "You Hit A Wall"
		youy = youy + 1
	ELSEIF youy = 43 AND youx = 12 THEN
		message = "You Hit A Wall"
		youy = youy + 1
	ELSE
		message = "                                                                    "
	END IF
	ELSEIF level = 2 THEN
	IF youy = 15 AND youx = 14 THEN
		IF switch = 0 THEN
		message = "A Force Field Is Blocking Your Way..."
		youy = youy + 1
		END IF
	END IF
IF ((youx = 14 AND youy = 11) OR (youx = 18 AND youy = 9) OR (youx = 17 AND youy = 10) OR (youx = 16 AND youy = 3) OR ((youx >= 13 AND youx <= 16) AND youy = 7) OR ((youx >= 12 AND youx <= 14) AND youy = 19) OR (youx = 19 AND youy = 14) OR ((youx >= 12 AND youx <= 13) AND youy = 16) OR ((youx >= 15 AND youx <= 16) AND youy = 16)) THEN
	message = "You Hit A Wall"
	youy = youy + 1
ELSEIF (youx = 19 AND youy = 20) THEN
	message = "You Hit A Wall"
	youy = youy + 1
ELSEIF ((youx = 20) OR (youx >= 17 AND youx <= 18) OR (youx = 15) OR (youx >= 8 AND youx <= 10)) AND youy = 21 THEN
	message = "You Hit A Wall"
	youy = youy + 1
ELSEIF ((youx = 9) OR (youx >= 12 AND youx <= 15)) AND youy = 25 THEN
	message = "You Hit A Wall"
	youy = youy + 1
ELSEIF ((youx >= 10 AND youx <= 11) OR (youx >= 18 AND youx <= 20)) AND youy = 28 THEN
	message = "You Hit A Wall"
	youy = youy + 1
ELSEIF ((youx = 12) OR (youx = 17)) AND youy = 29 THEN
	message = "You Hit A Wall"
	youy = youy + 1
ELSEIF ((youx >= 15 AND youx <= 16) OR (youx = 9)) AND youy = 30 THEN
	message = "You Hit A Wall"
	youy = youy + 1
ELSEIF ((youx = 10) OR (youx = 19)) AND youy = 31 THEN
	message = "You Hit A Wall"
	youy = youy + 1
ELSEIF ((youx = 11) OR (youx = 15)) AND youy = 32 THEN
	message = "You Hit A Wall"
	youy = youy + 1
ELSEIF ((youx >= 8 AND youx <= 11) OR (youx >= 13 AND youx <= 14)) AND youy = 34 THEN
	message = "You Hit A Wall"
	youy = youy + 1
ELSEIF ((youx >= 9 AND youx <= 11) OR (youx >= 15 AND youx <= 16)) AND youy = 36 THEN
	message = "You Hit A Wall"
	youy = youy + 1
ELSEIF youx = 20 AND youy = 38 THEN
	message = "You Hit A Wall"
	youy = youy + 1
ELSEIF ((youx >= 18 AND youx <= 20)) AND youy = 40 THEN
	message = "You Hit A Wall"
	youy = youy + 1
ELSEIF ((youx >= 17 AND youx <= 19)) AND youy = 44 THEN
	message = "You Hit A Wall"
	youy = youy + 1
ELSEIF ((youx >= 10 AND youx <= 13) OR (youx = 18)) AND youy = 45 THEN
	message = "You Hit A Wall"
	youy = youy + 1
ELSEIF youx = 12 AND youy = 43 THEN
	message = "You Hit A Wall"
	youy = youy + 1
ELSEIF ((youx >= 16 AND youx <= 20) OR (youx >= 8 AND youx <= 9)) AND youy = 47 THEN
	message = "You Hit A Wall"
	youy = youy + 1
ELSEIF ((youx >= 13 AND youx <= 16) OR (youx >= 18 AND youx <= 19) OR (youx = 11)) AND youy = 49 THEN
	message = "You Hit A Wall"
	youy = youy + 1
ELSEIF ((youx >= 17 AND youx <= 18)) AND youy = 51 THEN
	message = "You Hit A Wall"
	youy = youy + 1
ELSEIF youx = 16 AND youy = 53 THEN
	message = "You Hit A Wall"
	youy = youy + 1
ELSEIF ((youx >= 9 AND youx <= 14) OR (youx >= 17 AND youx <= 19)) AND youy = 55 THEN
	message = "You Hit A Wall"
	youy = youy + 1
ELSEIF ((youx = 10) OR (youx = 15) OR (youx = 18)) AND youy = 57 THEN
	message = "You Hit A Wall"
	youy = youy + 1
ELSEIF ((youx >= 15 AND youx <= 17)) AND youy = 59 THEN
	message = "You Hit A Wall"
	youy = youy + 1
ELSEIF youx = 14 AND youy = 60 THEN
	message = "You Hit A Wall"
	youy = youy + 1
ELSEIF youx = 9 AND youy = 61 THEN
	message = "You Hit A Wall"
	youy = youy + 1
ELSEIF ((youx >= 16 AND youx <= 18)) AND youy = 62 THEN
	message = "You Hit A Wall"
	youy = youy + 1
ELSEIF ((youx = 13) OR (youx = 19)) AND youy = 63 THEN
	message = "You Hit A Wall"
	youy = youy + 1
ELSEIF (youx = 14 AND youy = 3) OR (youx = 14 AND youy = 5) OR (youy = 21 AND youx = 13) OR (youy = 23 AND youx = 13) OR (youx = 12 AND youy = 22) OR (youx = 13 AND youy = 4) THEN
	message = "You Hit A Barrier"
	youy = youy + 1
END IF

	END IF
	'left wall checker end
	IF youy = 1 THEN
		youy = 2
	END IF
	LOCATE youx, youy
	PRINT you
	'battle generator
	RANDOMIZE TIMER
	rndbattle% = INT(RND * 100) + 1
ELSEIF keys = "d" THEN
	moves = moves + 1
	oxygen = oxygen - 1
	PRINT " "
	youy = youy + 1
	IF level = 1 THEN
	IF youy = 27 AND youx = 9 THEN
		IF wpn0t = "" THEN
			message = "You Found The Soul Cube!"
			weapon0 = "0"
			wpn0t = " "
		END IF
	'right wall checker start
	ELSEIF youy = 15 AND youx = 19 THEN
		message = "You Hit A Wall"
		youy = youy - 1
	ELSEIF youy = 15 AND youx = 20 THEN
		message = "You Hit A Wall"
		youy = youy - 1
	ELSEIF youy = 14 AND youx = 16 THEN
		message = "You Hit A Wall"
		youy = youy - 1
	ELSEIF youy = 14 AND youx = 17 THEN
		message = "You Hit A Wall"
		youy = youy - 1
	ELSEIF youy = 12 AND youx = 18 THEN
		message = "You Hit A Wall"
		youy = youy - 1
	ELSEIF youy = 8 AND youx = 15 THEN
		message = "You Hit A Wall"
		youy = youy - 1
	ELSEIF youy = 8 AND youx = 16 THEN
		message = "You Hit A Wall"
		youy = youy - 1
	ELSEIF youy = 8 AND youx = 17 THEN
		message = "You Hit A Wall"
		youy = youy - 1
	ELSEIF youy = 8 AND youx = 18 THEN
		message = "You Hit A Wall"
		youy = youy - 1
	ELSEIF youy = 18 AND youx = 13 THEN
		message = "You Hit A Wall"
		youy = youy - 1
	ELSEIF youy = 18 AND youx = 15 THEN
		message = "You Hit A Wall"
		youy = youy - 1
	ELSEIF youy = 18 AND youx = 16 THEN
		message = "You Hit A Wall"
		youy = youy - 1
	ELSEIF youy = 18 AND youx = 17 THEN
		message = "You Hit A Wall"
		youy = youy - 1
	ELSEIF youy = 18 AND youx = 19 THEN
		message = "You Hit A Wall"
		youy = youy - 1
	ELSEIF youy = 23 AND youx = 8 THEN
		message = "You Hit A Wall"
		youy = youy - 1
	ELSEIF youy = 23 AND youx = 9 THEN
		message = "You Hit A Wall"
		youy = youy - 1
	ELSEIF youy = 23 AND youx = 10 THEN
		message = "You Hit A Wall"
		youy = youy - 1
	ELSEIF youy = 23 AND youx = 11 THEN
		message = "You Hit A Wall"
		youy = youy - 1
	ELSEIF youy = 23 AND youx = 12 THEN
		message = "You Hit A Wall"
		youy = youy - 1
	ELSEIF youy = 26 AND youx = 16 THEN
		message = "You Hit A Wall"
		youy = youy - 1
	ELSEIF youy = 26 AND youx = 17 THEN
		message = "You Hit A Wall"
		youy = youy - 1
	ELSEIF youy = 26 AND youx = 18 THEN
		message = "You Hit A Wall"
		youy = youy - 1
	ELSEIF youy = 27 AND youx = 10 THEN
		message = "You Hit A Wall"
		youy = youy - 1
	ELSEIF youy = 27 AND youx = 12 THEN
		message = "You Hit A Wall"
		youy = youy - 1
	ELSEIF youy = 28 AND youx = 19 THEN
		message = "You Hit A Wall"
		youy = youy - 1
	ELSEIF youy = 29 AND youx = 13 THEN
		message = "You Hit A Wall"
		youy = youy - 1
	ELSEIF youy = 29 AND youx = 14 THEN
		message = "You Hit A Wall"
		youy = youy - 1
	ELSEIF youy = 29 AND youx = 15 THEN
		message = "You Hit A Wall"
		youy = youy - 1
	ELSEIF youy = 32 AND youx = 15 THEN
		message = "You Hit A Wall"
		youy = youy - 1
	ELSEIF youy = 32 AND youx = 16 THEN
		message = "You Hit A Wall"
		youy = youy - 1
	ELSEIF youy = 31 AND youx = 17 THEN
		message = "You Hit A Wall"
		youy = youy - 1
	ELSEIF youy = 34 AND youx = 11 THEN
		message = "You Hit A Wall"
		youy = youy - 1
	ELSEIF youy = 34 AND youx = 12 THEN
		message = "You Hit A Wall"
		youy = youy - 1
	ELSEIF youy = 34 AND youx = 14 THEN
		message = "You Hit A Wall"
		youy = youy - 1
	ELSEIF youy = 34 AND youx = 18 THEN
		message = "You Hit A Wall"
		youy = youy - 1
	ELSEIF youy = 31 AND youx = 11 THEN
		message = "You Hit A Wall"
		youy = youy - 1
	ELSEIF youy = 33 AND youx = 9 THEN
		message = "You Hit A Wall"
		youy = youy - 1
	ELSEIF youy = 28 AND youx = 9 THEN
		message = "You Hit A Wall"
		youy = youy - 1
	ELSEIF youy = 28 AND youx = 16 THEN
		message = "You Hit A Wall"
		youy = youy - 1
	ELSEIF youy = 36 AND youx = 9 THEN
		message = "You Hit A Wall"
		youy = youy - 1
	ELSEIF youy = 36 AND youx = 10 THEN
		message = "You Hit A Wall"
		youy = youy - 1
	ELSEIF youy = 36 AND youx = 11 THEN
		message = "You Hit A Wall"
		youy = youy - 1
	ELSEIF youy = 36 AND youx = 12 THEN
		message = "You Hit A Wall"
		youy = youy - 1
	ELSEIF youy = 37 AND youx = 20 THEN
		message = "You Hit A Wall"
		youy = youy - 1
	ELSEIF youy = 38 AND youx = 10 THEN
		message = "You Hit A Wall"
		youy = youy - 1
	ELSEIF youy = 40 AND youx = 19 THEN
		message = "You Hit A Wall"
		youy = youy - 1
	ELSEIF youy = 40 AND youx = 20 THEN
		message = "You Hit A Wall"
		youy = youy - 1
	ELSEIF youy = 42 AND youx = 17 THEN
		message = "You Hit A Wall"
		youy = youy - 1
	ELSEIF youy = 42 AND youx = 19 THEN
		message = "You Hit A Wall"
		youy = youy - 1
	ELSEIF youy = 44 AND youx = 18 THEN
		message = "You Hit A Wall"
		youy = youy - 1
	ELSEIF youy = 45 AND youx = 11 THEN
		message = "You Hit A Wall"
		youy = youy - 1
	ELSEIF youy = 45 AND youx = 12 THEN
		message = "You Hit A Wall"
		youy = youy - 1
	ELSEIF youy = 45 AND youx = 13 THEN
		message = "You Hit A Wall"
		youy = youy - 1
	ELSEIF youy = 47 AND youx = 9 THEN
		message = "You Hit A Wall"
		youy = youy - 1
	ELSEIF youy = 47 AND youx = 10 THEN
		message = "You Hit A Wall"
		youy = youy - 1
	ELSEIF youy = 47 AND youx = 11 THEN
		message = "You Hit A Wall"
		youy = youy - 1
	ELSEIF youy = 47 AND youx = 12 THEN
		message = "You Hit A Wall"
		youy = youy - 1
	ELSEIF youy = 47 AND youx = 13 THEN
		message = "You Hit A Wall"
		youy = youy - 1
	ELSEIF youy = 47 AND youx = 14 THEN
		message = "You Hit A Wall"
		youy = youy - 1
	ELSEIF youy = 47 AND youx = 15 THEN
		message = "You Hit A Wall"
		youy = youy - 1
	ELSEIF youy = 47 AND youx = 17 THEN
		message = "You Hit A Wall"
		youy = youy - 1
	ELSEIF youy = 47 AND youx = 18 THEN
		message = "You Hit A Wall"
		youy = youy - 1
	ELSEIF youy = 47 AND youx = 19 THEN
		message = "You Hit A Wall"
		youy = youy - 1
	ELSEIF youy = 47 AND youx = 20 THEN
		message = "You Hit A Wall"
		youy = youy - 1
	ELSEIF youy = 20 AND youx = 14 THEN
		message = "Man: To Leave This Area, Find 2 Small Keys"
		youy = youy - 1
	ELSE
		message = "                                                                    "
	END IF
	'right wall checker end
	IF youy = 65 THEN
		youy = youy - 1
	END IF
	ELSEIF level = 2 THEN
	IF youy = 54 AND youx = 12 THEN
		IF keyf2 = "ç" THEN
			message = "You Found A ç Key!"
			key2 = "ç"
			keyf2 = " "
		END IF
	END IF

	IF youy = 48 AND youx = 12 THEN
		IF switch = 0 THEN
		message = "A Force Field Is Blocking Your Way..."
		youy = youy - 1
		END IF
	END IF
	IF youy = 15 AND youx = 14 THEN
		IF switch = 0 THEN
		message = "A Force Field Is Blocking Your Way..."
		youy = youy - 1
		END IF
	END IF
	IF youy = 5 AND youx = 16 THEN
		message = "You Hit A Wall"
		youy = youy - 1
	ELSEIF youy = 12 AND youx = 17 THEN
		message = "You Hit A Wall"
		youy = youy - 1
	ELSEIF youy = 13 AND youx = 13 THEN
		message = "You Hit A Wall"
		youy = youy - 1
	ELSEIF youy = 14 AND youx = 16 THEN
		message = "You Hit A Wall"
		youy = youy - 1
	ELSEIF ((youx >= 14 AND youx <= 15) OR (youx = 17)) AND youy = 9 THEN
		message = "You Hit A Wall"
		youy = youy - 1
	ELSEIF ((youx >= 18 AND youx <= 20)) AND youy = 16 THEN
		message = "You Hit A Wall"
		youy = youy - 1
	ELSEIF ((youx >= 13 AND youx <= 15)) AND youy = 7 THEN
		message = "You Hit A Wall"
		youy = youy - 1
	ELSEIF ((youx >= 12 AND youx <= 15)) AND youy = 19 THEN
		message = "You Hit A Wall"
		youy = youy - 1
	ELSEIF ((youx >= 12 AND youx <= 14)) AND youy = 25 THEN
		message = "You Hit A Wall"
		youy = youy - 1
	ELSEIF ((youx >= 8 AND youx <= 9) OR (youx = 15) OR (youx = 20) OR (youx >= 17 AND youx <= 18)) AND youy = 23 THEN
		message = "You Hit A Wall"
		youy = youy - 1
	ELSEIF youx = 19 AND youy = 24 THEN
		message = "You Hit A Wall"
		youy = youy - 1
	ELSEIF youx = 10 AND youy = 27 THEN
		message = "You Hit A Wall"
		youy = youy - 1
	ELSEIF ((youx >= 12 AND youx <= 13) OR (youx >= 15 AND youx <= 16)) AND youy = 28 THEN
		message = "You Hit A Wall"
		youy = youy - 1
	ELSEIF ((youx >= 9 AND youx <= 10) OR (youx = 19)) AND youy = 30 THEN
		message = "You Hit A Wall"
		youy = youy - 1
	ELSEIF ((youx = 11) OR (youx = 18)) AND youy = 31 THEN
		message = "You Hit A Wall"
		youy = youy - 1
	ELSEIF ((youx >= 15 AND youx <= 16)) AND youy = 32 THEN
		message = "You Hit A Wall"
		youy = youy - 1
	ELSEIF ((youx = 9) OR (youx = 20)) AND youy = 33 THEN
		message = "You Hit A Wall"
		youy = youy - 1
	ELSEIF ((youx >= 10 AND youx <= 11) OR (youx = 14)) AND youy = 34 THEN
		message = "You Hit A Wall"
		youy = youy - 1
	ELSEIF ((youx >= 8 AND youx <= 12) OR (youx >= 14 AND youx <= 15)) AND youy = 36 THEN
		message = "You Hit A Wall"
		youy = youy - 1
	ELSEIF ((youx = 10) OR (youx = 16)) AND youy = 38 THEN
		message = "You Hit A Wall"
		youy = youy - 1
	ELSEIF youx = 19 AND youy = 42 THEN
		message = "You Hit A Wall"
		youy = youy - 1
	ELSEIF ((youx >= 19 AND youx <= 20)) AND youy = 40 THEN
		message = "You Hit A Wall"
		youy = youy - 1
	ELSEIF ((youx >= 17 AND youx <= 18)) AND youy = 44 THEN
		message = "You Hit A Wall"
		youy = youy - 1
	ELSEIF ((youx >= 11 AND youx <= 13)) AND youy = 45 THEN
		message = "You Hit A Wall"
		youy = youy - 1
	ELSEIF ((youx >= 16 AND youx <= 18)) AND youy = 51 THEN
		message = "You Hit A Wall"
		youy = youy - 1
	ELSEIF ((youx >= 9 AND youx <= 11) OR (youx = 13) OR (youx >= 17 AND youx <= 20)) AND youy = 47 THEN
		message = "You Hit A Wall"
		youy = youy - 1
	ELSEIF ((youx >= 15 AND youx <= 16) OR (youx >= 18 AND youx <= 19) OR (youx = 9)) AND youy = 49 THEN
		message = "You Hit A Wall"
		youy = youy - 1
	ELSEIF ((youx >= 16 AND youx <= 18)) AND youy = 51 THEN
		message = "You Hit A Wall"
		youy = youy - 1
	ELSEIF youx = 18 AND youy = 53 THEN
		message = "You Hit A Wall"
		youy = youy - 1
	ELSEIF ((youx = 11) OR (youx = 13)) AND youy = 54 THEN
		message = "You Hit A Wall"
		youy = youy - 1
	ELSEIF ((youx >= 16 AND youx <= 17) OR (youx = 12)) AND youy = 55 THEN
		message = "You Hit A Wall"
		youy = youy - 1
	ELSEIF ((youx >= 9 AND youx <= 11) OR (youx >= 18 AND youx <= 19) OR (youx = 15)) AND youy = 57 THEN
		message = "You Hit A Wall"
		youy = youy - 1
	ELSEIF ((youx >= 14 AND youx <= 17)) AND youy = 59 THEN
		message = "You Hit A Wall"
		youy = youy - 1
	ELSEIF ((youx >= 16 AND youx <= 18)) AND youy = 61 THEN
		message = "You Hit A Wall"
		youy = youy - 1
	ELSEIF youx = 15 AND youy = 62 THEN
		message = "You Hit A Wall"
		youy = youy - 1
	ELSEIF youx = 9 AND youy = 63 THEN
		message = "You Hit A Wall"
		youy = youy - 1
	ELSEIF ((youx >= 16 AND youx <= 17)) AND youy = 64 THEN
		message = "You Hit A Wall"
		youy = youy - 1

DIM level AS INTEGER
DIM button AS STRING
DIM switch AS INTEGER
DIM force AS STRING
DIM monsterturn AS INTEGER
dim quad as string
dim quadcounter as integer
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

'      00000000011111111112222222222333333333344444444445555555555666666666677777777778
'      12345678901234567890123456789012345678901234567890123456789012345678901234567890
PRINT "€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€             " '1
PRINT "€Battle Percentage: 10%                                         €  STATUS BAR " '2
PRINT "€Requirements To Exit: 2 White Keys                             €  ========== " '3
PRINT "€Exit Is Located As An 'X'                                      €     Items   " '4
PRINT "€Touch The 'X' To Win                                           €   "; key1; key2; armor; pack; quad;"    "'5
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
PRINT "Keys: a = left d = right w = up s = down x = quit " 'x: ; youx;  y: ; youy RND; rndbattle%
PRINT "Message: "; message
LOCATE youx, youy
PRINT you
LOCATE 24, 1
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
IF health <= 0 THEN
LOCATE 22, 1
        message = "You Lose                                 "
        PRINT "Message: "; message
        GOTO win
END IF
keys = INKEY$ 'INPUT "Enter A Direction: ", keys
IF keys = "s" THEN
        moves = moves + 1
        oxygen = oxygen - 1
        PRINT " "
        message = "                                                                    "
        youx = youx + 1
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
       'left wall checker begin
       ' IF youy = 24 AND youx = 12 THEN
       '         IF wpn9t = "" THEN
       '                 message = "You Found The BFG!"
       '                 weapon9 = "9"
       '                 wpn9t = " "
       '         END IF
       'END IF
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
        LOCATE youx, youy
        PRINT you
        'battle generator
                RANDOMIZE TIMER
        rndbattle% = INT(RND * 100) + 1
ELSEIF keys = "z" THEN
        pack = "0"
        armortype = 3
        maxhealth = 9999
        oxygen = oxygen + 999
        wpn0t = " "
        weapon1 = "1"
        weapon2 = "2"
        weapon3 = "3"
        weapon4 = "4"
        weapon5 = "5"
        weapon6 = "6"
        weapon7 = "7"
        weapon8 = "8"
        weapon9 = "9"
        weapon0 = "0"
        key1t = "true"
        key2t = "true"
        shells = 999
        bullet = 999
        grenade = 999
        rocket = 999
        slug = 999
        cell = 999
        soul = 999
        message = "CHEAT MODE ACTIVATED                                 "
ELSEIF keys = "x" THEN
        GOTO win
END IF
IF oxygen < 0 THEN
        oxygen = oxygen + 1
        health = health - 10
END IF

'Battle Sequence Generator
IF rndbattle% <= 10 THEN
        rndmonster% = INT(RND * 100) + 1 'This determines which monster is fought
        IF rndmonster% > 90 THEN
                message = "You Have Encountered A Battle!          "
                mhealth = 60
                maxmhealth = 60
                mname = "AIR MAN "
                rewardnum = 1
                mdmgmax = 20
                GOTO battle
        ELSEIF rndmonster% <= 8 THEN
                message = "You Have Encountered A Battle!          "
                mhealth = 50
                maxmhealth = 50
                mname = "HP DISTR"
                mdmgmax = 20
                rewardnum = 2
                GOTO battle
        ELSEIF (rndmonster% > 8 AND rndmonster% <= 16) THEN
                message = "You Have Encountered A Battle!          "
                mhealth = 100
                maxmhealth = 100
                mname = "PACK RAT"
                rewardnum = 3
                mdmgmax = 35
                GOTO battle
        ELSEIF (rndmonster% > 16 AND rndmonster% <= 24) THEN
                message = "You Have Encountered A Battle!          "
                mhealth = 500
                maxmhealth = 500
                mdmgmax = 800
                mname = "BFG GUY "
                rewardnum = 4
                GOTO battle
        ELSEIF (rndmonster% > 24 AND rndmonster% <= 32) THEN
                message = "You Have Encountered A Battle!          "
                mhealth = 150
                maxmhealth = 150
                mdmgmax = 35
                mname = "S.MEDIC "
                rewardnum = 5
                GOTO battle
        ELSEIF (rndmonster% > 32 AND rndmonster% <= 40) THEN
                message = "You Have Encountered A Battle!          "
                mhealth = 180
                maxmhealth = 180
                mdmgmax = 100
                mname = "GLADIATR"
                rewardnum = 6
                GOTO battle
        ELSEIF (rndmonster% > 40 AND rndmonster% <= 48) THEN
                message = "You Have Encountered A Battle!          "
                mhealth = 160
                maxmhealth = 160
                mname = "MANCUBUS"
                mdmgmax = 100
                rewardnum = 7
                GOTO battle
        ELSEIF (rndmonster% > 48 AND rndmonster% <= 56) THEN
                message = "You Have Encountered A Battle!          "
                mhealth = 90
                maxmhealth = 90
                mdmgmax = 80
                mname = "GUNNER  "
                rewardnum = 8
                GOTO battle
        ELSEIF (rndmonster% > 56 AND rndmonster% <= 64) THEN
                message = "You Have Encountered A Battle!          "
                mhealth = 80
                mdmgmax = 60
                maxmhealth = 80
                mname = "ENFORCER"
                rewardnum = 9
                GOTO battle
        ELSEIF (rndmonster% > 64 AND rndmonster% <= 72) THEN
                message = "You Have Encountered A Battle!          "
                mhealth = 100
                maxmhealth = 100
                mdmgmax = 80
                mname = "HYPERMAN"
                rewardnum = 10
                GOTO battle
        ELSEIF (rndmonster% > 72 AND rndmonster% <= 80) THEN
                message = "You Have Encountered A Battle!          "
                mhealth = 200
                mdmgmax = 200
                maxmhealth = 90
                mname = "HVYGUARD"
                rewardnum = 11
                GOTO battle
        ELSEIF (rndmonster% > 80 AND rndmonster% <= 85) THEN
                message = "You Have Encountered A Battle!          "
                mhealth = 50
                maxmhealth = 50
                mname = "LGTGUARD"
                mdmgmax = 30
                rewardnum = 12
                GOTO battle
        ELSEIF (rndmonster% > 85 AND rndmonster% <= 90) THEN
                message = "You Have Encountered A Battle!          "
                mhealth = 100
                mdmgmax = 70
                maxmhealth = 100
                mname = "MEDGUARD"
                rewardnum = 13
                GOTO battle
        END IF
END IF
'End Battle Sequence Generator
GOTO battleend
battleend:
LOOP
'battle
battle:

DO
CLS
IF health > maxhealth THEN
        health = maxhealth
END IF
IF mhealth / maxmhealth >= .9 THEN
mhealthcounter = "≤≤≤≤≤≤≤≤≤≤"
ELSEIF (mhealth / maxmhealth) >= .8 AND (mhealth / maxmhealth) < .9 THEN
mhealthcounter = "≤≤≤≤≤≤≤≤≤±"
ELSEIF (mhealth / maxmhealth) >= .7 AND (mhealth / maxmhealth) < .8 THEN
mhealthcounter = "≤≤≤≤≤≤≤≤±±"
ELSEIF (mhealth / maxmhealth) >= .6 AND (mhealth / maxmhealth) < .7 THEN
mhealthcounter = "≤≤≤≤≤≤≤±±±"
ELSEIF (mhealth / maxmhealth) >= .5 AND (mhealth / maxmhealth) < .6 THEN
mhealthcounter = "≤≤≤≤≤≤±±±±"
ELSEIF (mhealth / maxmhealth) >= .4 AND (mhealth / maxmhealth) < .5 THEN
mhealthcounter = "≤≤≤≤≤±±±±±"
ELSEIF (mhealth / maxmhealth) >= .3 AND (mhealth / maxmhealth) < .4 THEN
mhealthcounter = "≤≤≤≤±±±±±±"
ELSEIF (mhealth / maxmhealth) >= .2 AND (mhealth / maxmhealth) < .3 THEN
mhealthcounter = "≤≤≤±±±±±±±"
ELSEIF (mhealth / maxmhealth) >= .1 AND (mhealth / maxmhealth) < .2 THEN
mhealthcounter = "≤≤±±±±±±±±"
ELSEIF (mhealth / maxmhealth) > 0 AND (mhealth / maxmhealth) < .1 THEN
mhealthcounter = "≤±±±±±±±±±"
END IF
'      00000000011111111112222222222333333333344444444445555555555666666666677777777778
'      12345678901234567890123456789012345678901234567890123456789012345678901234567890
PRINT "€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€             " '1
PRINT "€                                                               €  STATUS BAR " '2
PRINT "€                           BATTLE!                             €  ========== " '3
PRINT "€                           -------                             €     Items   " '4
PRINT "€                                                               €   "; key1; key2; armor; pack; quad;"     "'5
PRINT "€   Monster : "; mname; "                                          €    Oxygen   "'6
PRINT "€   Health  : "; mhealthcounter; "                                        €   "; oxygen; "     "'7
PRINT "€                                                               €    Health   "'8
PRINT "€                                                               €    "; health; "    "'9
PRINT "€                                                               €    Weapon   " '10
PRINT "€                                                               €  "; weapon1; weapon2; weapon3; weapon4; weapon5; weapon6; weapon7; weapon8; weapon9; weapon0'11
PRINT "€                                                               €     Ammo    " '12
PRINT "€                                                               € Shells:"; shells; "  " '13"
PRINT "€   Quad Counter: ";quadcounter;"                                             € Bullet:"; bullet; "  " '14"
PRINT "€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ Grnade:"; grenade; "  "'15
PRINT "€ 1=Shotgun  6=Rocket L f=Melee    q=Quad Dmg                   € Rocket:"; rocket; "  "'16
PRINT "€ 2=Supr S.G 7=HprBlstr h=-Oxy4+HP                              € Slugs :"; slug; "  "'17
PRINT "€ 3=MachineG 8=Railgun  r=Run(50%)                              € Cells :"; cell; "  "'18
PRINT "€ 4=Chaingun 9=BFG      g=Grenade                               € Soul C:"; soul; "    "'19
PRINT "€ 5=GrenadeL 0=SoulCube x=Quit                                  € "'  Monster HP"'20
PRINT "€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€   "'; mhealth'21
PRINT "                                                       "
PRINT "Message:"; message
keys2 = INKEY$ 'INPUT "Enter A Command: ", keys
IF health <= 0 THEN
LOCATE 23, 1
        message = "You Lose                                 "
        PRINT "Message: "; message
        GOTO win
END IF

IF keys2 = "x" THEN
        GOTO win
elseif keys2 = "q" Then
	if quad = "T" then
	quad = " "
	quadcounter = 5
	message = "You Use The Quad Damage			"
	monsterturn = 1
	else
	message = "You Don't Have This Item			"
	end if
ELSEIF keys2 = "r" THEN
        IF boss = 0 THEN
        rndhit% = INT(RND * 100) + 1
        IF rndhit% < 20 THEN
                message = "You Fail To Escape                  "
               monsterturn = 1
        ELSEIF rndhit% >= 20 THEN
                message = "You Escaped Successfully             "
                GOTO battleend
        END IF
        ELSEIF boss = 1 THEN
                message = "You Fail To Escape                 "
                monsterturn = 1
        END IF
ELSEIF keys2 = "f" THEN
        rndhit% = INT(RND * 100) + 1
        IF rndhit% < 20 THEN
                message = "You Punch The Monster                         "
               monsterturn = 1
        ELSEIF rndhit% >= 20 THEN
                message = "You Punch The Monster                         "
		if quadcounter > 0 then
		mhealth = mhealth - 40
		else
                mhealth = mhealth - 10
		end if
               monsterturn = 1
        END IF
ELSEIF keys2 = "h" THEN
        message = "You Heal 25 Health At A Cost Of 10 Oxygen  "
        health = health + 25
        oxygen = oxygen - 10
ELSEIF keys2 = "g" THEN
        IF grenade >= 1 THEN
                grenade = grenade - 1
                rndhit% = INT(RND * 40) + 1
                message = "You Use The Hand Grenade           "
		if quadcounter > 0 then
                mhealth = mhealth - (rndhit% * 2)*4
		else
                mhealth = mhealth - (rndhit% * 2)
		end if
                monsterturn = 1
        ELSE
                message = "You Do Not Have Any Grenades.        "
        END IF
ELSEIF keys2 = "1" THEN
        IF weapon1 = "1" THEN
                IF shells >= 1 THEN
                        shells = shells - 1
                        rndhit% = INT(RND * 100) + 1
                        IF rndhit% < 40 THEN
                                message = "You Use The Shotgun          "
                                monsterturn = 1
                        ELSEIF rndhit% >= 40 THEN
                                message = "You Use The Shotgun          "
                                rndpellet% = INT(RND * 8) + 1
                                mhealth = mhealth - (rndpellet% * 6)
                                monsterturn = 1
                        END IF
                        monsterturn = 1
                ELSE
                        message = "You Do Not Have Enough Ammo For This Weapon."
                END IF
        ELSE
                message = "You Do Not Have This Weapon.             "
        END IF
ELSEIF keys2 = "2" THEN
        IF weapon2 = "2" THEN
                IF shells >= 2 THEN
                        shells = shells - 2
                        rndhit% = INT(RND * 100) + 1
                        IF rndhit% < 25 THEN
                                message = "You Use The Super Shotgun            "
                                monsterturn = 1
                        ELSEIF rndhit% >= 25 THEN
                                message = "You Use The Super Shotgun            "
                                rndpellet% = INT(RND * 12) + 1
                                mhealth = mhealth - (rndpellet% * 7)
                                monsterturn = 1
                        END IF
                ELSE
                        message = "You Do Not Have Enough Ammo For This Weapon."
                END IF
        ELSE
                message = "You Do Not Have This Weapon.             "
        END IF
ELSEIF keys2 = "3" THEN
        IF weapon3 = "3" THEN
                IF bullet >= 10 THEN
                        bullet = bullet - 10
                        rndhit% = INT(RND * 10) + 1
                        message = "You Use The Machinegun               "
                        mhealth = mhealth - (rndhit% * 3)
                        monsterturn = 1
                ELSEIF (bullet > 0 AND bullet < 10) THEN
                        bullet = bullet - bullet
                        rndhit% = INT(RND * bullet) + 1
                        message = "You Use The Machinegun               "
                        mhealth = mhealth - (rndhit% * 3)
                        monsterturn = 1
                ELSE
                        message = "You Do Not Have Enough Ammo For This Weapon."
                END IF
        ELSE
                message = "You Do Not Have This Weapon.             "
        END IF
ELSEIF keys2 = "4" THEN
        IF weapon4 = "4" THEN
                IF bullet >= 20 THEN
                        bullet = bullet - 20
                        rndhit% = INT(RND * 20) + 1
                        message = "You Use The Chaingun                 "
                        mhealth = mhealth - (rndhit% * 3)
                        monsterturn = 1
                ELSEIF (bullet > 0 AND bullet < 20) THEN
                        bullet = bullet - bullet
                        rndhit% = INT(RND * bullet) + 1
                        message = "You Use The Chaingun                 "
                        mhealth = mhealth - (rndhit% * 3)
                        monsterturn = 1
                ELSE
                        message = "You Do Not Have Enough Ammo For This Weapon."
                END IF
        ELSE
                message = "You Do Not Have This Weapon.             "
        END IF
ELSEIF keys2 = "5" THEN
        IF weapon5 = "5" THEN
                IF grenade >= 1 THEN
                        grenade = grenade - 1
                        rndhit% = INT(RND * 30) + 1
                        message = "You Use The Grenade Launcher         "
                        mhealth = mhealth - (rndhit% * 3)
                        monsterturn = 1
                ELSE
                        message = "You Do Not Have Enough Ammo For This Weapon."
                END IF
        ELSE
                message = "You Do Not Have This Weapon.             "
        END IF
ELSEIF keys2 = "6" THEN
        IF weapon6 = "6" THEN
                IF rocket >= 1 THEN
                        rocket = rocket - 1
                        rndhit% = INT(RND * 50) + 1
                        message = "You Use The Rocket Launcher          "
                        mhealth = mhealth - (rndhit% * 4)
                        monsterturn = 1
                ELSE
                        message = "You Do Not Have Enough Ammo For This Weapon."
                END IF
        ELSE
                message = "You Do Not Have This Weapon.                           "
        END IF
ELSEIF keys2 = "7" THEN
        IF weapon7 = "7" THEN
                IF cell >= 5 THEN
                        cell = cell - 5
                        rndhit% = INT(RND * 5) + 1
                        message = "You Use The Hyperblaster              "
                        mhealth = mhealth - (rndhit% * 20)
                        monsterturn = 1
                ELSEIF (cell > 0 AND cell < 5) THEN
                        cell = cell - cell
                        rndhit% = INT(RND * cell) + 1
                        message = "You Use The Hyperblaster                     "
                        mhealth = mhealth - (rndhit% * 20)
                        monsterturn = 1
                ELSE
                        message = "You Do Not Have Enough Ammo For This Weapon."
                END IF
        ELSE
                message = "You Do Not Have This Weapon.                         "
        END IF
ELSEIF keys2 = "8" THEN
        IF weapon8 = "8" THEN
                IF slug >= 1 THEN
                        slug = slug - 1
                        rndhit% = INT(RND * 100) + 1
                        IF rndhit% > 25 THEN
                                message = "You Use The Railgun          "
                                mhealth = mhealth - 100
                                monsterturn = 1
                        ELSEIF rndhit% <= 25 THEN
                                message = "You Use The Railgun          "
                                monsterturn = 1
                        END IF
                ELSE
                        message = "You Do Not Have Enough Ammo For This Weapon."
                END IF
        ELSE
                message = "You Do Not Have This Weapon.             "
        END IF
ELSEIF keys2 = "9" THEN
        IF weapon9 = "9" THEN
                IF cell >= 50 THEN
                cell = cell - 50
                rndhit% = INT(RND * 100) + 1
                        message = "You Use The BFG              "
                        mhealth = mhealth - (rndhit% * 10)
                        monsterturn = 1
                ELSE
                message = "You Do Not Have Enough Ammo For This Weapon."
                END IF
        ELSE
        message = "You Do Not Have This Weapon.             "
        END IF
ELSEIF keys2 = "0" THEN
        IF weapon0 = "0" THEN
                IF soul = 5 THEN
                SLEEP 1
                message = "You Use The Soul Cube.....And Gain Full Health"
                soul = soul - 5
                        IF boss = 0 THEN
                        mhealth = 0
                        ELSEIF boss = 1 THEN
                        mhealth = mhealth - 1000
                        monsterturn = 1
                        END IF
                health = maxhealth
                soulgain = 0
                ELSE
                message = "You Do Not Have Enough Ammo For This Weapon."
                END IF
        ELSE
        message = "You Do Not Have This Weapon.             "
        END IF
END IF
FOR i = 1 TO 8000
NEXT i

IF monsterturn = 1 THEN
LOCATE 23, 9
PRINT message
SLEEP 1
message = "The Monster Attacks You...                  "
LOCATE 23, 9
PRINT message
rndhit% = INT(RND * mdmgmax) + 1
IF armortype = 1 THEN
rndhit% = rndhit% * .85
health = health - rndhit%
ELSEIF armortype = 2 THEN
rndhit% = rndhit% * .65
health = health - rndhit%
ELSEIF armortype = 3 THEN
rndhit% = rndhit% * .4
health = health - rndhit%
ELSE
health = health - rndhit%
END IF
SLEEP 1
monsterturn = 0
END IF

LOOP UNTIL mhealth <= 0


'REWARD
IF rewardnum = 0 THEN
IF level = 1 THEN
        message = "You Win! Now Entering Level 2...                            "
ELSEIF level = 2 THEN
        message = "You Win!                                                     "
        LOCATE 23, 1
        PRINT "Message: "; message
        SLEEP 1
        SLEEP 1
        GOTO win
END IF
LOCATE 23, 1
PRINT "Message: "; message
SLEEP 1
SLEEP 1
GOTO level2
ELSEIF rewardnum = 1 THEN
message = "You Gain 2000 Pure Oxygen From The Battle"
oxygen = oxygen + 2000
ELSEIF rewardnum = 2 THEN
message = "You Find A Medikit (+100) From The Battle"
health = health + 100
oxygen = oxygen + 200
ELSEIF rewardnum = 3 THEN
oxygen = oxygen + 200
message = "You Find An Ammo Belt From The Battle"
pack = "0"
shells = shells + 10
bullet = bullet + 50
grenade = grenade + 5
rocket = rocket + 5
slug = slug + 10
cell = cell + 50
ELSEIF rewardnum = 4 THEN
oxygen = oxygen + 200
IF weapon9 = " " THEN
message = "You Find A BFG From The Battle"
weapon9 = "9"
cell = cell + 50
ELSE
message = "You Find Cells From The Battle"
cell = cell + 50
END IF
ELSEIF rewardnum = 5 THEN
oxygen = oxygen + 200
message = "You Find An Adrenaline (+500MAXHP) From The Battle"
maxhealth = maxhealth + 500
ELSEIF rewardnum = 6 THEN
        oxygen = oxygen + 200
        IF weapon8 = " " THEN
        message = "You Find A Railgun From The Battle"
        weapon8 = "8"
        slug = slug + 10
        ELSE
        message = "You Find Slugs From The Battle"
        slug = slug + 10
        END IF
ELSEIF rewardnum = 7 THEN
        oxygen = oxygen + 200
        IF weapon6 = " " THEN
        message = "You Find A Rocket Launcher From The Battle"
        weapon6 = "6"
        rocket = rocket + 5
        ELSE
        message = "You Find Rockets From The Battle"
        rocket = rocket + 5
        END IF
ELSEIF rewardnum = 8 THEN
        oxygen = oxygen + 200
        IF weapon5 = " " THEN
        message = "You Find A Grenade Launcher From The Battle"
        weapon5 = "5"
        grenade = grenade + 5
        ELSE
        message = "You Find Grenades From The Battle"
        grenade = grenade + 5
        END IF
ELSEIF rewardnum = 9 THEN
        oxygen = oxygen + 200
        IF weapon4 = " " THEN
        message = "You Find A Chaingun From The Battle"
        weapon4 = "4"
        bullet = bullet + 50
        ELSE
        message = "You Find Bullets From The Battle"
        bullet = bullet + 50
        END IF
ELSEIF rewardnum = 10 THEN
        oxygen = oxygen + 200
        IF weapon7 = " " THEN
        message = "You Find A Hyperblaster From The Battle"
        weapon7 = "7"
        cell = cell + 50
        ELSE
        message = "You Find Cells From The Battle"
        cell = cell + 50
        END IF
ELSEIF rewardnum = 11 THEN
        oxygen = oxygen + 200
        IF armortype < 3 THEN
        armortype = 3
        message = "You Find A Body Armor From The Battle"
        ELSE
        health = health + 100
        message = "You Gain 100 Health From The Battle"
        END IF
ELSEIF rewardnum = 12 THEN
        oxygen = oxygen + 200
        IF armortype < 1 THEN
        armortype = 1
        message = "You Find A Jacket Armor From The Battle"
        ELSE
        health = health + 25
        message = "You Gain 25 Health From The Battle"
        END IF
ELSEIF rewardnum = 13 THEN
        oxygen = oxygen + 200
        IF armortype < 2 THEN
        armortype = 2
        message = "You Find A Combat Armor From The Battle"
        ELSE
        health = health + 50
        message = "You Find A Combat Armor From The Battle"
        END IF
END IF

'END REWARD
IF weapon0 = "0" THEN
        IF soulgain = 1 THEN
        soul = soul + 1
        END IF
END IF
IF level = 1 THEN
GOTO battleend
ELSEIF level = 2 THEN
GOTO battleend2
END IF
'end battle

'level 2
level2:
level = 2
key1 = " "
key2 = " "
keyf1 = "å"
keyf2 = "ç"
youx = 19
youy = 22
'd 20 r 80
CLS
DO
rndbattle% = 100
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
IF oxygen >= 9999 THEN
        oxygen = 9999
END IF

LOCATE 1, 1
'cls

'      00000000011111111112222222222333333333344444444445555555555666666666677777777778
'y     12345678901234567890123456789012345678901234567890123456789012345678901234567890
PRINT "€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€             " '1
PRINT "€Level Type: Medium                                             €  STATUS BAR " '2
PRINT "€Requirements To Exit: 2 White Keys                             €  ========== " '3
PRINT "€Exit Is Located As An 'X'                                      €     Items   " '4
PRINT "€Touch The 'X' To Win                                           €   "; key1; key2; armor; pack; quad;"     "'5
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
PRINT "Keys: a = left d = right w = up s = down x = quit  x: "; youx; " y: "; youy; "           "
PRINT "Message: "; message
LOCATE youx, youy
PRINT you
LOCATE 24, 1
IF youx = 19 AND youy = 2 THEN
LOCATE 23, 1
        message = "You Have Encountered A Battle!          "
        mhealth = 5000
        maxmhealth = 5000
        mname = "BOSS    "
        mdmgmax = 800
        boss = 1
        rewardnum = 0
        GOTO battle
ELSEIF oxygen = 0 THEN
LOCATE 23, 1
        message = "You Lose                                 "
        PRINT "Message: "; message
        GOTO win
END IF
keys = INKEY$ 'INPUT "Enter A Direction: ", keys
IF keys = "s" THEN
        moves = moves + 1
        oxygen = oxygen - 1
        PRINT " "
        message = "                                                                    "
        youx = youx + 1
        'key checker
        IF youy = 48 AND youx = 9 THEN
                IF keyf1 = "å" THEN
                        message = "You Found A å Key!"
                        keyf1 = " "
                        key1 = "å"
                END IF
        END IF
        'key checker end
        IF youx = 21 THEN
                youx = 20
        ELSEIF ((youy >= 33 AND youy <= 38) OR (youy = 21) OR (youy = 23)) AND youx = 20 THEN
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
        END IF 'x=9 y=49-55,57-61,63+
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

        'wall checker begin
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
        'wall checker end 'x=12 y=12s
        LOCATE youx, youy
        PRINT you
        'battle generator
        RANDOMIZE TIMER
        rndbattle% = INT(RND * 100) + 1

ELSEIF keys = "a" THEN
        moves = moves + 1
        oxygen = oxygen - 1
        PRINT " "
        message = "                                                                    "
        youy = youy - 1
        'left wall checker begin
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
        message = "                                                                    "
        youy = youy + 1
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
        ELSEIF (youx = 14 AND youy = 3) OR (youx = 14 AND youy = 5) OR (youy = 21 AND youx = 13) OR (youy = 23 AND youx = 13) OR (youx = 12 AND youy = 22) OR (youx = 13 AND youy = 4) THEN
                message = "You Hit A Barrier"
                youy = youy - 1
        END IF
        'right wall checker end
        IF youy = 65 THEN
                youy = youy - 1
        END IF

        LOCATE youx, youy
        PRINT you
        'battle generator
        RANDOMIZE TIMER
        rndbattle% = INT(RND * 100) + 1

ELSEIF keys = "z" THEN
        key1 = "å"
        keyf1 = " "
        keyf2 = " "
        key2 = "ç"
        pack = "0"
        armortype = 3
        maxhealth = 9999
        oxygen = oxygen + 999
        weapon1 = "1"
        weapon2 = "2"
        weapon3 = "3"
        weapon4 = "4"
        weapon5 = "5"
        weapon6 = "6"
        weapon7 = "7"
        weapon8 = "8"
        weapon9 = "9"
        weapon0 = "0"
        shells = 999
        bullet = 999
        grenade = 999
        rocket = 999
        slug = 999
        cell = 999
        soul = 999
        message = "CHEAT MODE ACTIVATED                                 "
ELSEIF keys = "x" THEN
GOTO win
END IF
'Battle Sequence Generator
IF rndbattle% <= 10 THEN
        rndmonster% = INT(RND * 100) + 1 'This determines which monster is fought
        IF rndmonster% > 90 THEN
                message = "You Have Encountered A Battle!          "
                mhealth = 60
                maxmhealth = 60
                mname = "AIR MAN "
                rewardnum = 1
                mdmgmax = 20
                GOTO battle
        ELSEIF rndmonster% <= 8 THEN
                message = "You Have Encountered A Battle!          "
                mhealth = 50
                maxmhealth = 50
                mname = "HP DISTR"
                mdmgmax = 20
                rewardnum = 2
                GOTO battle
        ELSEIF (rndmonster% > 8 AND rndmonster% <= 16) THEN
                message = "You Have Encountered A Battle!          "
                mhealth = 100
                maxmhealth = 100
                mname = "PACK RAT"
                rewardnum = 3
                mdmgmax = 35
                GOTO battle
        ELSEIF (rndmonster% > 16 AND rndmonster% <= 24) THEN
                message = "You Have Encountered A Battle!          "
                mhealth = 500
                maxmhealth = 500
                mdmgmax = 800
                mname = "BFG GUY "
                rewardnum = 4
                GOTO battle
        ELSEIF (rndmonster% > 24 AND rndmonster% <= 32) THEN
                message = "You Have Encountered A Battle!          "
                mhealth = 150
                maxmhealth = 150
                mdmgmax = 35
                mname = "S.MEDIC "
                rewardnum = 5
                GOTO battle
        ELSEIF (rndmonster% > 32 AND rndmonster% <= 40) THEN
                message = "You Have Encountered A Battle!          "
                mhealth = 180
                maxmhealth = 180
                mdmgmax = 100
                mname = "GLADIATR"
                rewardnum = 6
                GOTO battle
        ELSEIF (rndmonster% > 40 AND rndmonster% <= 48) THEN
                message = "You Have Encountered A Battle!          "
                mhealth = 160
                maxmhealth = 160
                mname = "MANCUBUS"
                mdmgmax = 100
                rewardnum = 7
                GOTO battle
        ELSEIF (rndmonster% > 48 AND rndmonster% <= 56) THEN
                message = "You Have Encountered A Battle!          "
                mhealth = 90
                maxmhealth = 90
                mdmgmax = 80
                mname = "GUNNER  "
                rewardnum = 8
                GOTO battle
        ELSEIF (rndmonster% > 56 AND rndmonster% <= 64) THEN
                message = "You Have Encountered A Battle!          "
                mhealth = 80
                mdmgmax = 60
                maxmhealth = 80
                mname = "ENFORCER"
                rewardnum = 9
                GOTO battle
        ELSEIF (rndmonster% > 64 AND rndmonster% <= 72) THEN
                message = "You Have Encountered A Battle!          "
                mhealth = 100
                maxmhealth = 100
                mdmgmax = 80
                mname = "HYPERMAN"
                rewardnum = 10
                GOTO battle
        ELSEIF (rndmonster% > 72 AND rndmonster% <= 80) THEN
                message = "You Have Encountered A Battle!          "
                mhealth = 200
                mdmgmax = 200
                maxmhealth = 90
                mname = "HVYGUARD"
                rewardnum = 11
                GOTO battle
        ELSEIF (rndmonster% > 80 AND rndmonster% <= 85) THEN
                message = "You Have Encountered A Battle!          "
                mhealth = 50
                maxmhealth = 50
                mname = "LGTGUARD"
                mdmgmax = 30
                rewardnum = 12
                GOTO battle
        ELSEIF (rndmonster% > 85 AND rndmonster% <= 90) THEN
                message = "You Have Encountered A Battle!          "
                mhealth = 100
                mdmgmax = 70
                maxmhealth = 100
                mname = "MEDGUARD"
                rewardnum = 13
                GOTO battle
        END IF
END IF
'End Battle Sequence Generator
GOTO battleend2
battleend2:
LOOP

win:
CLS


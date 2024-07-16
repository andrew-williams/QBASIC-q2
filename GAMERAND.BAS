CLS

FOR i = 1 TO 10
        RANDOMIZE TIMER
        rndbattle% = INT(RND * 100) + 1
        PRINT "Battle Generator Number: "; rndbattle%
        SLEEP 1
        IF rndbattle% <= 20 THEN
                PRINT "BATTLE"
                PRINT "MONSTER TYPE RANDOM GENERATOR"
                rndmonster% = INT(RND * 100) + 1
                PRINT "1-50 = MONSTER A"
                PRINT "51-100 = MONSTER B"
                PRINT "rndmonster% = "; rndmonster%
                IF rndmonster% > 50 THEN
                        PRINT "MONSTER = MONSTER B"
                        ELSEIF rndmonster <= 50 THEN
                        PRINT "MONSTER = MONSTER A"
                END IF
        END IF
NEXT i



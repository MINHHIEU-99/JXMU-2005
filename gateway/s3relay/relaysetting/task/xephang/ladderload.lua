	-- chiÕn dÞch hÖ thèng

	-- Fanghao_Wu 2004-12-6

	function GameSvrConnected(dwGameSvrIP)

	SyncAllLadder(dwGameSvrIP)

	end;

	function GameSvrReady(dwGameSvrIP)

	end

	function TaskShedule()

	-- thiÕt trÝ ph­¬ng ¸n tªn gäi

	TaskName( "Relay b¶ng xÕp h¹ng" );

	-- 10 phót mét lÇn

	-- TaskInterval( 2440 );
	TaskInterval( 1440 ); -- cËp nhËt l¹i c¸c id b¶ng x?p h¹ng trong 1 ngµy

	-- thiÕt trÝ g©y ra sè lÇn, 0 biÓu thÞ v« h¹n sè lÇn

	TaskCountLimit( 0 );

	-- ph¸t ra khëi ®éng tin tøc

	OutputMsg( " ========================================================================================" );
	OutputMsg( "                            Ladder startup. . . 10.001 -> 10500" );

	-- for i=10001, 10300 do
	for i=10001, 10500 do

	LoadLadder(i)

	end

	end

	function TaskContent()

	-- OutputMsg( "SDBLadder Loaded" );
	OutputMsg( "KHOI DONG LAI BANG XEP HANG" );
	-- OutputMsg( " ========================================================================================");	OutputMsg( " ");
	-- OutputMsg( "                               Server HKMP Edit By PGaming  ");
	-- OutputMsg( " ");
	-- OutputMsg( " ========================================================================================");
	OutputMsg("\n*********************************************************************** Chiu Trach Nhiem San Xuat va Phat Hanh ********************************************************************************")
OutputMsg("#") 
OutputMsg("#")                                                                                                                                                                                     
OutputMsg("#            JJJJJJJJJJJ     XXXXXXX       XXXXXXX     MMMMMMMM               MMMMMMMM     UUUUUUUU     UUUUUUUU                  VVVVVVVV           VVVVVVVV     NNNNNNNN        NNNNNNNN")
OutputMsg("#            J:::::::::J     X:::::X       X:::::X     M:::::::M             M:::::::M     U::::::U     U::::::U                  V::::::V           V::::::V     N:::::::N       N::::::N")
OutputMsg("#            J:::::::::J     X:::::X       X:::::X     M::::::::M           M::::::::M     U::::::U     U::::::U                  V::::::V           V::::::V     N::::::::N      N::::::N")
OutputMsg("#            JJ:::::::JJ     X::::::X     X::::::X     M:::::::::M         M:::::::::M     UU:::::U     U:::::UU                  V::::::V           V::::::V     N:::::::::N     N::::::N")
OutputMsg("#              J:::::J       XXX:::::X   X:::::XXX     M::::::::::M       M::::::::::M      U:::::U     U:::::U                    V:::::V           V:::::V      N::::::::::N    N::::::N")
OutputMsg("#              J:::::J          X:::::X X:::::X        M:::::::::::M     M:::::::::::M      U:::::D     D:::::U                     V:::::V         V:::::V       N:::::::::::N   N::::::N")
OutputMsg("#              J:::::J           X:::::X:::::X         M:::::::M::::M   M::::M:::::::M      U:::::D     D:::::U                      V:::::V       V:::::V        N:::::::N::::N  N::::::N")
OutputMsg("#              J:::::j            X:::::::::X          M::::::M M::::M M::::M M::::::M      U:::::D     D:::::U                       V:::::V     V:::::V         N::::::N N::::N N::::::N")
OutputMsg("#              J:::::J            X:::::::::X          M::::::M  M::::M::::M  M::::::M      U:::::D     D:::::U                        V:::::V   V:::::V          N::::::N  N::::N:::::::N")
OutputMsg("#  JJJJJJJ     J:::::J           X:::::X:::::X         M::::::M   M:::::::M   M::::::M      U:::::D     D:::::U                         V:::::V V:::::V           N::::::N   N:::::::::::N")
OutputMsg("#  J:::::J     J:::::J          X:::::X X:::::X        M::::::M    M:::::M    M::::::M      U:::::D     D:::::U                          V:::::V:::::V            N::::::N    N::::::::::N")
OutputMsg("#  J::::::J   J::::::J       XXX:::::X   X:::::XXX     M::::::M     MMMMM     M::::::M      U::::::U   U::::::U                           V:::::::::V             N::::::N     N:::::::::N")
OutputMsg("#  J:::::::JJJ:::::::J       X::::::X     X::::::X     M::::::M               M::::::M      U:::::::UUU:::::::U                            V:::::::V              N::::::N      N::::::::N")
OutputMsg("#   JJ:::::::::::::JJ        X:::::X       X:::::X     M::::::M               M::::::M       UU:::::::::::::UU        ......                V:::::V               N::::::N       N:::::::N")
OutputMsg("#     JJ:::::::::JJ          X:::::X       X:::::X     M::::::M               M::::::M         UU:::::::::UU          .::::.                 V:::V                N::::::N        N::::::N")
OutputMsg("#       JJJJJJJJJ            XXXXXXX       XXXXXXX     MMMMMMMM               MMMMMMMM           UUUUUUUUU            ......                  VVV                 NNNNNNNN         NNNNNNN")
OutputMsg("#")                                                                                                                                                                                     
OutputMsg("#")                                                                                                                                                                                     
OutputMsg("*****************************************************************************************************************JXMU.VN***********************************************************************\n")																													   

	end



	-- chi�n d�ch h� th�ng

	-- Fanghao_Wu 2004-12-6

	function GameSvrConnected(dwGameSvrIP)

	SyncAllLadder(dwGameSvrIP)

	end;

	function GameSvrReady(dwGameSvrIP)

	end

	function TaskShedule()

	-- thi�t tr� ph��ng �n t�n g�i

	TaskName( "Relay b�ng x�p h�ng" );

	-- 10 ph�t m�t l�n

	-- TaskInterval( 2440 );
	TaskInterval( 1440 ); -- c�p nh�t l�i c�c id b�ng x?p h�ng trong 1 ng�y

	-- thi�t tr� g�y ra s� l�n, 0 bi�u th� v� h�n s� l�n

	TaskCountLimit( 0 );

	-- ph�t ra kh�i ��ng tin t�c

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



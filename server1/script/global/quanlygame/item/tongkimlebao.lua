IncludeLib("SETTING")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")



function main()
tongkimlebaook()
end

function tongkimlebaook()
SetTask(747,GetTask (747)+5000)
Msg2Player("Ch�c m�ng ��i hi�p nh�n ���c 5000 �i�m t�ch l�y t�ng kim.")
Msg2Player("<color=green>B�n c� th� s� d�ng t�ch l�y ��n �� ho�n th�nh nhi�m v� t�ng kim t�i anh h�ng l�nh.")
SetTask(3332,GetTask(3332)+5000)
end

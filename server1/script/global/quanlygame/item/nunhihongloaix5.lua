--Include("\\script\\activitysys\\playerfunlib.lua")
--function main()
--	PlayerFunLib:AddSkillState(1518,2,3,5005200,1)--18*60*60=46656000 30��
--	PlayerFunLib:AddSkillState(1518,2,3,5005200,1)--18*60*60=46656000 30��
--	WriteLog(date("%Y%m%d %H%M%S").."\t".."S� d�ng C�n Kh�n Song Tuy�t B�i".."\t".. GetAccount().."\t"..GetName())
--end

IncludeLib("SETTING"); --����SETTING�ű�ָ���

function main1()
Say("bao tri item")
return 1
end

function main()
	if GetSkillState(1519) == 1 then 
		Say("C�c h� v�n th�i gian t� hi�u �ng N� Nhi H�ng, kh�ngth� d�ng nhi�u b�nh c�ng l�c xin h�y ch� ��i cho ��n h�t t�c d�ng.!", 0, "Ta bi�t r�i!/OnCancel")
		return 1
	else
		AddSkillState(1519, 1, 1, 18*60*60*3, 1);
		return 0
	end
end

function OnCancel() return end
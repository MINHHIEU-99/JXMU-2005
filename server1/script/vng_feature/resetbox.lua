
ResetBox = {}

ResetBox.TSK_TIME_ASSIGN = 2752

ResetBox.WAIT_DATE = 7

ResetBox.TBMONTH =  {31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31}

function ResetBox:ShowDialog()
	local tbOpt = {}
	local nCurDate = tonumber(GetLocalDate("%Y%m%d"))
	self:CheckExpiredDate()
	
	if (GetTask(self.TSK_TIME_ASSIGN) <= 0) then
		tinsert(tbOpt,"��ng k� x�a pass r��ng/#ResetBox:AssignResetBox()")
		tinsert(tbOpt,"X�a Pass R��ng Tr�c Ti�p/Resetpassbox")
	end
	if (GetTask(self.TSK_TIME_ASSIGN) > 0) then
		if (self:GetNextDate(GetTask(self.TSK_TIME_ASSIGN), 7) == nCurDate) then
			tinsert(tbOpt ,"X�c nh�n x�a pass r��ng/#ResetBox:ConfirmResetBox()")
		end	
		tinsert(tbOpt ,"Xem th�i gian ho�n th�nh x�a pass r��ng/#ResetBox:ShowTimeResetBox()")
		tinsert(tbOpt, "H�y x�a pass r��ng/#ResetBox:CancelResetBox()")
	end
	tinsert(tbOpt, "Tho�t/nothing")
	Say("��i hi�p t�m ta c� vi�c g�?", getn(tbOpt), tbOpt)	
end

function ResetBox:AssignResetBox()
	if GetBoxLockState() >= 1 then
		local nCurDate = tonumber(GetLocalDate("%Y%m%d"))
		SetTask(self.TSK_TIME_ASSIGN, nCurDate)
		local nDate =  self:GetNextDate(GetTask(self.TSK_TIME_ASSIGN), 7)
		local szDate = mod(nDate, 100) .. "-" .. mod(floor(nDate/100), 100) .. "-" .. floor(nDate/10000)
		Talk(1,"","Pass r��ng s� ���c x�a v�o ng�y <color=yellow>" .. szDate  .. "<color>\nN�u sau 24h ng�y <color=yellow>" .. szDate .. " <color>��i hi�p kh�ng x�c nh�n th� ��ng k� xo� pass r��ng s� b� h�y b�!")
		self:WriteLogResetBox("Reset Pass R��ng - ��ng K�")
	else
		Talk(1,"","<color=yellow>Ng��i Kh�ng C� M� R��ng Kh�ng Th� X�a")
	end
end

function ResetBox:CancelResetBox()
	SetTask(self.TSK_TIME_ASSIGN, 0)
	Msg2Player("H�y b� x�a pass r��ng th�nh c�ng!")
	self:WriteLogResetBox("Reset Pass R��ng - H�y ��ng K�")
end

function ResetBox:ShowTimeResetBox()
	local nDate =  self:GetNextDate(GetTask(self.TSK_TIME_ASSIGN), 7)
	local szDate = mod(nDate, 100) .. "-" .. mod(floor(nDate/100), 100) .. "-" .. floor(nDate/10000)
	Talk(1, "", "Pass r��ng s� ���c x�a v�o ng�y <color=yellow>" .. szDate  .. "<color>\nN�u sau 24h ng�y <color=yellow>" .. szDate .. " <color>��i hi�p kh�ng x�c nh�n th� ��ng k� xo� pass r��ng s� b� h�y b�!")
end

function ResetBox:ConfirmResetBox()
	GMCancleBoxPassword()
	Msg2Player("�� m� pass r��ng th�nh c�ng!")
	SetTask(self.TSK_TIME_ASSIGN, 0)
	self:WriteLogResetBox("Reset Pass R��ng - Th�nh C�ng X�a Pass R��ng")
end

function ResetBox:CheckExpiredDate()
	if (GetTask(self.TSK_TIME_ASSIGN) <= 0) then
		return
	end
	local nCurDate = tonumber(GetLocalDate("%Y%m%d"))
	if (nCurDate == self:GetNextDate(GetTask(self.TSK_TIME_ASSIGN), 8)) then
		SetTask(self.TSK_TIME_ASSIGN, 0)
		Msg2Player("Ng�y x�c nh�n xo� pass r��ng �� qu� h�n, xin h�y ��ng k� l�i!")
	end
end

function ResetBox:AnnounceResetBoxDate()
	self:CheckExpiredDate()
	if (GetTask(self.TSK_TIME_ASSIGN) > 0) then
		local nDate =  self:GetNextDate(GetTask(self.TSK_TIME_ASSIGN), 7)
		local szDate = mod(nDate, 100) .. "-" .. mod(floor(nDate/100), 100) .. "-" .. floor(nDate/10000)
		Talk(1, "", "Pass r��ng s� ���c x�a v�o ng�y <color=yellow>" .. szDate  .. "<color>\nN�u sau 24h ng�y <color=yellow>" .. szDate .. " <color>��i hi�p kh�ng x�c nh�n th� ��ng k� xo� pass r��ng s� b� h�y b�!")
	end
end

function ResetBox:GetNextDate(oldday, num)
	local nDay = tonumber(oldday)
	local nYear = floor(nDay / 10000)
	local nMonth = floor((nDay - nYear * 10000) / 100)
	nDay = nDay - nYear * 10000 - nMonth * 100 
	nDay = nDay + num
	while (nDay > self.TBMONTH[nMonth]) do
		nDay = nDay - self.TBMONTH[nMonth]
		if (nMonth == 12) then
			nMonth = 1
			nYear = nYear + 1
		else
			nMonth = nMonth + 1
		end
	end
	return (nYear * 10000 + nMonth * 100 + nDay)
end

function nothing()

end
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function Resetpassbox()
	if GetBoxLockState() >= 1 then
		Say("<color=yellow>Ng��i Mu�n X�a M� R��ng Tr�c Ti�p �� ��m B�o T�i S�n Y�u C�u: 300 Kim Nguy�n B�o",2,"��ng Ta L�m M�i L�i M� R��ng Ngay L�p T�c/xoamaruong","Tho�t/no")
	else
		Talk(1,"","<color=yellow>Ng��i Kh�ng C� M� R��ng Kh�ng Th� X�a")
	end
end

function xoamaruong()
	if CalcEquiproomItemCount(4,2573,1,1) >= 300 then
		GMCancleBoxPassword() Say("<color=fire>Ch�c M�ng Ng��i �� X�a M� R��ng Th�nh C�ng Vui L�ng ��t L�i M� R��ng M�i",2,"��t L�i M�t Kh�u/PassRuong","Th�i/No")
		ConsumeEquiproomItem(300,4,1496,1,-1)
	else
		Talk(1,"", "<color=red>Ng��i Kh�ng �� 300 Kim Nguy�n B�o Xin Ki�m Tra L�i...!<color>")
	end
end

function PassRuong()
OpenBox()
end
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function ResetBox:WriteLogResetBox(szLogTitle)
	WriteLog(date("%Y%m%d %H%M%S").."\t".. GetAccount().."\t"..GetName().."\t".. szLogTitle)
end
------------------------------------------------------------------------------------------------------------------------------------------
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\objbuffer_head.lua")
 _Message = function (nItemIdx,szItem)
	local strItemName = szItem or GetItemName(nItemIdx)
	local strMessage = format("<color=green>Ch�c m�ng <color=yellow>%s<color=green> �� nh�n ���c v�t ph�m <color=yellow>%s<color=green> t� b�o r��ng b�ch kim", GetName(), strItemName)
	-- Msg2SubWorld(strMessage)
	local handle = OB_Create();
	ObjBuffer:PushObject(handle, strMessage)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
-- tbBoxAward  = {
-- {tbProp={4,{585,593},1,1,0,0},nRate=1.5,CallBack = _Message},-- Dao tu khong
-- {tbProp={4,{702,710},1,1,0,0},nRate=1.5,CallBack = _Message},-- Dao Suong tinh
-- {tbProp={4,{885,890},1,1,0,0},nRate=1.5,CallBack = _Message},-- Cap phong phu
-- {tbProp={4,{807,812},1,1,0,0},nRate=1.5,CallBack = _Message},-- Vo ma giay
-- {tbProp={4,{801,806},1,1,0,0},nRate=1.5,CallBack = _Message},-- Vo ma boi
-- {tbProp={4,{675,683},1,1,0,0},nRate=1.5,CallBack = _Message},-- Bong dich khai
-- {tbProp={4,{855,860},1,1,0,0},nRate=1.5,CallBack = _Message},-- Bao tay dong cuu
-- {tbProp={4,{603,611},1,1,0,0},nRate=1.5,CallBack = _Message},-- Ke nghiep thuong
-- {tbProp={4,{1031,1036},1,1,0,0},nRate=1.5,CallBack = _Message},-- Ham thien giay
-- {tbProp={4,{867,872},1,1,0,0},nRate=1.5,CallBack = _Message},-- Ma hoang khuyen
-- {tbProp={4,{873,878},1,1,0,0},nRate=1.5,CallBack = _Message},-- Ma thi giay
-- {tbProp={4,{989,994},1,1,0,0},nRate=1.5,CallBack = _Message},-- Thien quang day chuyen
-- {tbProp={4,{648,656},1,1,0,0},nRate=1.5,CallBack = _Message},-- Dao ngu doc
-- {tbProp={4,{831,836},1,1,0,0},nRate=1.5,CallBack = _Message},-- U lung gi�y
-- {tbProp={4,{837,842},1,1,0,0},nRate=1.5,CallBack = _Message},-- Chu phuoc day chuyen
-- {tbProp={4,{747,752},1,1,0,0},nRate=10,CallBack = _Message},-- An bang lien
-- {tbProp={4,{753,770},1,1,0,0},nRate=100,CallBack = _Message},-- An bang cui
-- }

tbGoldAward  = {
{tbProp = {0,{1,140}},nQuality=1,nRate=87,CallBack = _Message},-- Dao tu khong
{tbProp = {0,769},nQuality=1,nRate=0.5,CallBack = _Message},-- Dao tu khong
{tbProp = {0,771},nQuality=1,nRate=0.5,CallBack = _Message},-- Dao tu khong
{tbProp = {0,776},nQuality=1,nRate=0.5,CallBack = _Message},-- Dao tu khong
{tbProp = {0,793},nQuality=1,nRate=0.5,CallBack = _Message},-- Dao tu khong
{tbProp = {0,796},nQuality=1,nRate=0.5,CallBack = _Message},-- Dao tu khong
{tbProp = {0,801},nQuality=1,nRate=0.5,CallBack = _Message},-- Dao tu khong
{tbProp = {0,808},nQuality=1,nRate=0.5,CallBack = _Message},-- Dao tu khong
{tbProp = {0,811},nQuality=1,nRate=0.5,CallBack = _Message},-- Dao tu khong
{tbProp = {0,816},nQuality=1,nRate=0.5,CallBack = _Message},-- Dao tu khong
{tbProp = {0,829},nQuality=1,nRate=0.5,CallBack = _Message},-- Dao tu khong
{tbProp = {0,834},nQuality=1,nRate=0.5,CallBack = _Message},-- Dao tu khong
{tbProp = {0,843},nQuality=1,nRate=0.5,CallBack = _Message},-- Dao tu khong
{tbProp = {0,854},nQuality=1,nRate=0.5,CallBack = _Message},-- Dao tu khong
{tbProp = {0,855},nQuality=1,nRate=0.5,CallBack = _Message},-- Dao tu khong
{tbProp = {0,868},nQuality=1,nRate=0.5,CallBack = _Message},-- Dao tu khong
{tbProp = {0,874},nQuality=1,nRate=0.5,CallBack = _Message},-- Dao tu khong
{tbProp = {0,876},nQuality=1,nRate=0.5,CallBack = _Message},-- Dao tu khong
{tbProp = {0,881},nQuality=1,nRate=0.5,CallBack = _Message},-- Dao tu khong
{tbProp = {0,888},nQuality=1,nRate=0.5,CallBack = _Message},-- Dao tu khong
{tbProp = {0,891},nQuality=1,nRate=0.5,CallBack = _Message},-- Dao tu khong
{tbProp = {0,898},nQuality=1,nRate=0.5,CallBack = _Message},-- Dao tu khong
{tbProp = {0,901},nQuality=1,nRate=0.5,CallBack = _Message},-- Dao tu khong
}
function GetKimPhong(nIndex)
-- if CalcFreeItemCellCount() < 10 then
-- Say("H�nh trang kh�ng �� 10 � tr�ng",0)
-- return 1
-- end
-- tbAwardTemplet:GiveAwardByList(%tbGoldAward,"Mo bao ruong bach kim")
-- Msg2Player("its ok"..nIndex)
-- local szTitle = "<npc>Server V� l�m b� s� t�i hi�n ch�n th�c b�c tranh V� l�m truy�n k� 2007"
-- local tbOpt ={}
	-- tinsert(tbOpt, 1, {"Thoat",no})
	-- tinsert(tbOpt, 1, {"Kim Phong Thanh D��ng Kh�i",GetGoldItem,{177,nIndex}})
	-- tinsert(tbOpt, 1, {"Kim Phong K� L�n Huy�t",GetGoldItem,{178,nIndex}})
	-- tinsert(tbOpt, 1, {"Kim Phong Tr�c Li�n Quang",GetGoldItem,{179,nIndex}})
	-- tinsert(tbOpt, 1, {"Kim Phong C�ng C�n Tam Th�n",GetGoldItem,{180,nIndex}})
	-- tinsert(tbOpt, 1, {"Kim Phong �o�t H�n Ng�c ��i",GetGoldItem,{181,nIndex}})
	-- tinsert(tbOpt, 1, {"Kim Phong H�u Ngh� d�n cung",GetGoldItem,{182,nIndex}})
	-- tinsert(tbOpt, 1, {"Kim Phong Lan ��nh Ng�c",GetGoldItem,{183,nIndex}})
	-- tinsert(tbOpt, 1, {"Kim Phong Thi�n L� Th�o Th��ng Phi",GetGoldItem,{184,nIndex}})
	-- tinsert(tbOpt, 1, {"Kim Phong ��ng T��c Xu�n Th�m",GetGoldItem,{185,nIndex}})
-- CreateNewSayEx(szTitle, tbOpt)
-- return 1
end
-- function GetRandomPiece(nIndex)
-- tbAwardTemplet:GiveAwardByList(%tbBoxAward,"Mo bao ruong facebook")
-- RemoveItemByIndex(nIndex)
-- end
-- function GetGoldItem(nGoldIdx,nIndex)
-- tbAwardTemplet:GiveAwardByList({szName = "Kim Phong",tbProp = {0,nGoldIdx},nQuality=1}, "Nhan ho tro tan thu them")
-- RemoveItemByIndex(nIndex)
-- end
-- mu dq 5
-- �o dq 5
-- dai lung dq 10
-- gi?y dq 10
-- bao tay dq 5
-- �o hc 5
-- d�y chuy?n hc 10
-- nh?n hc 10
-- ng?c b?i hc 5
-- nh?n nt 10
-- ng?c b?i nt 5
-- d�y chuy?n nt 10
function main(nItemIdx)
if CalcFreeItemCellCount() < 10 then
Say("H�nh trang kh�ng �� 10 � tr�ng",0)
return 1
end
tbAwardTemplet:GiveAwardByList(%tbGoldAward,"Mo bao ruong bach kim")
end

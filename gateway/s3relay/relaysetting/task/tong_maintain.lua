--���ά���ű�
--by luobaohang 06/03/10
IncludeLib("TONG")
-- ���ά����ʱ��
INTERVAL_TIME = 1440	-- ÿ24Сʱ����7��
function TaskShedule()
	TaskName("ÿ��ά��");
	-- 1440����һ��
	TaskInterval(INTERVAL_TIME);
	-- ���ô���ʱ��(0��0��)
	TaskTime(0, 0);
	-- ִ�����޴�
	TaskCountLimit(0);
end

function TaskContent()
	local nTongID = TONG_GetFirstTong()
	OutputMsg("KHOI DONG DUY TU BANG HOI.......................")
	while (nTongID ~= 0)do
		OutputMsg("DANG TIEN HANH DUY TU:  "..TONG_GetName(nTongID))
		TONG_ApplyMaintain(nTongID)
		nTongID = TONG_GetNextTong(nTongID)
	end
end

function GameSvrConnected(dwGameSvrIP)
end
function GameSvrReady(dwGameSvrIP)
end
--两湖区 南岳镇 峨嵋弟子对话

function main(sel)
	-- Talk(4, "select", "Trong thi猲 h� c竎 m玭 ph竔 do n� nhi s竛g l藀 th� b鎛 m玭 ng u!", "е t� b鎛 m玭 kh玭g nh鱪g v� ngh� cao cng, c莔 k� th� h鋋 u tinh th玭g! ", "Ai n鉯 giang h� l� th� gi韎 c馻 nam nh﹏ th� c� nh譶 b鎛 ph竔 m� l祄 gng", "B鎛 ph竔 ch� nh薾  t� n�.")
	Talk(4, "no", "Trong thi猲 h� c竎 m玭 ph竔 do n� nhi s竛g l藀 th� b鎛 m玭 ng u!", "е t� b鎛 m玭 kh玭g nh鱪g v� ngh� cao cng, c莔 k� th� h鋋 u tinh th玭g! ", "Ai n鉯 giang h� l� th� gi韎 c馻 nam nh﹏ th� c� nh譶 b鎛 ph竔 m� l祄 gng", "B鎛 ph竔 ch� nh薾  t� n�.")
end;

function select()
	Say("C� mu鑞 gia nh藀 b鎛 ph竔 kh玭g?", 2, "Gia nh藀. /yes", "Kh玭g gia nh藀/no");
end;


function yes()
	if (GetSeries() ~= 2) then								--如果玩家不属于水系
		Say("Ngi kh玭g thu閏 h� Th駓, kh玭g th� gia nh藀 b鎛 m玭!", 0)
	else
		if (GetFaction() ~= "") then							--如果玩家已经属于水系的某一门派
			Say("Ch� c莕 ch璦 gia nh藀 m玭 ph竔 kh竎 l� c� th� gia nh藀 b鎛 m玭!", 0)
		else	
			if (GetLevel() >= 10) then						--等级达到十级
				if ( GetSex() == 0 ) then     					--如果玩家性别为男
					Say("B鎛 ph竔 ch� nh薾  t� n�.", 0)
				else								--玩家性别为女
						SetFaction("emei")       				--玩家加入峨嵋派
						NewWorld(13, 1867, 5021)				--把玩家传送到门派入口	
					SetFightState(1)					--玩家转换成战斗状态
						SetRevPos(13)		  				--设置重生点
						SetTask(1, 10)
						Say("Hoan Ngh猲h b筺 gia nh藀 Nga Mi ph竔! ",0)  
				end
			else
				Say("C╪ b秐 c馻 ngi c遪 k衜 l緈! H穣 甶 luy謓 t藀 th猰, bao gi� n c蕄 10 l筰 n t譵 ta!", 0)	
			end
		end
	end;			
end;

function no()
end;



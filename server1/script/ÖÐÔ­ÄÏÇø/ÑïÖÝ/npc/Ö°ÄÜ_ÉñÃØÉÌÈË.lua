-- 扬州　职能　神秘商人
-- By Li_Xin (2004-08-17)
-- By Ren Bin (2004-12-15) 增加千奇百怪动物秀的活动入口



Include("\\script\\global\\shenmi_chapman.lua") 
Include( "\\script\\global\\mask_ani.lua" )
Include( "\\script\\global\\weapon_ring.lua" )
Include("\\script\\event\\act2years_yn\\baibaoxiang.lua") 


function main()
	str=
	{
		"<#> Ta t� T﹜ V鵦 xa x玦 n Trung Nguy猲  thu th藀 Th駓 Tinh, Kim Nguy猲 B秓 v� Ng﹏ phi誹. Ta s絥 s祅g i c竎 b秓 v藅  頲 nh鱪g th� ! Kh竎h quan c� g� i kh玭g?",
		"<#> Trao i у ph� v� kh� /get1",
		"<#> Mua K� tr﹏ d� b秓/get2",
--		"<#>参加千奇百怪动物秀活动/hello",
--		"<#>购买圣诞节日面具/chr_buy",
--		"<#>武器换戒指/weapon_ring",
		"<#> Ta xem th� trc !/no",
		"<#>Ta mu鑞 i b秓 rng/BaiBaoXiang_Give_UI"
	};
	local ndate = tonumber(GetLocalDate("%y%m%d%H"))
	
	Say(str[1],4,str[5],str[2],str[3],str[4])
	
end;

function chr_buy()

	Say("Ta c� 2 b秓 v藅 d祅h cho d辮 Gi竛g sinh n祔,  l� <color=red>g Gi� Noel<color> v� <color=red>Thi猲 S� Gi竛g sinh<color>. N誹 mau ri猲g m鏸 c竔 l� <color=red>399 v筺 lng<color>, mua c� 2 c竔 ch� c� <color=red>688 v筺 lng<color>. C遪 do d� g� n鱝?",4,"Mua M苩 n� g Gi� Noel (399 v筺) /mask","Mua M苩 n� Thi猲 S� Gi竛g sinh (399 v筺) /mask","Mua c� 2 M苩 n� (688 v筺) /mask_all","в ta suy ngh� k� l筰 xem/no")

end

function mask_all()

	on_Pay = 6880000
	if ( GetCash() >= on_Pay ) then
		Pay( on_Pay )
		AddItem(0,11,70,0,0,0,0)
		AddItem(0,11,71,0,0,0,0)
		Msg2Player("B筺 nh薾 頲 1 b� M苩 n� ")
	else
		Say("Qu猲 mang ti襫 �? Kh玭g sao! Ta � y i ngi! Nh璶g nh� quay l筰 s韒 nh�!",1,"Л頲!/no")
	end
end


function mask(msel)

	on_Pay = 3990000
	if ( GetCash() >= on_Pay ) then
		Pay( on_Pay )
		if ( msel == 0 ) then
			AddItem(0,11,70,0,0,0,0)
			Msg2Player("B筺 nh薾 頲 1 M苩 n� g Gi� Noel")
		else
			AddItem(0,11,71,0,0,0,0)
			Msg2Player("B筺 nh薾 頲 1 M苩 n� Thi猲 S� Gi竛g sinh")
		end
	else
		Say("Qu猲 mang ti襫 �? Kh玭g sao! Ta � y i ngi! Nh璶g nh� quay l筰 s韒 nh�!",1,"Л頲!/no")
	end

end

function no()

end
----------------------------------------------------------------------------------------------------------------
function fifong()
	local tab_Content = {
		"Phi phong/PhiPhong",
		"Ng� H�nh �n/NguHanhAn",
		"Trang s�c/TrangSuc",
		"L�y Ng�a/Ngua",
		"Tho�t./no",
		"Tr� l�i"
	}
	Say("Xin m�i ch�n", getn(tab_Content), tab_Content);
end
-------------------------------------------------------------------------------------------------------------------
function PhiPhong()
for i = 3905,3939 do
AddGoldItem(0,i)
end
end

function NguHanhAn()
for i=3950,3962 do
AddGoldItem(0, i)
end
end

function TrangSuc()
for i=3988,3997 do
AddGoldItem(0, i)
end
end

pico-8 cartridge // http://www.pico-8.com
version 39
__lua__
--init
function _init()
	player={--table 
		sp=0, --sp=sprite
		x=4,
		y=4,
		w=8,--with
		h=8,--height
		flp=false,
		dx=0,--delta movement
		dy=0,-- delta movement
		max_dx=3,
		max_dy=3,
		acc_mvmt=0.5,
		acc_jmp=4,
		anim=0,
		jumping=false,
		falling=false,
		running=false,
		landed=false,
	}
	gravity=1.75
end


-->8
--update and draw
function _update()
	player.y+=gravity
end

function _draw()
	cls()
	map(0,0)
	spr(player.sp,player.x,player.y,1,1,player.flp)
end
-->8
--collisions
function collider(obj,dir,flag)
		--obj = table needs x,y,w,h
		local x=obj.x	local y=obj.y
		local w=obj.w local h=obj.h
		
		local x1=0	local y1=0
		local x2=0	local y2=0
		
		if dir=="left" then
			x1=x-1	y1=y
			x2=x			y2=y+h-1
		elseif dir=="right" then
			x1=x+w					y1=y
			x2=x+w+1			y2=y+h-1
		elseif dir=="up" then 
			x1=x+1			y1=y-1
			x2=w-1			y2=y
		elseif dir=="down" then
			x1=x					y1=y+h
			x2=x+w			y2=y+h
		end

		--pixels to tiles 
		x1/=8	y1/=8
		x2/=8	y2/=8	
		
		if fget(mget(x1,y1),flag)
		or fget(mget(x1,y2),flag)
		or fget(mget(x2,y1),flag)
		or fget(mget(x2,y2),flag) then
			return true
		else
			return false
		end

end

-->8
--flags legends
--flag 0:can stand on
--flag 1:
--flag 2:
--flag 3:
--flag 4:
__gfx__
00eeee0000eeee0000eeee0000eeee0000eeee0000eeee0000eeee0000eeee0000eeee0000eeee0000eeee0000eeee0000eeee0000eeee0000eeee0000eeee00
01eeeae001eeeae001eeeae001eeeae001eeeae00eaeee100eaeee100eaeee100eaeee100eaeee10011eeee0011eeee0011eeee00eeee1100eeee1100eeee110
01f3f30001f3f30001f3f30001f3f30001f3f300003f3f10003f3f10003f3f10003f3f10003f3f10011fff00011fff00011fff0000fff11000fff11000fff110
00f1110000f1110000f1110000f1110000f1110000111f0000111f0000111f0000111f0000111f0000ffff0000ffff0000ffff0000ffff0000ffff0000ffff00
0551115005f1005005511100005111000551115005111550001115000011155005001f5005111550055555000055550005555550055555500055550000555550
0f5555f00f5111f00f55550000f555000f5555f00f5555f000555f00005555f00f1115f00f5555f00f55550000f555000f5555f00f5555f000555f00005555f0
00444400004444000044440000444400004444000044440000444400004444000044440000444400004444000044440000444400004444000044440000444400
00400200004002000004200000024000004002000020040000024000000420000020040000200400000420000002400000400200002004000002400000042000
00eeee0000eeee0010eeee0001eeee00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
01eeeae001eeeae001eeeae001eeeae0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
01f3f30010f3f30000f3f30000f3f300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00f1110000f11100f0f1110ff0f1110f000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
05511150055111500551115005511150000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
f05555f0f05555f00055550000555500000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00444400004444000044442000444420000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
04002000040020000400000004000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00111100001111000000000000000000000000000000000000000000000000000011110000111100000000000000000000000000000000000000000000000000
00111700001117000000000000000000000000000000000000000000000000000071110000711100000000000000000000000000000000000000000000000000
00a3f30000a3f300000000000000000000000000000000000000000000000000003f3a00003f3a00000000000000000000000000000000000000000000000000
0afaaa000afaaa0000000000000000000000000000000000000000000000000000aaafa000aaafa0000000000000000000000000000000000000000000000000
0ddaaad00dfa00d00000000000000000000000000000000000000000000000000d00afd00daaadd0000000000000000000000000000000000000000000000000
0fddddf00fdaaaf00000000000000000000000000000000000000000000000000faaadf00fddddf0000000000000000000000000000000000000000000000000
00cccc0000cccc0000000000000000000000000000000000000000000000000000cccc0000cccc00000000000000000000000000000000000000000000000000
00c0010000c0010000000000000000000000000000000000000000000000000000100c0000100c00000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
bbbbbbbbbbbbbbbbb3334244bbbbbbbb4445433bbbbbbbbb444444140000000000000000000000000004f0004444444444444444000000000000000000000000
3333333333333333b3444444b33333334243333b3333333b444424440000000000000000000000000004400044ffffffffffff4f000000000000000000000000
4343433433344333b3441454b33433424444423b3134323b414444440000000000000000000000000004f000ffffff4fff4fffff000000000000000000000000
4443443443444443b3534444b34344444454233b4443543b444544440000000000000000000000000004f0004444444444444444000000000000000000000000
44444f4444444544b3444444b34445444244443b4444453b444445440000000000000000000000000004f000ffff4fffffff4fff000000000000000000000000
f44444454f442444b3344454b33442444443533b3444423b544444440000000000000000000000000004f000f4fffffff4ffffff000000000000000000000000
4454444444444454b3344444b33434544544343b4444343b444244240000000000000000000000000004f0004444444444444444000000000000000000000000
4444244444544444b3542444b35444444441433b4454443b145444440000000000000000000000000004f0000004f00000000000000000000000000000000000
77777777000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
77777777000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
77777777000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
60666060666677770000000090000000020202020000000000000000444444440000000000000000000000000000000000000000000000000000000608008088
00000000000000000000000029000000202020200000000000000000040404040000000033033033333033030000000000000000000000000000009090090090
66606660000666770770777002900000020202020000000000000000040404040000000000000000000000000000000000000000009999990009090098090090
00000000000000000000000020290000202020200000000000000000040404040000000003303303303303300000000000000000091112090090900090090090
60666060000606770707077002029000020202020000000000000000040404040000000000000000000000000000000000000000901110290900690099099090
00000000000000000000000020202900202020200000000000000000040404040000000033033033333033030000000000000000900000099006900099099099
66066660000000000770770002020290020202020000000000000000040404040000000000000000000000000000000000000000099999990969000099099099
00000000000000000000000020202029202020200000000000000000444444440000000003303303303303300000000000000000000000000090000099099099
20222020000000000000000000000000666666660000000000000000000000000000000000000099090990900999999000000000000000000999999009999990
00000000000000000000000000000000111011100000000000000000000000000000000000099099090000900900009000000000099999209600006909000090
22202220222277770770777000000000000000000000000000000000000000000000000099099099090990900909909000000000000000009999999909099090
00000000000000000000000000000000011101110000000000000000000000000000000099099000090000900900009000000000099999209000000909000090
20222020000222770707077000000000000000000000000000000000000000000000000099000099090990900999999000000000091911209999999909999990
00000000000000000000000000000000111011100000000000000000000000000000000000099099090000900999909000000000099999209600006909999890
22022220000202770770770000000000000000000000000000000000000000000000000099099099090990900999999000000000000000000999999009999990
00000000000000000000000000000000011101110000000000000000000000000000000000000000090000900999999000000000000000000000000009999990
__gff__
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001010001000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
__map__
c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c900000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
e3c9c9c900c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c900000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
e4e3c9c900c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c900000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
e0e0c9c900c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c900000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
e0fb2000c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
e7e7e7c3c5c9c9c3c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
c0c0c0c6c6c0c0c6c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
c6c6c6c6c6c6c6c6c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9c9000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
__sfx__
000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000f00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000010000100002000020000200
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
002000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
__music__
00 01094344


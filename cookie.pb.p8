pico-8 cartridge // http://www.pico-8.com
version 39
__lua__
function _init()
 cls(0)--clr scrn black
 simposx=64--position x simon
 simposy=64--position y simon
end

--get call when a new screen
--is due (30fps) may be skip
--if program is overload
function _draw()
	cls()--clearscreen
 spr(spritenumber,simposx,simposy) --draw simon
end

--get call when a new screen
--is due (30fps) never skiped
function _update()
	talking()
end

-->8
function walking()
		
end

function talking()

end

__gfx__
00eeee0000eeee0000eeee0000eeee0000eeee0000eeee0000eeee0000eeee0000eeee0000eeee0000eeee0000eeee0000eeee0000eeee0000eeee0000eeee00
01eeeae001eeeae001eeeae001eeeae001eeeae00eaeee100eaeee100eaeee100eaeee100eaeee10011eeee0011eeee0011eeee00eeee1100eeee1100eeee110
01f3f30001f3f30001f3f30001f3f30001f3f300003f3f10003f3f10003f3f10003f3f10003f3f10011fff00011fff00011fff0000fff11000fff11000fff110
00f1110000f1110000f1110000f1110000f1110000111f0000111f0000111f0000111f0000111f0000ffff0000ffff0000ffff0000ffff0000ffff0000ffff00
0551115005f1005005511100005111000551115005111550001115000011155005001f5005111550055555000055550005555550055555500055550000555550
0f5555f00f5111f00f55550000f555000f5555f00f5555f000555f00005555f00f1115f00f5555f00f55550000f555000f5555f00f5555f000555f00005555f0
00444400004444000044440000444400004444000044440000444400004444000044440000444400004444000044440000444400004444000044440000444400
00400200004002000004200000024000004002000020040000024000000420000020040000200400000420000002400000400200002004000002400000042000
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
77777777777777770777777000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
66666666666677770776777000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
66666666666667770777767000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000666770767677000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
06660666066606770777767000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000606770776776000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
66066606660666670767777000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
ffffffff777777770777777000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
22222222666677770776777000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
22222222666667770777767000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000666770767677000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
02220222066606770777767000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000606770776776000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
22022202660666670767777000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
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
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000112233
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000112233
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000044556677
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000044556677
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008899aabb
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008899aabb
000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ccddeeff
000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ccddeeff

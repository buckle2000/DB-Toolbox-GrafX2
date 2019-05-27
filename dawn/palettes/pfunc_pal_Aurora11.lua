-- Aurora V1.1 Palette (pfunc)
-- by Richard 'DawnBringer' Fhager

-- Usage: 
-- Set palette: dofile("pfunc_pal_Aurora11.lua")(true)
--  Also returns a PalList {{r,g,b,i},..} (in case it's needed for something, f.ex # of colors set)

-- Get palette: 
-- pallist = dofile("pfunc_pal_Aurora11.lua")()
-- Returns a PalList {{r,g,b,i},..}




return function(set_flag)
 
 local n,pal, pallist

 pal = { -- Aurora 1.1
{0, 0, 0, 0}
,{1, 17, 17, 17}
,{2, 34, 34, 34}
,{3, 51, 51, 51}
,{4, 68, 68, 68}
,{5, 85, 85, 85}
,{6, 102, 102, 102}
,{7, 119, 119, 119}
,{8, 136, 136, 136}
,{9, 153, 153, 153}
,{10, 170, 170, 170}
,{11, 187, 187, 187}
,{12, 204, 204, 204}
,{13, 221, 221, 221}
,{14, 238, 238, 238}
,{15, 255, 255, 255}
,{16, 0, 127, 127}
,{17, 63, 191, 191}
,{18, 0, 255, 255}
,{19, 191, 255, 255}
,{20, 129, 129, 255}
,{21, 0, 0, 255}
,{22, 63, 63, 191}
,{23, 0, 0, 127}
,{24, 15, 15, 80}
,{25, 127, 0, 127}
,{26, 191, 63, 191}
,{27, 245, 0, 245}
,{28, 253, 129, 255}
,{29, 255, 192, 203}
,{30, 255, 129, 129}
,{31, 255, 0, 0}
,{32, 191, 63, 63}
,{33, 127, 0, 0}
,{34, 85, 20, 20}
,{35, 127, 63, 0}
,{36, 191, 127, 63}
,{37, 255, 127, 0}
,{38, 255, 191, 129}
,{39, 255, 255, 191}
,{40, 255, 255, 0}
,{41, 191, 191, 63}
,{42, 127, 127, 0}
,{43, 0, 127, 0}
,{44, 63, 191, 63}
,{45, 0, 255, 0}
,{46, 175, 255, 175}
,{47, 0, 191, 255}
,{48, 0, 127, 255}
,{49, 75, 125, 200}
,{50, 188, 175, 192}
,{51, 203, 170, 137}
,{52, 166, 160, 144}
,{53, 126, 148, 148}
,{54, 110, 130, 135}
,{55, 126, 110, 96}
,{56, 160, 105, 95}
,{57, 192, 120, 114}
,{58, 208, 138, 116}
,{59, 225, 155, 125}
,{60, 235, 170, 140}
,{61, 245, 185, 155}
,{62, 246, 200, 175}
,{63, 245, 225, 210}
,{64, 127, 0, 255}
,{65, 87, 59, 59}
,{66, 115, 65, 60}
,{67, 142, 85, 85}
,{68, 171, 115, 115}
,{69, 199, 143, 143}
,{70, 227, 171, 171}
,{71, 248, 210, 218}
,{72, 227, 199, 171}
,{73, 196, 158, 115}
,{74, 143, 115, 87}
,{75, 115, 87, 59}
,{76, 59, 45, 31}
,{77, 65, 65, 35}
,{78, 115, 115, 59}
,{79, 143, 143, 87}
,{80, 162, 162, 85}
,{81, 181, 181, 114}
,{82, 199, 199, 143}
,{83, 218, 218, 171}
,{84, 237, 237, 199}
,{85, 199, 227, 171}
,{86, 171, 199, 143}
,{87, 142, 190, 85}
,{88, 115, 143, 87}
,{89, 88, 125, 62}
,{90, 70, 80, 50}
,{91, 25, 30, 15}
,{92, 35, 80, 55}
,{93, 59, 87, 59}
,{94, 80, 100, 80}
,{95, 59, 115, 73}
,{96, 87, 143, 87}
,{97, 115, 171, 115}
,{98, 100, 192, 130}
,{99, 143, 199, 143}
,{100, 162, 216, 162}
,{101, 225, 248, 250}
,{102, 180, 238, 202}
,{103, 171, 227, 197}
,{104, 135, 180, 142}
,{105, 80, 125, 95}
,{106, 15, 105, 70}
,{107, 30, 45, 35}
,{108, 35, 65, 70}
,{109, 59, 115, 115}
,{110, 100, 171, 171}
,{111, 143, 199, 199}
,{112, 171, 227, 227}
,{113, 199, 241, 241}
,{114, 190, 210, 240}
,{115, 171, 199, 227}
,{116, 168, 185, 220}
,{117, 143, 171, 199}
,{118, 87, 143, 199}
,{119, 87, 115, 143}
,{120, 59, 87, 115}
,{121, 15, 25, 45}
,{122, 31, 31, 59}
,{123, 59, 59, 87}
,{124, 73, 73, 115}
,{125, 87, 87, 143}
,{126, 115, 110, 170}
,{127, 118, 118, 202}
,{128, 143, 143, 199}
,{129, 171, 171, 227}
,{130, 208, 218, 248}
,{131, 227, 227, 255}
,{132, 171, 143, 199}
,{133, 143, 87, 199}
,{134, 115, 87, 143}
,{135, 87, 59, 115}
,{136, 60, 35, 60}
,{137, 70, 50, 70}
,{138, 114, 64, 114}
,{139, 143, 87, 143}
,{140, 171, 87, 171}
,{141, 171, 115, 171}
,{142, 235, 172, 225}
,{143, 255, 220, 245}
,{144, 227, 199, 227}
,{145, 225, 185, 210}
,{146, 215, 160, 190}
,{147, 199, 143, 185}
,{148, 200, 125, 160}
,{149, 195, 90, 145}
,{150, 75, 40, 55}
,{151, 50, 22, 35}
,{152, 40, 10, 30}
,{153, 64, 24, 17}
,{154, 98, 24, 0}
,{155, 165, 20, 10}
,{156, 218, 32, 16}
,{157, 213, 82, 74}
,{158, 255, 60, 10}
,{159, 245, 90, 50}
,{160, 255, 98, 98}
,{161, 246, 189, 49}
,{162, 255, 165, 60}
,{163, 215, 155, 15}
,{164, 218, 110, 10}
,{165, 180, 90, 0}
,{166, 160, 75, 5}
,{167, 95, 50, 20}
,{168, 83, 80, 10}
,{169, 98, 98, 0}
,{170, 140, 128, 90}
,{171, 172, 148, 0}
,{172, 177, 177, 10}
,{173, 230, 213, 90}
,{174, 255, 213, 16}
,{175, 255, 234, 74}
,{176, 200, 255, 65}
,{177, 155, 240, 70}
,{178, 150, 220, 25}
,{179, 115, 200, 5}
,{180, 106, 168, 5}
,{181, 60, 110, 20}
,{182, 40, 52, 5}
,{183, 32, 70, 8}
,{184, 12, 92, 12}
,{185, 20, 150, 5}
,{186, 10, 215, 10}
,{187, 20, 230, 10}
,{188, 125, 255, 115}
,{189, 75, 240, 90}
,{190, 0, 197, 20}
,{191, 5, 180, 80}
,{192, 28, 140, 78}
,{193, 18, 56, 50}
,{194, 18, 152, 128}
,{195, 6, 196, 145}
,{196, 0, 222, 106}
,{197, 45, 235, 168}
,{198, 60, 254, 165}
,{199, 106, 255, 205}
,{200, 145, 235, 255}
,{201, 85, 230, 255}
,{202, 125, 215, 240}
,{203, 8, 222, 213}
,{204, 16, 156, 222}
,{205, 5, 90, 92}
,{206, 22, 44, 82}
,{207, 15, 55, 125}
,{208, 0, 74, 156}
,{209, 50, 100, 150}
,{210, 0, 82, 246}
,{211, 24, 106, 189}
,{212, 35, 120, 220}
,{213, 105, 157, 195}
,{214, 74, 164, 255}
,{215, 144, 176, 255}
,{216, 90, 197, 255}
,{217, 190, 185, 250}
,{218, 120, 110, 240}
,{219, 74, 90, 255}
,{220, 98, 65, 246}
,{221, 60, 60, 245}
,{222, 16, 28, 218}
,{223, 0, 16, 189}
,{224, 35, 16, 148}
,{225, 12, 33, 72}
,{226, 80, 16, 176}
,{227, 96, 16, 208}
,{228, 135, 50, 210}
,{229, 156, 65, 255}
,{230, 189, 98, 255}
,{231, 185, 145, 255}
,{232, 215, 165, 255}
,{233, 215, 195, 250}
,{234, 248, 198, 252}
,{235, 230, 115, 255}
,{236, 255, 82, 255}
,{237, 218, 32, 224}
,{238, 189, 41, 255}
,{239, 189, 16, 197}
,{240, 140, 20, 190}
,{241, 90, 24, 123}
,{242, 100, 20, 100}
,{243, 65, 0, 98}
,{244, 50, 10, 70}
,{245, 85, 25, 55}
,{246, 160, 25, 130}
,{247, 200, 0, 120}
,{248, 255, 80, 191}
,{249, 255, 106, 197}
,{250, 250, 160, 185}
,{251, 252, 58, 140}
,{252, 230, 30, 120}
,{253, 189, 16, 57}
,{254, 152, 52, 77}
,{255, 145, 20, 55}
}

 -- Convert [i,r,g,b] --> [r,g,b,i] 
 function convert_irgb_2_pallist(pal)
  local n,temp
  for n = 1, #pal, 1 do
   temp = pal[n][1]
   pal[n][1] = pal[n][2]
   pal[n][2] = pal[n][3]
   pal[n][3] = pal[n][4]
   pal[n][4] = temp
  end
  return pal
 end
 --

 pallist = convert_irgb_2_pallist(pal)

 if set_flag then
  for n = 1, #pallist, 1 do
   setcolor(pal[n][4],pal[n][1],pal[n][2],pal[n][3])
  end
 end

 return pallist

end
--PICTURE: 4-Dither System - List Possible Combos 
--(Rated & sorted dithers)
--by Richard 'DawnBringer' Fhager

dofile("../libs/db_4dither.lua")
dofile("../libs/dawnbringer_lib.lua")
dofile("../libs/db_text.lua")
dofile("../ffonts/font_mini_3x4.lua")

LIMIT         = 64   -- Max # of colors in palette
MAX_COMBOS    = 4000 -- Most number of dithers allowed
Gamma         = 2.2 -- Only used to calculate the MixColor's RGB-values (Doesn't affect anything when just drawing combos)
--Briweight     = 0.25 
flagSort     = 1 -- Sort dithers by rating
flag2Dit     = 0 -- Only 2-dithers
flagText     = 1 -- Write text (# and rating)

StripThreshold = 100.0 -- Only keep dithers with a rating lower or equal to this (0 = perfect, 100 = worst)

 width  = 640
 mix_ox = 1
 mix_oy = 10
 mix_w  = 16
 mix_h  = 16
 --mix_xspace = 1
 --mix_yspace = 1
 mix_spacing = 4	
 mix_yspace_txtadd = 13 -- Extra yspace due to text


OK,width,mix_w,mix_h,mix_spacing,dummy,StripThreshold,flagSort,flag2Dit,flagText = inputbox("4-Dither List Combos",
                                         
          "Screen Width",    width,  256,1200,0,
          "Swatch   Width: 2-64",  mix_w,  2,64,0,
          "Swatch  Height: 2-64",  mix_h,  2,64,0,
          "Swatch Spacing: 0-16",  mix_spacing,  0,16,0,
          "- Strip Rough Dithers, 100 = worst -",    0,0,0,4,
          "Strip Threshold: 1-100",  StripThreshold,  1.0,100.0,2,
          "Sort by Rating [0-100]", flagSort,0,1,0,
          "2 Col Dithers Only",     flag2Dit,0,1,0,
          "Write Text",             flagText,0,1,0

);


--
if OK then

  mix_xspace = mix_spacing
  mix_yspace = mix_spacing

-- Draw Combos  ( mixpal{r,g,b,v1,v2,v3,v4,rating,(brightness)}, pal{r,g,b,i} )
--
function drawCombos(mixpal,pal) -- Draw a chart of all possible dithers with rating, max 11 colors supported.

 local n,cols,dith,row,column,yp,xp,rate,x,y,c,w,h

 --local width,height,mix_ox, mix_oy, mix_w, mix_h, mix_xspace, mix_yspace, mix_columns

 if Text_Flag then
  mix_yspace = mix_yspace + mix_yspace_txtadd
 end

 mix_columns = math.floor((width-mix_ox+mix_xspace) / (mix_w+mix_xspace))

 w,h = getpicturesize()
 
 height = math.max(h, mix_oy + math.ceil(#mixpal / mix_columns) * (mix_h+mix_yspace))

 setpicturesize(width,math.min(height,1024+64))
 clearpicture(matchcolor(0,0,0))

 -- We only have a palette sorted dark2bright and a set of all possible 4-combos, we add the dither-brightness order
 for n = 0, #mixpal-1, 1 do 
  row = math.floor(n / mix_columns)
  column = n - row * mix_columns
  yp = mix_oy + (mix_h+mix_yspace)*row
  xp = mix_ox + (mix_w+mix_xspace)*column
  rate = mixpal[n+1][8]

  -- Let's enumerate dithers by the original combo/mixpal-index (so there's not two different sets depending on sorting)
  number = mixpal[n+1].index - 1

  if Text_Flag then
   txt(xp,yp+mix_h+1,""..number,1) 
   txt(xp,yp-5,""..rate,1)
  end 

  d4_.put4Dither(mix_w,mix_h,xp,yp,mixpal,n+1,putpicturepixel) -- Draw the dither

  if n%10 == 0 then updatescreen();if (waitbreak(0)==1) then return end; end

 end

end
--

-- Easy Text Interface
function txt(xpos,ypos,txt,small)
--
--font_f = font_mini_3x4
-- font_f:  Font data (function), will use built-in font by default, use anything undefined as argument, f.ex. 'f' 
-- txt:     Text
-- xpos,ypos: text screen location
hspace = 1
vspace = 1            -- Letter spacing, horizontal/vertical
maxwidth = 1000       --   Paragraph/Box width (i.e point where ONE MORE word is allowed)
col = {255,255,255}   -- RGB colorvalue {r,g,b}
--col = {0,0,0}   -- RGB colorvalue {r,g,b}
transparency = 0      -- transparency 0..1, 0 = No Transparency
linebreak_char = "|"  -- character that will function as linebreak
aa_str = 0.85            -- AA strength, 1 = Normal/full AA, 0 = No AA,Solid color. For Dark text on bright bg use about 0.5.
clear_flag = false    --  restore background when overwriting text (true/false). 
--             When doing text+shadow use true for shadow and false for text. 
--             Overwriting old text+shadow requires a restoration of the previous text (an extra leading print with 'true')

 use_font = font_f
 if small == 1 then use_font = font_mini_3x4; end

 text.write(use_font,txt,xpos,ypos,hspace,vspace,maxwidth,col,transparency,linebreak_char,aa_str,clear_flag)
end
-- text



 Pal = db.fixPalette(db.makePalList(256),1) -- Sorted Bright to Dark

 if #Pal <= LIMIT then

  Two_Flag  = false; if flag2Dit == 1 then  Two_Flag = true; end
  Sort_Flag = false; if flagSort == 1 then Sort_Flag = true; end
  Text_Flag = false; if flagText == 1 then Text_Flag = true; end

  MixPal = d4_.makeRatedMixpal(Pal,Gamma,Two_Flag,true) --  {r,g,b, v1,v2,v3,v4, rating, brightness}, last flag is messages

  if StripThreshold < 100 then
   org = #MixPal
   MixPal = d4_.stripMixpal(MixPal,StripThreshold) 
   t = "Stripped rough dithers with a rating higher than "..StripThreshold.."."
   t = t.."\n\n_Original: "..org.." Dithers"
   t = t.."\n\nRemaining: "..#MixPal.." Dithers".." (-"..(org-#MixPal)..")"
   --t = t.."\n\n Removed: "..(org-#MixPal).." Dithers"
   messagebox("Dither Stripping",t)
  end

  -- Estimate if combos can fit on screen...
  maxarea = width*1024
  ditarea = mix_oy*width + #MixPal * (mix_w+mix_xspace) * (mix_h+mix_yspace+mix_yspace_txtadd*flagText)
  quot = maxarea / ditarea

  if maxarea>ditarea then
    -- MixPal: Strip rough here...
   if Sort_Flag then
    statusmessage("Sorting...");waitbreak(0) 
    db.sorti(MixPal,8)
   end 
    -- MixPal: Keep best here...
    statusmessage("Drawing Combos...");waitbreak(0) 
    drawCombos(MixPal,Pal) -- Pal should be set to current palette
    else
     messagebox("Too Many Dithers!","Dither Combos: "..#MixPal.."\n\n With current settings about "..math.floor(#MixPal*quot).." could fit on screen.")
  end
 
   else messagebox("Too Many Colors in Palette!","Max number of Colors: "..LIMIT)
 end -- Limit

end -- ok
--


--if #MixPal<MAX_COMBOS then
--messagebox("Dither Combos: "..#MixPal.."\n Will only draw a max of.."..MAX_COMBOS.." dithers!")

local colors = {
        black = { '#2d303a' },
          bg0 = { '#1f212a' },
          bg1 = { '#31353f' },
          bg2 = { '#393f4a' },
          bg3 = { '#3b3f4c' },
         bg_d = { '#21252b' },
      bg_blue = { '#04FF07' },
    bg_yellow = { '#ebd09c' },
           fg = { '#abb2bf' },
       purple = { '#7e7edd' },
        green = { '#9aefea' },
       orange = { '#a571f4' },
         blue = { '#85b1e0' },
        white = { '#f5faff' },
       yellow = { '#f9f6c4' },
         cyan = { '#93ddfb' },
          red = { '#dda2f6' },
         grey = { '#5c6370' },
   light_grey = { '#848b98' },
    dark_cyan = { '#2b6f77' },
     dark_red = { '#993939' },
  dark_yellow = { '#93691d' },
  dark_purple = { '#8a3fa0' },
    diff_add =  { '#31392b' },
  diff_delete = { '#382b2c' },
  diff_change = { '#1c3448' },
    diff_text = { '#04FF07' },
    -- ariake colors
         bla0 = { '#1c1f26' },
         bla1 = { '#1F212b' },
         bla2 = { '#1D212b' },
         bla3 = { '#222530' },
         bla4 = { '#313343' },
         bla5 = { '#373B41' },
         whi5 = { '#555C77' },
         whi4 = { '#7D839B' },
         whi3 = { '#B9BED5' },
         whi2 = { '#F5FAFF' },
         whi1 = { '#F8F8F0' },
            r = { '#E46266' },
           rb = { '#DDA2F6' },
            g = { '#A3BE8C' },
           gb = { '#9BC497' },
            y = { '#F89F63' },
           yb = { '#EDD096' },
            b = { '#4D8ACB' },
           bb = { '#85B1E0' },
            m = { '#7E7EDD' },
           mb = { '#A571F4' },
            c = { '#93DDFB' },
           cb = { '#9AEFEA' },
}


local function select_colors()
    local selected = {}
    for k, v in pairs(colors) do selected[k] = v[1] end
		selected['none'] = 'NONE'
    return selected
end

return select_colors()

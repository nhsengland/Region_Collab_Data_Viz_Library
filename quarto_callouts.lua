--[[
This code is to create collapsible callouts in quarto documents and is used in the EoE UEC Fundamentals packs
--]]

function Div(el)
  if quarto.doc.isFormat("html") then
    callouts = {'callout-tip', 'callout-note', 'callout-warning', 
              'callout-caution', 'callout-important'}
    for key, val in pairs(callouts) do
      if el.classes:includes(val) then
        el.attributes["collapse"] = 'true'
        return el
      end
    end
  end
end 

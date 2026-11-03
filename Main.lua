
local p=game:GetService("Players").LocalPlayer
local pets={
{"Golden Dragon","Divine",1000000000},
{"Rainbow Phoenix","Eternal",850000000},
{"Shadow Cat","Legendary",500000000},
{"Frost Wolf","Mythical",650000000}
}

local g=Instance.new("ScreenGui",p:WaitForChild("PlayerGui"))
g.Name="AJJANS FINDER"
local f=Instance.new("Frame",g)
f.Size=UDim2.new(.85,0,.6,0)
f.Position=UDim2.new(.075,0,.2,0)
f.BackgroundColor3=Color3.fromRGB(20,20,28)
f.Active=true
f.Draggable=true
Instance.new("UICorner",f)

local t=Instance.new("TextLabel",f)
t.Size=UDim2.new(1,0,0,40)
t.Text="AJJANS FINDER 🥚"
t.TextColor3=Color3.new(1,1,1)
t.BackgroundTransparency=1
t.TextScaled=true

local s=Instance.new("TextBox",f)
s.Position=UDim2.new(0,10,0,50)
s.Size=UDim2.new(1,-20,0,35)
s.PlaceholderText="Search pets..."
s.Text=""

local r=Instance.new("TextLabel",f)
r.Position=UDim2.new(0,10,0,95)
r.Size=UDim2.new(1,-20,0,180)
r.BackgroundTransparency=1
r.TextColor3=Color3.new(1,1,1)
r.TextYAlignment=Enum.TextYAlignment.Top
r.TextWrapped=true

local function update()
 local list={}
 for _,v in ipairs(pets) do
  if v[1]:lower():find(s.Text:lower(),1,true) then
   table.insert(list,table.concat(v," | "))
  end
 end
 r.Text=table.concat(list,"\n")
end

s:GetPropertyChangedSignal("Text"):Connect(update)
update()


game.Players.LocalPlayer.Chatted:connect(function(msg)
time = string.sub(msg, 9)


local wlholder = {}

local function whitelist(msg)
for i,v in pairs(game.Players:GetPlayers()) do 
if v.Name:lower():sub(1,#wluser) == wluser:lower() then
wluser = v.Name
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(wluser .. " Has Been Added From The AutoKill List, Loading...", "All")
wait(1)
if not table.find(wlholder, v.Name) then
table.insert(wlholder, v.Name)
wait(1)
v.Chatted:connect(function(msg)
if v.Name == wluser then


end -- username check
end) -- message function
end -- table
end -- get entire user
end -- get players
end -- functions


 if string.sub(msg, 1, 3) == "/wl" then
  if wluser == nil then
   wluser = string.sub(msg, 5)
   whitelist(msg)
  end
end
 
 if string.sub(msg, 1, 6) == "ttestt" then
  game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Yeah im still responsive! (wl)", "All")
  end


 if string.sub(msg, 1, 5) == "/unwl" then
  if wluser ~= nil then
   game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(wluser .. " Has Been Removed From The AutoKill List!", "All")
   wluser = nil
  end
 end
end)

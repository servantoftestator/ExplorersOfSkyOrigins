--[[
    init.lua
    Created: 12/04/2023 12:47:19
    Description: Autogenerated script file for the map storm_cutscene_c.
]]--
-- Commonly included lua functions and data
require 'eos.common'

-- Package name
local storm_cutscene_c = {}

-- Local, localized strings table
-- Use this to display the named strings you added in the strings files for the map!
-- Ex:
--      local localizedstring = STRINGS.MapStrings['SomeStringName']


-------------------------------
-- Map Callbacks
-------------------------------
---storm_cutscene_c.Init(map)
--Engine callback function
function storm_cutscene_c.Init(map)

  --This will fill the localized strings table automatically based on the locale the game is 
  -- currently in. You can use the MapStrings table after this line!
  

end

---storm_cutscene_c.Enter(map)
--Engine callback function
function storm_cutscene_c.Enter(map)

  GAME:CutsceneMode(true)

  GROUND:Hide("PLAYER")

  GAME:FadeIn(120)
  
  GAME:WaitFrames(60)
  
  SOUND:PlaySE("Battle/EVT_CH01_Thunder")
  UI:WaitShowBG("BluffLightning", 1, 1)
  GAME:WaitFrames(5)
  UI:WaitHideBG(1)
  GAME:WaitFrames(5)
  UI:WaitShowBG("BluffLightning", 1, 1)
  GAME:WaitFrames(40)
  UI:WaitHideBG(1)
  
  GAME:WaitFrames(80)
  
  SOUND:PlaySE("Battle/EVT_CH01_Thunder")
  UI:WaitShowBG("BluffLightning", 1, 1)
  GAME:WaitFrames(5)
  UI:WaitHideBG(1)
  GAME:WaitFrames(5)
  UI:WaitShowBG("BluffLightning", 1, 1)
  GAME:WaitFrames(40)
  UI:WaitHideBG(1)
  
  GAME:WaitFrames(60)
  
  --fade out
  local coro1 = TASK:BranchCoroutine(function() GAME:FadeOut(false, 120) end)
  local coro2 = TASK:BranchCoroutine(function() SOUND:FadeOutSE("Ambient/AMB_Storm", 120) end)
  TASK:JoinCoroutines({coro1, coro2})
  
  --next scene
  GAME:EnterZone('hub', -1, 1, 1)

end

---storm_cutscene_c.Exit(map)
--Engine callback function
function storm_cutscene_c.Exit(map)


end

---storm_cutscene_c.Update(map)
--Engine callback function
function storm_cutscene_c.Update(map)


end

---storm_cutscene_c.GameSave(map)
--Engine callback function
function storm_cutscene_c.GameSave(map)


end

---storm_cutscene_c.GameLoad(map)
--Engine callback function
function storm_cutscene_c.GameLoad(map)

  GAME:FadeIn(20)

end

-------------------------------
-- Entities Callbacks
-------------------------------


return storm_cutscene_c


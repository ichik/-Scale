SetCVar("screenshotQuality", 6)
SetCVar("cameraDistanceMax", 15)
SetCVar("cameraDistanceMaxFactor", 2)

--[[ UIScale ]]
local Scales = {
    ["768"] = 1,
    ["800"] = 0.96,
    ["864"] = 0.88888888888888,
    ["900"] = 0.85333333333333,
    ["960"] = 0.8,
    ["1024"] = 0.8,
    ["1050"] = 0.85,
    ["1080"] = 0.71111111111111,
    ["1200"] = 0.64,
}
 local _, height = string.match((({GetScreenResolutions()})[GetCurrentResolution()] or ""), "(%d+).-(%d+)")
local scalefix = CreateFrame("Frame")
	scalefix:RegisterEvent("PLAYER_LOGIN")
	scalefix:SetScript("OnEvent", function()
		SetCVar("useUiScale", 1)
		SetCVar("uiScale", Scales[height])
end)
local imageUrl = "https://cdn.discordapp.com/attachments/1208266452096913428/1280528832042111010/plate2_1.webp?ex=67d2e5e8&is=67d19468&hm=445f3f224e826e02c4b1e8259166736d25f69fd55486df6aeb32213a23adf7ff&"

local textureDic = CreateRuntimeTxd('duiTxd')

local object = CreateDui(imageUrl, 540, 300)
local handle = GetDuiHandle(object)
CreateRuntimeTextureFromDuiHandle(textureDic, "duiTex", handle)

local plateTextures = {"plate01", "plate02", "plate03", "plate04", "plate05"}

for _, plate in ipairs(plateTextures) do
    AddReplaceTexture('vehshare', plate, 'duiTxd', 'duiTex')
end

local normalObject = CreateDui('https://i.imgur.com/Q3uw6V7.png', 540, 300)
local normalHandle = GetDuiHandle(normalObject)
CreateRuntimeTextureFromDuiHandle(textureDic, "duiTex2", normalHandle)

local normalPlateTextures = {"plate01_n", "plate02_n", "plate03_n", "plate04_n", "plate05_n"}

for _, plate in ipairs(normalPlateTextures) do
    AddReplaceTexture('vehshare', plate, 'duiTxd', 'duiTex2')
end

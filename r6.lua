
local plr = game.Players.LocalPlayer
local chr = plr.Character


local noDel = {
	["Body Colors"] = true,
	Pants = true,
	Shirt = true,
	Health = true,
	Humanoid = true,
	Animate = true,
	Head = true,
	HumanoidRootPart = true,
	["Left Arm"] = true,
	["Left Leg"] = true,
	["Right Arm"] = true,
	["Right Leg"] = true,
	Torso = true
}

for _, p in ipairs(chr:GetChildren()) do
	if not noDel[p.Name] then
		p:Destroy()
	end
end



for _, c in ipairs(chr:GetChildren()) do
	if noDel[c.Name] and c:IsA("BasePart") then
		c.Color = Color3.new(204/255, 142/255, 105/255)
	end
end


chr.Head.Mesh.MeshType = "Head"
chr.Head.Mesh.Scale = Vector3.new(1.25, 1.25, 1.25)


local t = Instance.new("CharacterMesh")
t.Parent = chr
t.BodyPart = Enum.BodyPart.Torso
t.MeshId = 48112070


function CreateMeshOnHead(size, meshId, textureId, offset)
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local head = character:WaitForChild("Head")


    local meshPart = Instance.new("MeshPart")
    meshPart.Size = size
    meshPart.MeshId = meshId
    meshPart.TextureID = textureId
    meshPart.Anchored = false
    meshPart.CanCollide = false
    meshPart.Name = "HeadAttachmentMesh"


    meshPart.CFrame = head.CFrame * CFrame.new(offset)


    meshPart.Parent = workspace


    local weld = Instance.new("WeldConstraint")
    weld.Part0 = meshPart
    weld.Part1 = head
    weld.Parent = meshPart


    meshPart.Parent = character
end

CreateMeshOnHead(
    Vector3.new(1, 1, 1),
    "rbxassetid://17224953712",
    "rbxassetid://17224006178",
    Vector3.new(0.105, 0.27, -0.155)
)

CreateMeshOnHead(
    Vector3.new(1, 1, 1),
    "rbxassetid://15308551514",
    "rbxassetid://12824494005",
    Vector3.new(0.019, -0.734, -0.015)
)

CreateMeshOnHead(
    Vector3.new(1, 1, 1),
    "rbxassetid://17106624162",
    "rbxassetid://12824494005",
    Vector3.new(0.019, -0.678, 0.122)
)

CreateMeshOnHead(
    Vector3.new(1, 1, 1),
    "rbxassetid://17106624162",
    "rbxassetid://12824494005",
    Vector3.new(0.019, -0.678, 0.122)
)

CreateMeshOnHead(
    Vector3.new(1, 1, 1),
    "rbxassetid://18150356000",
    "rbxassetid://18265938644",
    Vector3.new(0, 0, 0)
)

CreateMeshOnHead(
    Vector3.new(1, 1, 1),
    "rbxassetid://16266462022",
    "rbxassetid://16247693913",
    Vector3.new(0, -0.6, -0.25)
)

CreateMeshOnHead(
    Vector3.new(1, 1, 1),
    "rbxassetid://104217810692089",
    "rbxassetid://88185972367692",
    Vector3.new(0, -0.6, 0)
)

CreateMeshOnHead(
    Vector3.new(1, 1, 1),
    "rbxassetid://16264444783",
    "rbxassetid://16264444689",
    Vector3.new(0, -0.6, 0)
)

CreateMeshOnHead(
    Vector3.new(1.5, 1.5, 1.5),
    "rbxassetid://14786022859",
    "rbxassetid://14786029100",
    Vector3.new(0, -0.4, 0)
)


local pants = chr:FindFirstChildOfClass("Pants")
if not pants then
    pants = Instance.new("Pants")
    pants.Parent = chr
end
pants.PantsTemplate = "rbxassetid://4921473855"

local shirt = chr:FindFirstChildOfClass("Shirt")
if not shirt then
    shirt = Instance.new("Shirt")
    shirt.Parent = chr
end
shirt.ShirtTemplate = "rbxassetid://14341864332"



function CreateMeshOnTorso(size, meshId, textureId, offset, rotation)
	local player = game.Players.LocalPlayer
	local character = player.Character or player.CharacterAdded:Wait()
	local torso = character:WaitForChild("Torso")


	local meshPart = Instance.new("MeshPart")
	meshPart.Size = size
	meshPart.MeshId = meshId
	meshPart.TextureID = textureId
	meshPart.Anchored = false
	meshPart.CanCollide = false
	meshPart.Name = "TorsoAttachmentMesh"


	local rotationCFrame = CFrame.Angles(math.rad(rotation.X), math.rad(rotation.Y), math.rad(rotation.Z))
	meshPart.CFrame = torso.CFrame * CFrame.new(offset) * rotationCFrame


	meshPart.Parent = workspace


	local weld = Instance.new("WeldConstraint")
	weld.Part0 = meshPart
	weld.Part1 = torso
	weld.Parent = meshPart


	meshPart.Parent = character
end



CreateMeshOnTorso(
	Vector3.new(1, 1, 1),
	"rbxassetid://16738154827",
	"rbxassetid://16738154903",
	Vector3.new(0, -1.6, 0),
	Vector3.new(0, 0, 0)
)


CreateMeshOnTorso(
	Vector3.new(1, 1, 1),
	"rbxassetid://17358738564",
	"rbxassetid://17358740726",
	Vector3.new(0, -0.85, -0.035),
	Vector3.new(180, 0, 180)
)

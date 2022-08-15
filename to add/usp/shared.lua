if SERVER then
	AddCSLuaFile( "shared.lua" )
	resource.AddFile("tflppy/vgui/ttt/icon_usp.vmt")
	resource.AddFile("tflppy/vgui/ttt/icon_usp.vtf")
end

if CLIENT then
	SWEP.PrintName = "USP"
	SWEP.Slot		= 1 -- add 1 to get the slot number key
	SWEP.Icon = "tflippy/vgui/ttt/icon_usp"
	
	SWEP.ViewModelFOV  = 54
	SWEP.ViewModelFlip = false
end

SWEP.Base	= "weapon_tttbase"

SWEP.HoldType		= "pistol"
SWEP.AutoSpawnable	= false
SWEP.AllowDrop 		= true
SWEP.IsSilent 		= false
SWEP.NoSights 		= false
SWEP.Kind 			= WEAPON_PISTOL

SWEP.Primary.Delay		= 0.145
SWEP.Primary.Recoil		= 1.35
SWEP.Primary.Automatic	= false
SWEP.Primary.SoundLevel	= 90

SWEP.Primary.ClipSize	 = 20
SWEP.Primary.ClipMax	 = 60
SWEP.Primary.DefaultClip = 20
SWEP.Primary.Ammo		 = "pistol"
SWEP.AmmoEnt 			 = "item_ammo_pistol_ttt"
SWEP.HeadshotMultiplier  = 1.75
--SWEP.CanBuy = {}

SWEP.Primary.Damage		= 24
SWEP.Primary.Cone		= 0.01
SWEP.Primary.NumShots 	= 0

SWEP.IronSightsPos = Vector(2.70, -0.00, 3.27)
SWEP.IronSightsAng = Vector(0.56, -0.01, 0.00)

SWEP.UseHands	= true
SWEP.ViewModel	= "models/weapons/cstrike/c_pist_usp.mdl"
SWEP.WorldModel	= "models/weapons/w_pist_usp.mdl"
SWEP.Primary.Sound = Sound("Weapon_USP.Single")
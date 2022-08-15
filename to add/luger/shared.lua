if SERVER then
   AddCSLuaFile( "shared.lua" )
   resource.AddFile("tflppy/vgui/ttt/icon_luger.vmt")
   resource.AddFile("tflppy/vgui/ttt/icon_luger.vtf")
end

if CLIENT then
   SWEP.PrintName = "Luger"
   SWEP.Slot      = 1 -- add 1 to get the slot number key
   SWEP.Icon = "tflippy/vgui/ttt/icon_luger"
   
   SWEP.ViewModelFOV  = 80
   SWEP.ViewModelFlip = true
end

SWEP.Base				= "weapon_tttbase"

SWEP.HoldType			= "pistol"
SWEP.AutoSpawnable      = false
SWEP.AllowDrop = true
SWEP.IsSilent = false
SWEP.NoSights = false
SWEP.Kind = WEAPON_PISTOL

SWEP.Primary.Delay       = 0.45
SWEP.Primary.Recoil      = 3.75
SWEP.Primary.Automatic   = true
SWEP.Primary.SoundLevel	 = 85

SWEP.Primary.ClipSize    = 8
SWEP.Primary.ClipMax     = 60
SWEP.Primary.DefaultClip = 8
SWEP.Primary.Ammo        = "pistol"
SWEP.AmmoEnt = "item_ammo_pistol_ttt"
SWEP.HeadshotMultiplier = 2.4
--SWEP.CanBuy = {}

SWEP.Primary.Damage      = 28
SWEP.Primary.Cone        = 0.008
SWEP.Primary.NumShots 	 = 0

SWEP.IronSightsPos = Vector(2.70, -3.12, 3.27)
SWEP.IronSightsAng = Vector(0.56, -0.01, 0.00)

SWEP.UseHands	= false
SWEP.ViewModel	= "models/weapons/v_p08_luger.mdl"
SWEP.WorldModel	= "models/weapons/w_luger_p08.mdl"
SWEP.Primary.Sound = Sound("weapon_luger.single")



function SWEP:SetZoom(state)
   if CLIENT then return end
   if not (IsValid(self.Owner) and self.Owner:IsPlayer()) then return end
   if state then
      self.Owner:SetFOV(80, 0.2)
   else
      self.Owner:SetFOV(0, 0.2)
   end
end

-- Add some zoom to ironsights for this gun
function SWEP:SecondaryAttack()
   if not self.IronSightsPos then return end
   if self:GetNextSecondaryFire() > CurTime() then return end

   bIronsights = not self:GetIronsights()

   self:SetIronsights( bIronsights )

   if SERVER then
      self:SetZoom( bIronsights )
   end

   self:SetNextSecondaryFire( CurTime() + 0.3 )
end

function SWEP:PreDrop()
   self.Primary.DefaultClip = 0
   self:SetZoom(false)
   self:SetIronsights(false)
   return self.BaseClass.PreDrop(self)
end

function SWEP:Reload()
    if (self:Clip1() == self.Primary.ClipSize or
        self.Owner:GetAmmoCount(self.Primary.Ammo) <= 0) then
       return
    end
    self:DefaultReload(ACT_VM_RELOAD)
    self:SetIronsights(false)
    self:SetZoom(false)
end

function SWEP:Holster()
   self:SetIronsights(false)
   self:SetZoom(false)
   return true
end


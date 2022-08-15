if SERVER then
   resource.AddFile("materials/vgui/ttt/mp9.png")
end

SWEP.Gun                    = ("m9k_mp9") 
SWEP.Category				= "M9K Submachine Guns"
SWEP.Author				    = ""
SWEP.Contact				= ""
SWEP.Purpose				= ""
SWEP.Instructions			= ""
SWEP.MuzzleAttachment		= "1" 	
SWEP.ShellEjectAttachment	= "2" 	
SWEP.PrintName				= "MP9"		
SWEP.Slot				    = 2				
SWEP.SlotPos				= 3			
SWEP.DrawAmmo				= true		
SWEP.DrawWeaponInfoBox		= false	
SWEP.BounceWeaponIcon   	= false	
SWEP.DrawCrosshair			= false		
SWEP.Weight				    = 30			
SWEP.AutoSwitchTo			= true
SWEP.AutoSwitchFrom			= true		
SWEP.HoldType 				= "ar2"		

SWEP.ViewModelFOV			= 70
SWEP.ViewModelFlip			= true
SWEP.ViewModel				= "models/weapons/v_b_t_mp9.mdl"	
SWEP.WorldModel				= "models/weapons/w_brugger_thomet_mp9.mdl"	
SWEP.Icon                   = "materials/vgui/ttt/mp9.png"
SWEP.Base				    = "weapon_tttbase"
SWEP.Spawnable				= true
SWEP.AdminSpawnable			= true
SWEP.AutoSpawnable          = true

SWEP.Kind     = WEAPON_HEAVY
SWEP.WeaponID = AMMO_MAC10

SWEP.Primary.Sound			= Sound("Weapon_mp9.Single")		
SWEP.Primary.RPM			= 770			
SWEP.Primary.ClipSize		= 25		
SWEP.Primary.DefaultClip	= 25		
SWEP.Primary.ClipMax        = 50

SWEP.Primary.Delay          = 0.10
SWEP.Primary.Cone           = 0.028

SWEP.Primary.KickUp			= 0.4		
SWEP.Primary.KickDown		= 0.2		
SWEP.Primary.KickHorizontal	= 0.2	
SWEP.Primary.Automatic		= true		
SWEP.Primary.Ammo			= "smg1"
SWEP.AmmoEnt                = "item_ammo_smg1_ttt"		
SWEP.FiresUnderwater        = true	
SWEP.IsSilent               = true

SWEP.Secondary.IronFOV		= 55		
SWEP.data 				    = {}			
SWEP.data.ironsights		= 1

SWEP.Primary.NumShots	    = 1		
SWEP.Primary.Damage		    = 16
SWEP.HeadshotMultiplier = 2.09
SWEP.Primary.Spread		    = .025	
SWEP.Primary.IronAccuracy   = .021 

SWEP.IronSightsPos = Vector(4.073, -3.438, 1.259)
SWEP.IronSightsAng = Vector(0, 0, 0)
SWEP.SightsPos = Vector(4.073, -3.438, 1.259)
SWEP.SightsAng = Vector(0, 0, 0)
SWEP.RunSightsPos = Vector(-3.708, -6.172, 0)
SWEP.RunSightsAng = Vector(-7.661, -62.523, 0)

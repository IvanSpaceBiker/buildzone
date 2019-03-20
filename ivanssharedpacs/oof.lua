ITEM.Name = 'OOF death sound'
ITEM.Price = 250
ITEM.Model = 'models/pacagma/mha/fumikage_tokoyami/fumikage_tokoyami_hero_player.mdl'
ITEM.Description = 'I mean, TECHNICALLY it\s not advertising....'

function ITEM:OnEquip(ply, modifications)
	if not ply._OldModel then
		ply._OldModel = ply:GetModel()
		ply:ConCommand( "pac_load_url \"https://raw.githubusercontent.com/IvanSpaceBiker/buildzone/master/ivanssharedpacs/tokoyami.txt\"" )
		ply:ConCommand( "pac_wear_parts" )
	end
	
	timer.Simple(1, function() ply:SetModel(self.Model) end)
	ply:ConCommand( "pac_load_url \"https://raw.githubusercontent.com/IvanSpaceBiker/buildzone/master/ivanssharedpacs/tokoyami.txt\"")
	ply:ConCommand( "pac_wear_parts" )
end

function ITEM:OnHolster(ply)
	if ply._OldModel then
		ply:SetModel(ply._OldModel)
		ply:ConCommand( "pac_clear_parts" )
		ply:ConCommand( "pac_wear_parts" )
	end
end

function ITEM:PlayerSetModel(ply)
	ply:SetModel(self.Model)
	ply:ConCommand( "pac_load_url \"https://raw.githubusercontent.com/IvanSpaceBiker/buildzone/master/ivanssharedpacs/tokoyami.txt\"")
	ply:ConCommand( "pac_wear_parts" )
end

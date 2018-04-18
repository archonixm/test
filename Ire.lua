IncludeFile("Lib\\TOIR_SDK.lua")

Irelia = class()

function OnLoad()
    if GetChampName(GetMyChamp()) == "Irelia" then
		Irelia:Assasin()
		Irelia:__init()
	end
end

function Irelia:__init()

    W_SPELLS = { -- Yea boiz and grillz its all right here.......
    ["FizzMarinerDoom"]                      = {Spellname ="FizzMarinerDoom",Name = "Fizz", Spellslot =_R},
    ["AatroxE"]                      = {Spellname ="AatroxE",Name= "Aatrox", Spellslot =_E},
    ["AhriOrbofDeception"]                      = {Spellname ="AhriOrbofDeception",Name = "Ahri", Spellslot =_Q},
    ["AhriFoxFire"]                      = {Spellname ="AhriFoxFire",Name = "Ahri", Spellslot =_W},
    ["AhriSeduce"]                      = {Spellname ="AhriSeduce",Name = "Ahri", Spellslot =_E},
    ["AhriTumble"]                      = {Spellname ="AhriTumble",Name = "Ahri", Spellslot =_R},
    ["FlashFrost"]                      = {Spellname ="FlashFrost",Name = "Anivia", Spellslot =_Q},
    ["Anivia2"]                      = {Spellname ="Frostbite",Name = "Anivia", Spellslot =_E},
    ["Disintegrate"]                      = {Spellname ="Disintegrate",Name = "Annie", Spellslot =_Q},
    ["Volley"]                      = {Spellname ="Volley",Name ="Ashe", Spellslot =_W},
    ["EnchantedCrystalArrow"]                      = {Spellname ="EnchantedCrystalArrow",Name ="Ashe", Spellslot =_R},
    ["BandageToss"]                      = {Spellname ="BandageToss",Name ="Amumu",Spellslot =_Q},
    ["RocketGrabMissile"]                      = {Spellname ="RocketGrabMissile",Name ="Blitzcrank",Spellslot =_Q},
    ["BrandBlaze"]                      = {Spellname ="BrandBlaze",Name ="Brand", Spellslot =_Q},
    ["BrandWildfire"]                      = {Spellname ="BrandWildfire",Name ="Brand", Spellslot =_R},
    ["BraumQ"]                      = {Spellname ="BraumQ",Name ="Braum",Spellslot =_Q},
    ["BraumRWapper"]                      = {Spellname ="BraumRWapper",Name ="Braum",Spellslot =_R},
    ["CaitlynPiltoverPeacemaker"]                      = {Spellname ="CaitlynPiltoverPeacemaker",Name ="Caitlyn",Spellslot =_Q},
    ["CaitlynEntrapment"]                      = {Spellname ="CaitlynEntrapment",Name ="Caitlyn",Spellslot =_E},
    ["CaitlynAceintheHole"]                      = {Spellname ="CaitlynAceintheHole",Name ="Caitlyn",Spellslot =_R},
    ["CassiopeiaMiasma"]                      = {Spellname ="CassiopeiaMiasma",Name ="Cassiopiea",Spellslot =_W},
    ["CassiopeiaTwinFang"]                      = {Spellname ="CassiopeiaTwinFang",Name ="Cassiopiea",Spellslot =_E},
    ["PhosphorusBomb"]                      = {Spellname ="PhosphorusBomb",Name ="Corki",Spellslot =_Q},
    ["MissileBarrage"]                      = {Spellname ="MissileBarrage",Name ="Corki",Spellslot =_R},
    ["DianaArc"]                      = {Spellname ="DianaArc",Name ="Diana",Spellslot =_Q},
    ["InfectedCleaverMissileCast"]                      = {Spellname ="InfectedCleaverMissileCast",Name ="DrMundo",Spellslot =_Q},
    ["dravenspinning"]                      = {Spellname ="dravenspinning",Name ="Draven",Spellslot =_Q},
    ["DravenDoubleShot"]                      = {Spellname ="DravenDoubleShot",Name ="Draven",Spellslot =_E},
    ["DravenRCast"]                      = {Spellname ="DravenRCast",Name ="Draven",Spellslot =_R},
    ["EliseHumanQ"]                      = {Spellname ="EliseHumanQ",Name ="Elise",Spellslot =_Q},
    ["EliseHumanE"]                      = {Spellname ="EliseHumanE",Name ="Elise",Spellslot =_E},
    ["EvelynnQ"]                      = {Spellname ="EvelynnQ",Name ="Evelynn",Spellslot =_Q},
    ["EzrealMysticShot"]                      = {Spellname ="EzrealMysticShot",Name ="Ezreal",Spellslot =_Q,},
    ["EzrealEssenceFlux"]                      = {Spellname ="EzrealEssenceFlux",Name ="Ezreal",Spellslot =_W},
    ["EzrealArcaneShift"]                      = {Spellname ="EzrealArcaneShift",Name ="Ezreal",Spellslot =_R},
    ["GalioRighteousGust"]                      = {Spellname ="GalioRighteousGust",Name ="Galio",Spellslot =_E},
    ["GalioResoluteSmite"]                      = {Spellname ="GalioResoluteSmite",Name ="Galio",Spellslot =_Q},
    ["Parley"]                      = {Spellname ="Parley",Name ="Gangplank",Spellslot =_Q},
    ["GnarQ"]                      = {Spellname ="GnarQ",Name ="Gnar",Spellslot =_Q},
    ["GravesClusterShot"]                      = {Spellname ="GravesClusterShot",Name ="Graves",Spellslot =_Q},
    ["GravesChargeShot"]                      = {Spellname ="GravesChargeShot",Name ="Graves",Spellslot =_R},
    ["HeimerdingerW"]                      = {Spellname ="HeimerdingerW",Name ="Heimerdinger",Spellslot =_W},
    ["IreliaTranscendentBlades"]                      = {Spellname ="IreliaTranscendentBlades",Name ="Irelia",Spellslot =_R},
    ["HowlingGale"]                      = {Spellname ="HowlingGale",Name ="Janna",Spellslot =_Q},
    ["JayceToTheSkies"]                      = {Spellname ="JayceToTheSkies" or "jayceshockblast",Name ="Jayce",Spellslot =_Q},
    ["jayceshockblast"]                      = {Spellname ="JayceToTheSkies" or "jayceshockblast",Name ="Jayce",Spellslot =_Q},
    ["JinxW"]                      = {Spellname ="JinxW",Name ="Jinx",Spellslot =_W},
    ["JinxR"]                      = {Spellname ="JinxR",Name ="Jinx",Spellslot =_R},
    ["KalistaMysticShot"]                      = {Spellname ="KalistaMysticShot",Name ="Kalista",Spellslot =_Q},
    ["KarmaQ"]                      = {Spellname ="KarmaQ",Name ="Karma",Spellslot =_Q},
    ["NullLance"]                      = {Spellname ="NullLance",Name ="Kassidan",Spellslot =_Q},
    ["KatarinaR"]                      = {Spellname ="KatarinaR",Name ="Katarina",Spellslot =_R},
    ["LeblancChaosOrb"]                      = {Spellname ="LeblancChaosOrb",Name ="Leblanc",Spellslot =_Q},
    ["LeblancSoulShackle"]                      = {Spellname ="LeblancSoulShackle" or "LeblancSoulShackleM",Name ="Leblanc",Spellslot =_E},
    ["LeblancSoulShackleM"]                      = {Spellname ="LeblancSoulShackle" or "LeblancSoulShackleM",Name ="Leblanc",Spellslot =_E},
    ["BlindMonkQOne"]                      = {Spellname ="BlindMonkQOne",Name ="Leesin",Spellslot =_Q},
    ["LeonaZenithBladeMissle"]                      = {Spellname ="LeonaZenithBladeMissle",Name ="Leona",Spellslot =_E},
    ["LissandraE"]                      = {Spellname ="LissandraE",Name ="Lissandra",Spellslot =_E},
    ["LucianR"]                      = {Spellname ="LucianR",Name ="Lucian",Spellslot =_R},
    ["LuxLightBinding"]                      = {Spellname ="LuxLightBinding",Name ="Lux",Spellslot =_Q},
    ["LuxLightStrikeKugel"]                      = {Spellname ="LuxLightStrikeKugel",Name ="Lux",Spellslot =_E},
    ["MissFortuneBulletTime"]                      = {Spellname ="MissFortuneBulletTime",Name ="Missfortune",Spellslot =_R},
    ["DarkBindingMissile"]                      = {Spellname ="DarkBindingMissile",Name ="Morgana",Spellslot =_Q},
    ["NamiR"]                      = {Spellname ="NamiR",Name ="Nami",Spellslot =_R},
    ["JavelinToss"]                      = {Spellname ="JavelinToss",Name ="Nidalee",Spellslot =_Q},
    ["NocturneDuskbringer"]                      = {Spellname ="NocturneDuskbringer",Name ="Nocturne",Spellslot =_Q},
    ["Pantheon_Throw"]                      = {Spellname ="Pantheon_Throw",Name ="Pantheon",Spellslot =_Q},
    ["QuinnQ"]                      = {Spellname ="QuinnQ",Name ="Quinn",Spellslot =_Q},
    ["RengarE"]                      = {Spellname ="RengarE",Name ="Rengar",Spellslot =_E},
    ["rivenizunablade"]                      = {Spellname ="rivenizunablade",Name ="Riven",Spellslot =_R},
    ["Overload"]                      = {Spellname ="Overload",Name ="Ryze",Spellslot =_Q},
    ["SpellFlux"]                      = {Spellname ="SpellFlux",Name ="Ryze",Spellslot =_E},
    ["SejuaniGlacialPrisonStart"]                      = {Spellname ="SejuaniGlacialPrisonStart",Name ="Sejuani",Spellslot =_R},
    ["SivirQ"]                      = {Spellname ="SivirQ",Name ="Sivir",Spellslot =_Q},
    ["SivirE"]                      = {Spellname ="SivirE",Name ="Sivir",Spellslot =_E},
    ["SkarnerFractureMissileSpell"]                      = {Spellname ="SkarnerFractureMissileSpell",Name ="Skarner",Spellslot =_E},
    ["SonaCrescendo"]                      = {Spellname ="SonaCrescendo",Name ="Sona",Spellslot =_R},
    ["SwainDecrepify"]                      = {Spellname ="SwainDecrepify",Name ="Swain",Spellslot =_Q},
    ["SwainMetamorphism"]                      = {Spellname ="SwainMetamorphism",Name ="Swain",Spellslot =_R},
    ["SyndraE"]                      = {Spellname ="SyndraE",Name ="Syndra",Spellslot =_E},
    ["SyndraR"]                      = {Spellname ="SyndraR",Name ="Syndra",Spellslot =_R},
    ["TalonRake"]                      = {Spellname ="TalonRake",Name ="Talon",Spellslot =_W},
    ["TalonShadowAssault"]                      = {Spellname ="TalonShadowAssault",Name ="Talon",Spellslot =_R},
    ["BlindingDart"]                      = {Spellname ="BlindingDart",Name ="Teemo",Spellslot =_Q},
    ["Thresh"]                      = {Spellname ="ThreshQ",Name ="Thresh",Spellslot =_Q},
    ["BusterShot"]                      = {Spellname ="BusterShot",Name ="Tristana",Spellslot =_R},
    ["VarusQ"]                      = {Spellname ="VarusQ",Name ="Varus",Spellslot =_Q},
    ["VarusR"]                      = {Spellname ="VarusR",Name ="Varus",Spellslot =_R},
    ["VayneCondemm"]                      = {Spellname ="VayneCondemm",Name ="Vayne",Spellslot =_E},
    ["VeigarPrimordialBurst"]                      = {Spellname ="VeigarPrimordialBurst",Name ="Veigar",Spellslot =_R},
    ["WildCards"]                      = {Spellname ="WildCards",Name ="Twistedfate",Spellslot =_Q},
    ["VelkozQ"]                      = {Spellname ="VelkozQ",Name ="Velkoz",Spellslot =_Q},
    ["VelkozW"]                      = {Spellname ="VelkozW",Name ="Velkoz",Spellslot =_W},
    ["ViktorDeathRay"]                      = {Spellname ="ViktorDeathRay",Name ="Viktor",Spellslot =_E},
    ["XerathArcanoPulseChargeUp"]                      = {Spellname ="XerathArcanoPulseChargeUp",Name ="Xerath",Spellslot =_Q},
    ["ZedShuriken"]                      = {Spellname ="ZedShuriken",Name ="Zed",Spellslot =_Q},
    ["ZiggsR"]                      = {Spellname ="ZiggsR",Name ="Ziggs",Spellslot =_R},
    ["ZiggsQ"]                      = {Spellname ="ZiggsQ",Name ="Ziggs",Spellslot =_Q},
    ["ZyraGraspingRoots"]                      = {Spellname ="ZyraGraspingRoots",Name ="Zyra",Spellslot =_E}

}
end

function Irelia:Assasin()

    self.EnemyMinions = minionManager(MINION_ENEMY, 2000, myHero, MINION_SORT_HEALTH_ASC)
    self.Predc = VPrediction(true)

    self.WBuff = false
  	self.WEndBuff = 0
  	self.WTimer = 0
  	self.Trinity = false
  	self.aaTimer = 0
  	self.aaTimeReady = 0
  	self.windUP = 0
  
    self:EveMenus()
  
    self.Q = Spell(_Q, 645)
    self.W = Spell(_W, 825)
    self.E = Spell(_E, 650)
    self.R = Spell(_R, 1000)
  
    self.Q:SetTargetted()
    self.W:SetActive()
    self.E:SetTargetted()
    self.R:SetSkillShot(0.25, math.huge, 150 ,false)
  
    Callback.Add("Tick", function() self:OnTick() end) 
    Callback.Add("Draw", function(...) self:OnDraw(...) end)
    Callback.Add("DrawMenu", function(...) self:OnDrawMenu(...) end)
    Callback.Add("Update", function(...) self:OnUpdate(...) end)
    Callback.Add("UpdateBuff", function(...) self:OnUpdateBuff(...) end)
    Callback.Add("RemoveBuff", function(...) self:OnRemoveBuff(...) end)
	Callback.Add("ProcessSpell", function(...) self:OnProcessSpell(...) end)
  
  end 

  --SDK {{Toir+}}
function Irelia:MenuBool(stringKey, bool)
	return ReadIniBoolean(self.menu, stringKey, bool)
end

function Irelia:MenuSliderInt(stringKey, valueDefault)
	return ReadIniInteger(self.menu, stringKey, valueDefault)
end

function Irelia:MenuKeyBinding(stringKey, valueDefault)
	return ReadIniInteger(self.menu, stringKey, valueDefault)
end

function Irelia:MenuComboBox(stringKey, valueDefault)
	return ReadIniInteger(self.menu, stringKey, valueDefault)
end


function Irelia:OnUpdate()
------------------------
end 

function Irelia:EveMenus()
    self.menu = "Ireliatest1"
    --Combo [[ Irelia ]]
    self.CQ = self:MenuBool("Combo Q", true)
    self.LogicQGap = self:MenuBool("Logic Q [GapMinion]", true)
	  self.CW = self:MenuBool("Combo W", true)
    self.CE = self:MenuBool("Combo E", true)
    
    --Lane
    self.LQ = self:MenuBool("Lane Q", true)
    self.LMana = self:MenuSliderInt("Mana Lane %", 30)

    --Add R
    self.CR = self:MenuBool("Combo R", true)
    self.UseRmy = self:MenuSliderInt("HP Minimum %", 35)

    --Stun
    self.StunI = self:MenuSliderInt("HP Minimum %", 35)
    self.ModeE = self:MenuComboBox("Mode [E]", 1)

    --KillSteal [[ Irelia ]]
    self.KQ = self:MenuBool("KillSteal > Q", true)
    self.KE = self:MenuBool("KillSteal > E", true)
    self.KR = self:MenuBool("KillSteal > R", true)

    --Draws [[ Irelia ]]
    self.DQWER = self:MenuBool("Draw On/Off", true)
    self.DQ = self:MenuBool("Draw Q", true)
    self.DE = self:MenuBool("Draw E", true)
    self.DR = self:MenuBool("Draw R", true)

    --Misc [[ Irelia ]]
    --self.LogicR = self:MenuBool("Use Logic R?", true)]]

    --KeyStone [[ Irelia ]]
	  self.Combo = self:MenuKeyBinding("Combo", 32)
    self.LaneClear = self:MenuKeyBinding("Lane Clear", 86)
    self.LastHit = self:MenuKeyBinding("Last Hit", 88)
end

function Irelia:OnDrawMenu()
	if Menu_Begin(self.menu) then
		if Menu_Begin("Combo") then
            self.CQ = Menu_Bool("Combo Q", self.CQ, self.menu)
            self.LogicQGap = Menu_Bool("Logic Q [GapMinion]", self.LogicQGap, self.menu)
			self.CW = Menu_Bool("Combo W", self.CW, self.menu)
			Menu_End()
        end
        if Menu_Begin("LaneClear") then
			self.LQ = Menu_Bool("Lane Q", self.LQ, self.menu)
            self.LMana = Menu_SliderInt("Mana Lane %", self.LMana, 0, 100, self.menu)
			Menu_End()
        end
        if Menu_Begin("LastHit") then
			self.LQ = Menu_Bool("Hit Q", self.LQ, self.menu)
            self.LMana = Menu_SliderInt("Mana Hit %", self.LMana, 0, 100, self.menu)
			Menu_End()
        end
        if Menu_Begin("[E] Combo") then
            self.CE = Menu_Bool("Combo E", self.CE, self.menu)
            self.ModeE = Menu_ComboBox("Mode [E]", self.ModeE, "Always\0Only with the brand\0\0", self.menu)
            self.StunI = Menu_SliderInt("HP Stun", self.LMana, 0, 100, self.menu)
			Menu_End()
        end
        if Menu_Begin("Draws") then
            self.DQWER = Menu_Bool("Draw On/Off", self.DQWER, self.menu)
            self.DQ = Menu_Bool("Draw Q", self.DQ, self.menu)
            self.DE = Menu_Bool("Draw E", self.DE, self.menu)
			self.DR = Menu_Bool("Draw R", self.DR, self.menu)
			Menu_End()
        end
        if Menu_Begin("Configuration [R]") then
            self.CR = Menu_Bool("Combo R", self.CR, self.menu)
			Menu_End()
        end
        if Menu_Begin("Logic [R]") then
            self.UseRLogic = Menu_Bool("Logic R", self.UseRLogic, self.menu)
            self.UseRmy = Menu_SliderInt("My HP Minimum %", self.UseRmy, 0, 100, self.menu)
			Menu_End()
        end
        if Menu_Begin("KillSteal") then
            self.KQ = Menu_Bool("KillSteal > Q", self.KQ, self.menu)
            self.KE = Menu_Bool("KillSteal > E", self.KE, self.menu)
            self.KR = Menu_Bool("KillSteal > R", self.KR, self.menu)
			Menu_End()
        end
		if Menu_Begin("KeyStone") then
            self.Combo = Menu_KeyBinding("Combo", self.Combo, self.menu)
            self.LastHit = Menu_KeyBinding("Last Hit", self.LastHit, self.menu)
            self.LaneClear = Menu_KeyBinding("Lane Clear", self.LaneClear, self.menu)
			Menu_End()
		end
		Menu_End()
	end
end

function Irelia:OnProcessSpell(unit, spell)
    if GetChampName(GetMyChamp()) ~= "Irelia" then return end
	  if self.W:IsReady()  and IsValidTarget(unit.Addr, 825) then
		if spell and unit.IsEnemy then
			if myHero == spell.target and spell.Name:lower():find("attack") and (unit.AARange >= 450 or unit.IsRanged) then
				local wPos = Vector(myHero) + (Vector(unit) - Vector(myHero)):Normalized() * self.W.range
				CastSpellToPredictionPos(myHero.Addr, _W) 
				--timer.Simple( 0.75, function() __PrintTextGame( "Hello World" ) end )
				--DelayAction(function()  ReleaseSpellToPredictionPos(Enemy1.Addr, _W) end, 0.75)
				DelayAction(function()  ReleaseSpellToPredictionPos(wPos.x, wPos.z, _W) end, 0.75)
				--CastSpellToPos(wPos.x, wPos.z, _W)
			end
			spell.endPos = {x=spell.DestPos_x, y=spell.DestPos_y, z=spell.DestPos_z}
			if W_SPELLS[spell.Name] and not unit.IsMe and GetDistance(unit) <= GetDistance(unit, spell.endPos) then
				CastSpellToPredictionPos(myHero.Addr, _W) 
				--timer.Simple( 0.75, function() __PrintTextGame( "Hello World" ) end )
				--DelayAction(function()  ReleaseSpellToPredictionPos(Enemy1.Addr, _W) end, 0.75)
				DelayAction(function()  ReleaseSpellToPredictionPos(wPos.x, wPos.z, _W) end, 0.75)
				--CastSpellToPos(wPos.x, wPos.z, _W)
			end
		end
	end
end

function Irelia:EnemyMinionsTbl() --SDK Toir+
    GetAllUnitAroundAnObject(myHero.Addr, 2000)
    local result = {}
    for i, obj in pairs(pUnit) do
        if obj ~= 0  then
            local minions = GetUnit(obj)
            if IsEnemy(minions.Addr) and not IsDead(minions.Addr) and not IsInFog(minions.Addr) and GetType(minions.Addr) == 1 or GetType(minions.Addr) == 3 then
                table.insert(result, minions)
            end
        end
    end
    return result
end


function Irelia:FarmeQ()
    for i ,minion in pairs(self:EnemyMinionsTbl()) do
        if minion ~= 0 then
       if GetPercentMP(myHero.Addr) >= self.LMana and self.LQ and IsValidTarget(minion.Addr, self.Q.range) and GetDamage("Q", minion) > minion.HP and not self:IsSafe(minion) then
	      -- local owai = GetDamage("Q", minion)
	    	--__PrintTextGame(owai)
        CastSpellTarget(minion.Addr, Q)
       end 
       end 
    end 
end

function Irelia:LaneFarmeQ()
    for i ,minion in pairs(self:EnemyMinionsTbl()) do
        if minion ~= 0 then
       if GetPercentMP(myHero.Addr) >= self.LMana and self.LQ and IsValidTarget(minion.Addr, self.Q.range) and GetDamage("Q", minion) > minion.HP and not self:IsSafe(minion) then
	          CastSpellTarget(minion.Addr, Q)
       end 
       end 
    end 
end 

function Irelia:OnUpdateBuff(Object, buff)
    if Object == myHero then
		if buff.Name == "ireliahitenstylecharged" then
			self.WEndBuff = buff.EndT
			self.WBuff = true
		end

		if buff.Name == "sheen" then
			self.Trinity = true
		end
	end
end


function Irelia:OnRemoveBuff(Object, buff)
    if Object == myHero then
		if buff.Name == "ireliahitenstylecharged" then
			self.WBuff = false
		end

		if buff.Name == "sheen" then
			self.Trinity = false
		end
	end
end


function Irelia:DashEndPos(target)
    local CountMinion = 0

    if GetDistance(target) < 410 then
        CountMinion = Vector(myHero):Extended(Vector(target), 485)
    else
        CountMinion = Vector(myHero):Extended(Vector(target), GetDistance(target) + 65)
    end
    if GetDistance(target) < 510 then
        CountMinion = Vector(myHero):Extended(Vector(target), 585)
    else
        CountMinion = Vector(myHero):Extended(Vector(target), GetDistance(target) + 130)
    end
    if GetDistance(target) < 610 then
        CountMinion = Vector(myHero):Extended(Vector(target), 600)
    else
        CountMinion = Vector(myHero):Extended(Vector(target), GetDistance(target) + 200)
    end
    if GetDistance(target) < 710 then
        CountMinion = Vector(myHero):Extended(Vector(target), 785)
    else
        CountMinion = Vector(myHero):Extended(Vector(target), GetDistance(target) + 315)
    end
    if GetDistance(target) < 810 then
        CountMinion = Vector(myHero):Extended(Vector(target), 615)
    else
        CountMinion = Vector(myHero):Extended(Vector(target), GetDistance(target) + 415)
    end
    if GetDistance(target) < 910 then
        CountMinion = Vector(myHero):Extended(Vector(target), 700)
    else
        CountMinion = Vector(myHero):Extended(Vector(target), GetDistance(target) + 455)
    end
    if GetDistance(target) < 1110 then
        CountMinion = Vector(myHero):Extended(Vector(target), 845)
    else
        CountMinion = Vector(myHero):Extended(Vector(target), GetDistance(target) + 145)
    end
    if GetDistance(target) < 1100 then
        CountMinion = Vector(myHero):Extended(Vector(target), 945)
    else
        CountMinion = Vector(myHero):Extended(Vector(target), GetDistance(target) + 545)
    end
    if GetDistance(target) < 1210 then
        CountMinion = Vector(myHero):Extended(Vector(target), 1000)
    else
        CountMinion = Vector(myHero):Extended(Vector(target), GetDistance(target) + 625)
    end
    if GetDistance(target) < 1310 then
        CountMinion = Vector(myHero):Extended(Vector(target), 1100)
    else
        CountMinion = Vector(myHero):Extended(Vector(target), GetDistance(target) + 725)
    end
    if GetDistance(target) < 1410 then
        CountMinion = Vector(myHero):Extended(Vector(target), 1115)
    else
        CountMinion = Vector(myHero):Extended(Vector(target), GetDistance(target) + 825)
    end

    return CountMinion
end

function Irelia:GetGapMinion(target)
    GetAllUnitAroundAnObject(myHero.Addr, 1500)
    local GabrityMinion = nil
    local CountIsMinion = 0
    local units = pUnit
    for i, unit in pairs(units) do
        if unit and unit ~= 0 and IsMinion(unit) and IsEnemy(unit) and IsDead(unit) and IsInFog(unit) and GetTargetableToTeam(unit) == 4 and GetDistance(GetUnit(unit)) < 650 then
            if GetDistance(self:DashEndPos(GetUnit(unit)), target) < GetDistance(target) and CountIsMinion < GetDistance(GetUnit(unit)) then
                CountIsMinion = GetDistance(GetUnit(unit))
                GabrityMinion = unit
            end
        end
    end
    return GabrityMinion
end

function Irelia:ToTurrent()
    GetAllUnitAroundAnObject(myHero.Addr, 2000)
	local objects = pUnit
	for k,v in pairs(objects) do
        if IsTurret(v) and not IsDead(v) and IsEnemy(v) and GetTargetableToTeam(v) == 4 and IsValidTarget(v, GetTrueAttackRange()) then
            CastSpellTarget(myHero.Addr, _W)
        end 
    end 
end 

function Irelia:OnDraw()
    if self.DQWER then

    if self.DQ and self.Q:IsReady() then
        DrawCircleGame(myHero.x, myHero.y, myHero.z,self.Q.range, Lua_ARGB(255,255,0,0))
      end

      if self.DE and self.E:IsReady() then
        DrawCircleGame(myHero.x, myHero.y, myHero.z, self.E.range, Lua_ARGB(255,0,0,255))
      end

      if self.DR and self.R:IsReady() then
        DrawCircleGame(myHero.x, myHero.y, myHero.z, self.R.range, Lua_ARGB(255,0,0,255))
    end
   end 
end 

function Irelia:KillEnemy()
    local QKS = GetTargetSelector(self.Q.range)
    Enemy = GetAIHero(QKS)
    if CanCast(_Q) and self.KQ and QKS ~= 0 and GetDistance(Enemy) < self.Q.range and GetDamage("Q", Enemy) > Enemy.HP then
        CastSpellTarget(Enemy.Addr, Q)
	    	__PrintTextGame("Attemping to KS Using Q)
    end 
    local EKS = GetTargetSelector(self.W.range)
    Enemy = GetAIHero(EKS)
    if CanCast(_W) and self.KW and EKS ~= 0 and GetDistance(Enemy) < self.W.range and GetDamage("W", Enemy) > Enemy.HP then
        -- CastSpellTarget(myHero.Addr, _W)
		    CastSpellToPredictionPos(myHero.Addr, _W)
		    --timer.Simple( 0.75, function() __PrintTextGame( "Hello World" ) end )
        ReleaseSpellToPredictionPos(Enemy.Addr, _W)
    end  
end 

local function GetDistanceSqr(p1, p2)
    p2 = GetOrigin(p2) or GetOrigin(myHero)
    return (p1.x - p2.x) ^ 2 + ((p1.z or p1.y) - (p2.z or p2.y)) ^ 2
end

function Irelia:IsSafe(pos)	 --- SDK Toir+
	GetAllUnitAroundAnObject(myHero.Addr, 2000)
	local objects = pUnit
	for k,v in pairs(objects) do
		if IsTurret(v) and not IsDead(v) and IsEnemy(v) and GetTargetableToTeam(v) == 4 then
			local turretPos = Vector(GetPosX(v), GetPosY(v), GetPosZ(v))
			if GetDistanceSqr(turretPos,pos) < 915*915 then
				return true
			end
		end
	end
	return false
end

function Irelia:CastQ()
    local UseQ = GetTargetSelector(self.Q.range)
    Enemy = GetAIHero(UseQ)
    if CanCast(_Q) and self.CQ and UseQ ~= 0 and GetDistance(Enemy) < self.Q.range and not self:IsSafe(Enemy) then
		        CastSpellTarget(Enemy.Addr, Q)
    end 
end 

function Irelia:CastW()
    local UseW = GetTargetSelector(self.W.range)
    Enemy = GetAIHero(UseW)
    if CanCast(_W) and self.CW and UseW ~= 0 and IsValidTarget(Enemy,self.W.range) then
		-- CastSpellTarget(myHero.Addr, _W)
		-- CastSpellToPredictionPos(myHero.Addr, _W)
		CastSpellToPredictionPos(myHero.Addr, _W) 
		--timer.Simple( 0.75, function() __PrintTextGame( "Hello World" ) end )
    DelayAction(function()  ReleaseSpellToPredictionPos(Enemy1.Addr, _W) end, 0.75)
		__PrintTextGame("Casting W")
    end 
end 

function Irelia:CastE()
	local UseE = GetTargetSelector(self.E.range)
	Enemy = GetAIHero(UseE)
    if self.ModeE == 0 then
     if CanCast(_E) and self.CE and UseE ~= 0 and GetDistance(Enemy) < self.E.range then
		    --CastSpellTarget(myHero.Addr, _E)
        CastSpellToPredictionPos(myHero.Addr, _E)
        DelayAction(function()  ReleaseSpellToPredictionPos(Enemy.Addr, _E) end, 0.2)
     end 
    end 
    local EStun = GetTargetSelector(self.E.range)
    Enemy1 = GetAIHero(EStun)
   if self.ModeE == 1 then
    if CanCast(_E) and self.CE and EStun ~= 0 and GetDistance(Enemy1) < self.E.range then
        CastSpellToPredictionPos(myHero.Addr, _E)
		    --ReleaseSpellToPos(Enemy1.x, Enemy1.z, _E)	
        DelayAction(function()  ReleaseSpellToPredictionPos(Enemy1.Addr, _E) end, 0.2) 
		    --CastSpellTarget(Enemy1.Addr, _E)
	    	__PrintTextGame("Casting E")
     end 
    end
end

function Irelia:CastR()
    local UseR = GetTargetSelector(self.R.range)
    Enemy = GetAIHero(UseR)
    if CanCast(_R) and self.KR and UseR ~= 0 and GetDistance(Enemy) < self.R.range then 
        local CEPosition, HitChance, Position = self.Predc:GetLineCastPosition(Enemy, self.R.delay, self.R.width, self.R.range, self.R.speed, myHero, false)
		if HitChance >= 2 then
			CastSpellToPos(CEPosition.x, CEPosition.z, _R)
        end
    end  
end 

function Irelia:GapLogic(target)
    local target = GetTargetSelector(self.Q.range)
    if self.LogicQGap then
        local gapMinion = self:GetGapMinion(GetAIHero(target))

        if gapMinion and gapMinion ~= 0 then
            self.Q:Cast(gapMinion)
        end
    end
end


function Irelia:ComboIreli()
	if self.CR then
        self:CastR()
    end 
	if self.CE then
        self:CastE()
    end 
    if self.CQ then
        self:CastQ()
    end 
    if self.LogicQGap then
        self:GapLogic()
    end 
    --if self.CW then
    -- self:CastW()
    --end 
end 

function Irelia:OnTick()
    if IsDead(myHero.Addr) or IsTyping() or IsDodging() then return end

    self:KillEnemy()

    if GetKeyPress(self.LastHit) > 0 then	
        self:FarmeQ()
    end

    if GetKeyPress(self.LaneClear) > 0 then	
        self:LaneFarmeQ()
        self:ToTurrent()
    end

	if GetKeyPress(self.Combo) > 0 then	
		self:ComboIreli()
    end
end 

 
function init_gear_sets()

	print('Slore_NIN_Gear.lua sidecar loaded')
	
	--------------------------------------
	-- Augemnted Gear
	--------------------------------------
	
	Ryuo_head				={ name="Ryuo Somen +1", augments={'STR+12','DEX+12','Accuracy+20',}}
	
	Adhemar_head_Att	={ name="Adhemar Bonnet", augments={'STR+10','DEX+10','Attack+15',}}
    Adhemar_body_Att	={ name="Adhemar Jacket +1", augments={'STR+12','DEX+12','Attack+20',}}
	Adhemar_hands_Att	={ name="Adhemar Wrist. +1", augments={'STR+12','DEX+12','Attack+20',}}
	
	Adhemar_head_Acc	={ name="Adhemar Bonnet +1", augments={'DEX+12','AGI+12','Accuracy+20',}}
    Adhemar_body_Acc	={ name="Adhemar Jacket", augments={'DEX+10','AGI+10','Accuracy+15',}}
	Adhemar_hands_Acc	={ name="Adhemar Wrist. +1", augments={'STR+12','DEX+12','Attack+20',}}
	Adhemar_legs_Acc	={ name="Adhemar Kecks", augments={'DEX+10','AGI+10','Accuracy+15',}}
	
	Adhemar_hands_RAcc	={ name="Adhemar Wristbands", augments={'AGI+10','Rng.Acc.+15','Rng.Atk.+15',}}
	Adhemar_legs_RAcc		={ name="Adhemar Kecks", augments={'AGI+10','Rng.Acc.+15','Rng.Atk.+15',}}
	
	-- Rawhide_body	={ name="Rawhide Vest", augments={'HP+50','"Subtle Blow"+7','"Triple Atk."+2',}}
	-- Rawhide_hands	={ name="Rawhide Gloves", augments={'Mag. Acc.+15','INT+7','MND+7',}}
	-- Rawhide_legs	={ name="Rawhide Trousers", augments={'MP+50','"Fast Cast"+5','"Refresh"+1',}}
	
	-- head="Rawhide Mask",
	-- body={ name="Rawhide Vest", augments={'DEX+10','STR+7','INT+7',}}
	-- hands="Rawhide Gloves",
	
	FC_body			={ name="Taeon Tabard", augments={'"Fast Cast"+4',}}
	
	-- head				={ name="Taeon Chapeau", augments={'Accuracy+13 Attack+13','"Dual Wield"+4','Crit. hit damage +2%',}},
	-- hands				={ name="Taeon Gloves", augments={'Accuracy+17 Attack+17','"Dual Wield"+5','STR+9',}},
	-- legs					={ name="Taeon Tights", augments={'Accuracy+19 Attack+19','"Dual Wield"+5','STR+7 AGI+7',}},
	
	Lengo_Pants			={ name="Lengo Pants", augments={'INT+8','Mag. Acc.+14','"Mag.Atk.Bns."+13',}}
	--Dampening_Tam	={ name="Dampening Tam", augments={'DEX+5','Accuracy+8','Mag. Acc.+8',}}
	Samnuha_Coat		={ name="Samnuha Coat", augments={'Mag. Acc.+11','"Mag.Atk.Bns."+10','"Fast Cast"+3',}}
	Samnuha_Tights	={ name="Samnuha Tights", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}}
	Leyline_Gloves		={ name="Leyline Gloves", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}}	
	--Mediums_Sabots	={ name="Medium's Sabots", augments={'MP+20','MND+1','"Cure" potency +1%',}}
	--Amm_Greaves		={ name="Amm Greaves", augments={'HP+50','VIT+10','Accuracy+15','Damage taken-2%',}}
	Floral_Gauntlets	={ name="Floral Gauntlets", augments={'Rng.Acc.+13','Accuracy+14','"Triple Atk."+1','Magic dmg. taken -2%',}}
	
	
	-- head		={ name="Herculean Helm", 	augments={'Rng.Acc.+30','Crit.hit rate+1','AGI+11','Rng.Atk.+12',}}
	-- feet			={ name="Herculean Boots", 	augments={'Accuracy+11 Attack+11','Crit.hit rate+4','AGI+1','Attack+11',}}
	-- feet			={ name="Herculean Boots", 	augments={'Attack+25','DEX+15','Accuracy+7',}}
	
	Herc_hands_Multi		={ name="Herculean Gloves", 	augments={'"Dbl.Atk."+3','Accuracy+14','Quadruple Attack +2',}}
	
	Herc_head_RA			={ name="Herculean Helm", 	augments={'Rng.Acc.+23 Rng.Atk.+23','Weapon skill damage +2%','AGI+4','Rng.Acc.+1',}}
	Herc_body_RA			={ name="Herculean Vest", 		augments={'Rng.Atk.+12','Weapon skill damage +4%','Rng.Acc.+15',}}
	Herc_hands_RA		={ name="Herculean Gloves", 	augments={'Rng.Acc.+16','Weapon skill damage +3%','Rng.Atk.+9',}}
	Herc_legs_RA			={ name="Herculean Trousers", augments={'Weapon skill damage +4%','STR+8','Rng.Acc.+10','Rng.Atk.+4',}}
	Herc_feet_RA			={ name="Herculean Boots", 	augments={'Rng.Acc.+27','Weapon skill damage +4%','DEX+6',}}
	
	-- Herc_body_TA	={ name="Herculean Vest", augments={'Accuracy+30','"Triple Atk."+4','INT+1',}}
    -- Herc_legs_TA	={ name="Herculean Trousers", augments={'Accuracy+23 Attack+23','"Triple Atk."+3','AGI+7','Accuracy+14',}}
    -- Herc_feet_STP	={ name="Herculean Boots", augments={'Accuracy+25 Attack+25','"Store TP"+5','STR+5','Accuracy+10','Attack+1',}}
	-- Herc_feet_TA	={ name="Herculean Boots", augments={'Accuracy+25 Attack+25','"Triple Atk."+3','AGI+4','Attack+2',}}
	
	-- Herc_legs_DW	={ name="Herculean Trousers", augments={'Accuracy+25','"Dual Wield"+4','STR+10','Attack+14',}}
	-- Taeon_feet_DW	={ name="Taeon Boots", augments={'Attack+10','"Dual Wield"+3','STR+3 AGI+3',}}
	
	-- Herc_head_WSD	={ name="Herculean Helm", augments={'Accuracy+3 Attack+3','Weapon skill damage +4%','STR+4',}}
	Herc_body_WSD	={ name="Herculean Vest", 		augments={'Weapon skill damage +3%','STR+10','Accuracy+11','Attack+2',}}
	Herc_hands_WSD	={ name="Herculean Gloves", 	augments={'Accuracy+25','Weapon skill damage +3%','STR+15',}}
    -- Herc_legs_WSD	={ name="Herculean Trousers", augments={'Accuracy+25 Attack+25','Weapon skill damage +3%','AGI+3','Accuracy+6','Attack+4',}}
    Herc_feet_WSD	={ name="Herculean Boots",	 augments={'Accuracy+19','Weapon skill damage +5%','STR+5',}}
	
	-- Herc_hands_CritDmg	={ name="Herculean Gloves", augments={'Attack+29','Crit. hit damage +3%','DEX+12',}}
	-- Herc_legs_CritDmg	={ name="Herculean Trousers", augments={'Accuracy+25 Attack+25','Crit. hit damage +3%','STR+7','Accuracy+14',}}
	-- Herc_feet_CritDmg	={ name="Herculean Boots", augments={'Accuracy+29','Crit. hit damage +4%','DEX+5','Attack+11',}}
	
	-- Herc_head_FC	={ name="Herculean Helm", augments={'"Fast Cast"+5','STR+9','Mag. Acc.+1','"Mag.Atk.Bns."+7',}}
    -- Herc_feet_FC	={ name="Herculean Boots", augments={'Mag. Acc.+1','DEX+7','"Fast Cast"+8',}}
	
	-- Herc_head_DT	={ name="Herculean Helm", augments={'Accuracy+14','Damage taken-3%','INT+2','Attack+4',}}
	-- Herc_hands_DT	={ name="Herculean Gloves", augments={'Accuracy+23 Attack+23','Damage taken-3%','AGI+9','Accuracy+1','Attack+10',}}
	-- Herc_legs_DT	={ name="Herculean Trousers", augments={'Accuracy+19','Damage taken-3%','Attack+12',}}
	Herc_feet_DT	={ name="Herculean Boots", 	augments={'Accuracy+13 Attack+13','Damage taken-2%','DEX+10','Accuracy+15',}}
	
	Herc_head_Nuke		={ name="Herculean Helm", 	augments={'"Mag.Atk.Bns."+24','Weapon skill damage +3%','INT+4','Mag. Acc.+3',}}
	Herc_body_Nuke		={ name="Herculean Vest", 		augments={'Mag. Acc.+20 "Mag.Atk.Bns."+20','Weapon skill damage +3%','STR+6','Mag. Acc.+13','"Mag.Atk.Bns."+14',}}
	Herc_hands_Nuke		={ name="Herculean Gloves", 	augments={'"Mag.Atk.Bns."+22','Weapon skill damage +1%','INT+7','Mag. Acc.+7',}}
	Herc_legs_Nuke		={ name="Herculean Trousers", augments={'"Mag.Atk.Bns."+25','Weapon skill damage +3%','STR+9','Mag. Acc.+13',}}
	Herc_feet_Nuke		={ name="Herculean Boots", 	augments={'DEX+8','"Mag.Atk.Bns."+18','Magic burst dmg.+5%','Mag. Acc.+20 "Mag.Atk.Bns."+20',}}
	
	Herc_hands_Refr	={ name="Herculean Gloves", 	augments={'STR+2','Crit.hit rate+2','"Refresh"+1','Accuracy+17 Attack+17',}}
	--Herc_feet_Refr	={ name="Herculean Boots", augments={'Potency of "Cure" effect received+1%','Attack+10','"Refresh"+1','Mag. Acc.+16 "Mag.Atk.Bns."+16',}}
	
	Herc_hands_TH	={ name="Herculean Gloves", 	augments={'Pet: Attack+28 Pet: Rng.Atk.+28','AGI+6','"Treasure Hunter"+1','Accuracy+19 Attack+19',}}
	Herc_feet_TH		={ name="Herculean Boots", 	augments={'AGI+5','Pet: DEX+9','"Treasure Hunter"+2','Mag. Acc.+20 "Mag.Atk.Bns."+20',}}
	
	TP_back				={ name="Andartia's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10',}}
	--FC_back				={ name="Andartia's Mantle", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','"Fast Cast"+10',}}
	WS_back_STR		={ name="Andartia's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}}
	WS_back_AGI		={ name="Andartia's Mantle", augments={'AGI+20','Accuracy+20 Attack+20','AGI+10','Weapon skill damage +10%',}}
	Yokaze_back		={ name="Yokaze Mantle", augments={'STR+4','Sklchn.dmg.+1%','Weapon skill damage +1%',}}
	
	CP_back				={ name="Mecisto. Mantle", augments={'Cap. Point+39%','MP+12','Mag. Acc.+3','DEF+1',}}
	
	AF_head 			={ name="Hachiya Hatsu. +3"}
	--AF_body ={ name="Hachiya Chainmail +3"}
	--AF_hands ={ name="Hachiya Tekko +3"}
	AF_legs			={ name="Hachiya Hakama +3"}
	--AF_feet ={ name="Hachiya Kyahan +3"}
	
	Relic_head		={ name="Mochi. Hatsuburi +3", augments={'Increases elem. ninjutsu III damage',}}
    Relic_body		={ name="Mochi. Chainmail +1", augments={'Enhances "Sange" effect',}}
    --Relic_hands		={ name="Mochizuki Tekko", augments={'Enh. "Ninja Tool Expertise" effect',}}
	Relic_legs			={ name="Mochi. Hakama +1", augments={'Enhances "Mijin Gakure" effect',}}
	--Relic_feet 			={ name="Mochizuki Kyahan"}
	
	--Empy_head		={ name="Hattori Zukin"}
	--Empy_body		={ name="Hattori Ningi"}
	--Empy_hands		={ name="Hattori Tekko"}
	Empy_legs		={ name="Hattori Hakama"}
	--Empy_feet		={ name="Hattori Kyahan"}
	
	Moonshade_Ear	={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}}
	
	--------------------------------------
	-- Precast sets
	--------------------------------------
	
	gear.DakanAmmo = {name="Seki Shuriken"}
	
	gear.MovementFeet = {name="Danzo Sune-ate"}
    gear.DayFeet = "Danzo Sune-ate"
    gear.NightFeet = "Danzo Sune-ate"
	
	gear.default.weaponskill_neck = "Caro Necklace"
    gear.default.weaponskill_waist = "Grunfeld Rope"
	gear.default.obi_waist = "Eschan Stone"
	
	gear.TP_Bonus_Ear = Moonshade_Ear
	gear.Max_TP_Ear = {name="Mache Earring"}
	gear.ws_ear = {name="Mache Earring"}
	
	-- Precast sets to enhance JAs
	sets.precast.JA['Mijin Gakure'] = {}
	sets.precast.JA['Futae'] = {hands=Empy_hands}
	sets.precast.JA['Sange'] = {body=Relic_body}
	sets.precast.JA['Provoke'] = {
		 ear1="Friomisi Earring", 
		body="Emet Harness", hands="Kurys Gloves", ring1="Petrov Ring", ring2="Begrudging Ring", 
		back="Reiki Cloak", waist="Trance Belt",}

	-- Waltz set (chr and vit)
	sets.precast.Waltz = {}
		
	-- Don't need any special gear for Healing Waltz.
	sets.precast.Waltz['Healing Waltz'] = {}

	-- Set for acc on steps, since Yonin drops acc a fair bit
	sets.precast.Step = {}
		
	sets.precast.Flourish1 = {}

	-- Fast cast sets for spells
	
	sets.precast.FC = {ammo="Sapience Orb",
			head=Herc_head_Nuke,ear1="Loquac. Earring",
			body=Samnuha_Coat, hands=Leyline_Gloves, ring1="Prolix Ring", ring2="Kishar Ring", 
			legs="Gyve Trousers"}
	sets.precast.FC.Utsusemi = set_combine(sets.precast.FC, {neck="Magoraga Beads", body=Relic_body})
	sets.precast.FC.NinjutsuIII = set_combine(sets.precast.FC, {})
	
	-- Snapshot for ranged
	sets.precast.RA = {ammo="Seki Shuriken",body="Pursuer's Doublet",waist="Yemaya Belt",legs=Adhemar_legs_RAcc}
    
	------------------------------------------------------ 
	-- Weaponskill sets
	-- Default set for any weaponskill that isn't any more specifically defined
	------------------------------------------------------
	
	sets.precast.WS = {ammo="Seething Bomblet +1",
		head=AF_head,neck="Fotia Gorget",ear1=gear.ws_ear,ear2="Ishvara Earring",
		body=Herc_body_WSD,hands=Herc_hands_WSD,ring1="Regal Ring",ring2="Ilabrat Ring",
		back=WS_back_STR,waist="Fotia Belt",legs=AF_legs,feet=Herc_feet_WSD}
	sets.precast.WS['Ilvl~118']  	= set_combine(sets.precast.WS, {})
	sets.precast.WS['Ilvl~122'] 	= set_combine(sets.precast.WS['Ilvl~118'], {})
	sets.precast.WS['Ilvl~124+'] 	= set_combine(sets.precast.WS['Ilvl~122'], {})
	
	-----------------------------------------------------
	sets.precast.WS['Blade: Jin'] = set_combine(sets.precast.WS, {})
	-----------------------------------------------------
	sets.precast.WS['Blade: Hi'] 				= set_combine(sets.precast.WS, {
		ammo="Yetshila",
		head=AF_head,neck="Fotia Gorget",ear1="Brutal Earring",ear2="Ishvara Earring",
		body="Ken. Samue +1",hands=Herc_hands_WSD,ring1="Regal Ring",ring2="Begrudging Ring",
		back=WS_back_AGI,waist="Windbuffet Belt +1",legs="Hizamaru Hizayoroi +2",feet="Ken. Sune-Ate +1"})
	------------------------------------------------------
	sets.precast.WS['Blade: Shun'] 				= set_combine(sets.precast.WS, {
		ammo="Seething Bomblet",
		head="Ken. Jinpachi +1", neck="Fotia Gorget",ear1=gear.ws_ear,ear2="Ishvara Earring",
		body=Adhemar_body_Att, hands="Ken. Tekko +1", ring1="Regal Ring", ring2="Ilabrat Ring", 
		back=TP_back, waist="Fotia Belt", legs="Jokushu Haidate", feet="Ken. Sune-Ate +1"})
	------------------------------------------------------
	sets.precast.WS['Blade: Yu'] 				= set_combine(sets.precast.WS, {})
	------------------------------------------------------
	sets.precast.WS['Blade: Ten'] = set_combine(sets.precast.WS, {
		ammo="Seething Bomblet",
		head=AF_head,neck="Caro Necklace",ear1=gear.ws_ear,ear2="Ishvara Earring",
		body=Herc_body_WSD,hands=Herc_hands_WSD,ring1="Regal Ring",ring2="Ilabrat Ring",
		back=WS_back_STR,waist="Grunfeld Rope",legs=AF_legs,feet=Herc_feet_WSD})
	------------------------------------------------------
	sets.precast.WS['Blade: Kamu'] = set_combine(sets.precast.WS, {})
	------------------------------------------------------
	sets.precast.WS['Blade: Ku'] = set_combine(sets.precast.WS, {})
	------------------------------------------------------
	sets.precast.WS['Blade: Chi'] = set_combine(sets.precast.WS['Blade: Yu'], {neck="Fotia Gorget",waist="Fotia Belt"})
	------------------------------------------------------
	sets.precast.WS['Aeolian Edge'] = set_combine(sets.precast.WS['Blade: Yu'], {})
	-------------------------------------------------------
	sets.lugra_both_ears = {} --{ear1="Lugra Earring",ear2="Lugra Earring +1"}
	sets.lugra_one_ear = {} --{ear2="Lugra Earring +1"}
	--------------------------------------
	-- Midcast sets
	--------------------------------------
	
	sets.midcast.FastRecast = set_combine(sets.precast.FC, {ammo="Sapience Orb",
    head={ name="Taeon Chapeau", augments={'Pet: "Mag.Atk.Bns."+21','"Fast Cast"+3','Pet: Damage taken -2%',}},
    body={ name="Samnuha Coat", augments={'Mag. Acc.+10','"Mag.Atk.Bns."+9','"Fast Cast"+2',}},
    hands={ name="Leyline Gloves", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},
    legs={ name="Taeon Tights", augments={'Pet: "Mag.Atk.Bns."+22','"Fast Cast"+5','Pet: Haste+2',}},
    feet={ name="Taeon Boots", augments={'Pet: "Mag.Atk.Bns."+22','"Fast Cast"+5','Pet: Damage taken -2%',}},
    neck="Voltsurge Torque",
    left_ear="Enchntr. Earring +1",
    right_ear="Loquac. Earring",
    left_ring="Prolix Ring",
	right_ring="Kishar Ring",
    back="Andartia's Mantle",})
		
	-- any ninjutsu cast on self
	sets.midcast.SelfNinjutsu = set_combine(sets.precast.FC, {})

	sets.midcast["Utsusemi: Ichi"] = set_combine(sets.precast.FC, {neck="Magoraga Beads",
		back=TP_back,feet="Hattori Kyahan"})
	
	sets.midcast["Utsusemi: Ni"] = sets.midcast["Utsusemi: Ichi"]
	
	sets.midcast["Utsusemi: San"] = sets.midcast["Utsusemi: Ichi"]

	-- any ninjutsu cast on enemies
	sets.midcast.ElementalNinjutsu = {ammo="Ghastly Tathlum",
		head=AF_head,neck="Sanctity Necklace",ear1="Friomisi Earring",ear2="Hecate's Earring",
		body=Samnuha_Coat,hands=Leyline_Gloves,ring1="Locus Ring",ring2="Mujin Band",
		back="Izdubar Mantle",waist=gear.ElementalObi,legs="Gyve Trousers",feet=Herc_feet_Nuke}
		
	sets.midcast.NinjutsuIII 							= set_combine(sets.midcast.ElementalNinjutsu, {})

	sets.midcast.ElementalNinjutsu.Resistant 	= set_combine(sets.midcast.ElementalNinjutsu, {ammo="Pemphredo Tathlum",ear2="Dignitary's Earring",ring1="Shiva Ring +1",legs=Herc_legs_Nuke})
	
	sets.midcast.NinjutsuIII.Resistant 				= set_combine(sets.midcast.ElementalNinjutsu.Resistant , {})
	
	sets.midcast.NinjutsuDebuff 						= set_combine(sets.midcast.ElementalNinjutsu.Resistant, {})
	
	sets.midcast['Yurin: Ichi'] 							= set_combine(sets.midcast.ElementalNinjutsu.Resistant, {hands=Herc_hands_TH, waist="Chaac Belt",feet=Herc_feet_TH})

	sets.midcast.NinjutsuBuff 	= set_combine(sets.precast.FC, {})

	sets.midcast.Trust  			= set_combine(sets.precast.FC, {})
	
	sets.midcast.RA = { ammo="Seki Shuriken", 
		head=Herc_head_RA, neck="Iskur Gorget", ear1="Telos Earring", ear2="Clearview Earring", 
		body=Adhemar_body_Att, hands="Ken. Tekko +1", ring1="Hajduk Ring", ring2="Hajduk Ring", 
		back="Kayapa Cape", waist="Yemaya Belt", legs=Adhemar_legs_RAcc, feet=Herc_feet_RA}
	
	sets.midcast["Flash"] = sets.precast.JA['Provoke']
	
	--------------------------------------
	-- Idle/resting/defense/etc sets
	--------------------------------------
	
	
	-- Resting sets
	sets.resting = {neck="Lissome Necklace",ear2="Infused Earring",ring1="Sheltered Ring",ring2="Chirich Ring"}

	-- Idle sets (default idle set not needed since the other three are defined, but leaving for testing purposes)
	sets.idle = {ammo="Yetshila",
		head="Lithelimb Cap", neck="Sanctity Necklace", ear1="Eabani Earring", ear2="Infused Earring", 
		body="Hiza. Haramaki +2", hands="Kurys Gloves", ring1="Sheltered Ring", ring2="Chirich Ring", 
		back="Solemnity Cape", waist="Flume Belt", legs="Mummu Kecks +2", feet=Herc_feet_DT}
	
	sets.idle.PDT = {ammo="Yetshila",
		head="Lithelimb Cap", neck="Loricate Torque", ear1="Eabani Earring", ear2="Infused Earring", 
		body="Emet Harness", hands="Kurys Gloves", ring1="Defending Ring", ring2={ name="Dark Ring", augments={'Phys. dmg. taken -5%','Magic dmg. taken -4%','Breath dmg. taken -4%',}}, 
		back="Solemnity Cape", waist="Flume Belt", legs="Mummu Kecks +2", feet=Herc_feet_DT}
		
	sets.idle.Refresh = {ammo="Brigantia Pebble",
        head="Rawhide Mask", neck="Sanctity Necklace", ear1="Eabani Earring", ear2="Infused Earring", 
		body="Hiza. Haramaki +2", hands=Herc_hands_Refr, ring1="Sheltered Ring", ring2="Chirich Ring", 
		back="Solemnity Cape", waist="Flume Belt", legs="Mummu Kecks +2", feet=Herc_feet_DT}
	
	-- sets.idle.Town = {ammo="Yetshila",
		-- head="Hizamaru Somen +1",neck="Sanctity Necklace",ear1="Dudgeon Earring",ear2="Heartseeker Earring",
		-- body="Hizamaru Haramaki +1",hands="Hizamaru Kote +1",ring1="K'ayres Ring",ring2="Petrov Ring",
		-- back=Yokaze_back,waist="Flume Belt",legs="Hizamaru Hizayoroi +1",feet="Danzo Sune-ate"}
	
	sets.idle.Weak = {ammo="Yetshila",
		head="Lithelimb Cap", neck="Loricate Torque", ear1="Eabani Earring", ear2="Infused Earring", 
		body="Emet Harness", hands="Kurys Gloves", ring1="Defending Ring", ring2={ name="Dark Ring", augments={'Phys. dmg. taken -5%','Magic dmg. taken -4%','Breath dmg. taken -4%',}}, 
		back="Solemnity Cape", waist="Flume Belt", legs="Mummu Kecks +2", feet=Herc_feet_DT}
	
	-- Defense sets
	sets.defense.PDT = {ammo="Yetshila",
		head="Lithelimb Cap", neck="Loricate Torque", ear1="Eabani Earring", ear2="Infused Earring", 
		body="Emet Harness", hands="Kurys Gloves", ring1="Defending Ring", ring2={ name="Dark Ring", augments={'Phys. dmg. taken -5%','Magic dmg. taken -4%','Breath dmg. taken -4%',}}, 
		back="Solemnity Cape", waist="Flume Belt", legs="Mummu Kecks +2", feet=Herc_feet_DT}

	sets.defense.MDT = {
		head="Ken. Jinpachi +1", neck="Loricate Torque", ear1="Eabani Earring", ear2="Infused Earring", 
		body="Ken. Samue +1", hands="Kurys Gloves", ring1="Defending Ring", ring2={ name="Dark Ring", augments={'Phys. dmg. taken -5%','Magic dmg. taken -4%','Breath dmg. taken -4%',}}, 
		back="Engulfer Cape +1", waist="Flume Belt", legs="Mummu Kecks +2", feet=Herc_feet_DT}


	sets.Kiting = {feet=gear.MovementFeet}


	--------------------------------------
	-- Engaged sets
	--------------------------------------
	
	-- Variations for TP weapon and (optional) offense/defense modes.  Code will fall back on previous
	-- sets if more refined versions aren't defined.
	-- If you create a set with both offense and defense modes, the offense mode should be first.
	-- EG: sets.engaged.Dagger.Accuracy.Evasion
	
	----------------------------------------
	-- Normal melee group: No Haste (39% DW)  0 magic haste, capped gear haste
	----------------------------------------
	sets.engaged 								= {ammo=gear.DakanAmmo,
															head=Adhemar_head_Acc, neck="Moonlight Nodowa", ear1="Telos Earring", ear2="Dedition Earring", 
															body="Ken. Samue +1", hands=Adhemar_hands_Att, ring1="Epona's Ring", ring2="Ilabrat Ring", 
															back=TP_back, waist="Windbuffet Belt +1", legs=Samnuha_Tights, feet="Ken. Sune-Ate +1"}
	sets.engaged['Ilvl~118']				= set_combine(sets.engaged, 					{})
	sets.engaged['Ilvl~122']				= set_combine(sets.engaged['Ilvl~118'], 	{})
	sets.engaged['Ilvl~124+'] 			= set_combine(sets.engaged['Ilvl~122'], 	{})										
	
	------------------------------------------------------------------	
											
	sets.engaged['DW: 39'] 						= set_combine(sets.engaged, 										{head=Ryuo_head, neck="Moonlight Nodowa", ear1="Suppanomimi", ear2="Dedition Earring", 
																																					body=Adhemar_body_Att, hands=Floral_Gauntlets, ring1="Epona's Ring", ring2="Ilabrat Ring", 
																																					back=TP_back, waist="Reiki Yotai", legs=Samnuha_Tights, feet="Hizamaru Sune-ate +1"})
	sets.engaged['Ilvl~118']['DW: 39']		= set_combine(sets.engaged['DW: 39'], 						{})
	sets.engaged['Ilvl~122']['DW: 39'] 		= set_combine(sets.engaged['Ilvl~118']['DW: 39'], 		{})
	sets.engaged['Ilvl~124+']['DW: 39'] 	= set_combine(sets.engaged['Ilvl~122']['DW: 39'], 		{})
	
	-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	--------------------------------------------
	-- Custom melee group: low Haste ('DW: 37-38')     306 haste
	--------------------------------------------         
	
	sets.engaged['DW: 37-38'] 						= set_combine(sets.engaged['DW: 39'], 							{head=Ryuo_head, neck="Moonlight Nodowa", ear1="Telos Earring", ear2="Dedition Earring", 
																																							body=Relic_body, hands=Adhemar_hands_Att, ring1="Epona's Ring", ring2="Ilabrat Ring", 
																																							back=TP_back, waist="Reiki Yotai", legs=Relic_legs, feet="Hizamaru Sune-ate +1"})
	sets.engaged['Ilvl~118']['DW: 37-38'] 		= set_combine(sets.engaged['DW: 37-38'], 						{})
	sets.engaged['Ilvl~122']['DW: 37-38'] 		= set_combine(sets.engaged['Ilvl~118']['DW: 37-38'], 	{})
	sets.engaged['Ilvl~124+']['DW: 37-38'] 	= set_combine(sets.engaged['Ilvl~122']['DW: 37-38'], 	{})
	
	-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	--------------------------------------------		
	-- Custom melee group: low Haste ('DW: 35-36')  356 haste
	--------------------------------------------           
	
	sets.engaged['DW: 35-36'] 						= set_combine(sets.engaged['DW: 37-38'], 						{head=Ryuo_head, neck="Moonlight Nodowa", ear1="Suppanomimi", ear2="Dedition Earring", 
																																							body=Relic_body, hands=Adhemar_hands_Att, ring1="Epona's Ring", ring2="Ilabrat Ring", 
																																							back=TP_back, waist="Reiki Yotai", legs=Samnuha_Tights, feet="Hizamaru Sune-ate +1"})
	sets.engaged['Ilvl~118']['DW: 35-36'] 		= set_combine(sets.engaged['DW: 35-36'], 						{})
	sets.engaged['Ilvl~122']['DW: 35-36'] 		= set_combine(sets.engaged['Ilvl~118']['DW: 35-36'], 	{})
	sets.engaged['Ilvl~124+']['DW: 35-36'] 	= set_combine(sets.engaged['Ilvl~122']['DW: 35-36'], 	{})
	
	-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	--------------------------------------------			
	-- Custom melee group: low Haste ('DW: 32-34')  406 haste
	--------------------------------------------            
	
	sets.engaged['DW: 32-34'] 						= set_combine(sets.engaged['DW: 35-36'], 						{head=Ryuo_head, neck="Moonlight Nodowa", ear1="Suppanomimi", ear2="Dedition Earring", 
																																							body=Adhemar_body_Att, hands=Floral_Gauntlets, ring1="Epona's Ring", ring2="Ilabrat Ring", 
																																							back=TP_back, waist="Reiki Yotai", legs=Samnuha_Tights, feet="Ken. Sune-Ate +1"})
	sets.engaged['Ilvl~118']['DW: 32-34'] 		= set_combine(sets.engaged['DW: 32-34'], 						{})
	sets.engaged['Ilvl~122']['DW: 32-34'] 		= set_combine(sets.engaged['Ilvl~118']['DW: 32-34'], 	{})
	sets.engaged['Ilvl~124+']['DW: 32-34'] 	= set_combine(sets.engaged['Ilvl~122']['DW: 32-34'], 	{})
		
	-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	--------------------------------------------			
	-- Custom melee group: low Haste ('DW: 29-31')  456 haste
	--------------------------------------------            
	
	sets.engaged['DW: 29-31'] 						= set_combine(sets.engaged['DW: 32-34'], 						{head=Ryuo_head, neck="Moonlight Nodowa", ear1="Telos Earring", ear2="Dedition Earring", 
																																							body=Adhemar_body_Att, hands=Adhemar_hands_Att, ring1="Epona's Ring", ring2="Ilabrat Ring", 
																																							back=TP_back, waist="Reiki Yotai", legs=Samnuha_Tights, feet="Hizamaru Sune-ate +1"})
	sets.engaged['Ilvl~118']['DW: 29-31'] 		= set_combine(sets.engaged['DW: 29-31'], 						{})
	sets.engaged['Ilvl~122']['DW: 29-31'] 		= set_combine(sets.engaged['Ilvl~118']['DW: 29-31'], 	{})
	sets.engaged['Ilvl~124+']['DW: 29-31'] 	= set_combine(sets.engaged['Ilvl~122']['DW: 29-31'], 	{})
	
	-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	--------------------------------------------			
	-- Custom melee group: MidHaste ('DW: 26-28')	        506 haste
	--------------------------------------------            
	
	sets.engaged['DW: 26-28'] 						= set_combine(sets.engaged['DW: 29-31'], 						{head=Ryuo_head, neck="Moonlight Nodowa", ear1="Suppanomimi", ear2="Dedition Earring", 
																																							body=Adhemar_body_Att, hands=Adhemar_hands_Att, ring1="Epona's Ring", ring2="Ilabrat Ring", 
																																							back=TP_back, waist="Reiki Yotai", legs=Samnuha_Tights, feet="Ken. Sune-Ate +1"})
	sets.engaged['Ilvl~118']['DW: 26-28']  	= set_combine(sets.engaged['DW: 26-28'], 						{})
	sets.engaged['Ilvl~122']['DW: 26-28'] 		= set_combine(sets.engaged['Ilvl~118']['DW: 26-28'], 	{})
	sets.engaged['Ilvl~124+']['DW: 26-28'] 	= set_combine(sets.engaged['Ilvl~122']['DW: 26-28'], 	{})
	
	-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	---------------------------------------------			
	-- Custom melee group: High Haste ('DW: 22-25')          556 haste
	---------------------------------------------           
	
	sets.engaged['DW: 22-25'] 						= set_combine(sets.engaged['DW: 26-28'], 						{head=Ryuo_head, neck="Moonlight Nodowa", ear1="Telos Earring", ear2="Dedition Earring", 
																																							body=Adhemar_body_Att, hands=Adhemar_hands_Att, ring1="Epona's Ring", ring2="Ilabrat Ring", 
																																							back=TP_back, waist="Reiki Yotai", legs=Samnuha_Tights, feet="Ken. Sune-Ate +1"})
	sets.engaged['Ilvl~118']['DW: 22-25'] 		= set_combine(sets.engaged['DW: 22-25'], 						{})
	sets.engaged['Ilvl~122']['DW: 22-25'] 		= set_combine(sets.engaged['Ilvl~118']['DW: 22-25'], 	{})
	sets.engaged['Ilvl~124+']['DW: 22-25'] 	= set_combine(sets.engaged['Ilvl~122']['DW: 22-25'], 	{})
	
	-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	---------------------------------------------			
	-- Custom melee group: High Haste ('DW: 21')            562 haste
	---------------------------------------------           
	
	sets.engaged['DW: 21'] 						= set_combine(sets.engaged['DW: 22-25'], 					{head=Ryuo_head, neck="Moonlight Nodowa", ear1="Suppanomimi", ear2="Dedition Earring", 
																																					body="Ken. Samue +1", hands=Adhemar_hands_Att, ring1="Epona's Ring", ring2="Ilabrat Ring", 
																																					back=TP_back, waist="Reiki Yotai", legs=Samnuha_Tights, feet="Ken. Sune-Ate +1"})
	sets.engaged['Ilvl~118']['DW: 21'] 		= set_combine(sets.engaged['DW: 21'], 						{})
	sets.engaged['Ilvl~122']['DW: 21'] 		= set_combine(sets.engaged['Ilvl~118']['DW: 21'], 		{})
	sets.engaged['Ilvl~124+']['DW: 21'] 	= set_combine(sets.engaged['Ilvl~122']['DW: 21'], 		{})
	
	-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	---------------------------------------------			
	-- Custom melee group: High Haste ('DW: 20')            573 haste
	---------------------------------------------           
	
	sets.engaged['DW: 20'] 						= set_combine(sets.engaged['DW: 21'], 						{head=Ryuo_head, neck="Moonlight Nodowa", ear1="Suppanomimi", ear2="Dedition Earring", 
																																					body=Adhemar_body_Att, hands=Adhemar_hands_Att, ring1="Epona's Ring", ring2="Ilabrat Ring", 
																																					back=TP_back, waist="Windbuffet Belt +1", legs=Samnuha_Tights, feet="Ken. Sune-Ate +1"})
	sets.engaged['Ilvl~118']['DW: 20'] 		= set_combine(sets.engaged['DW: 20'], 						{})
	sets.engaged['Ilvl~122']['DW: 20'] 		= set_combine(sets.engaged['Ilvl~118']['DW: 20'], 		{})
	sets.engaged['Ilvl~124+']['DW: 20'] 	= set_combine(sets.engaged['Ilvl~122']['DW: 20'], 		{})
	
	-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	---------------------------------------------			
	-- Custom melee group: High Haste ('DW: 17-19')         606 haste
	---------------------------------------------           
	
	sets.engaged['DW: 17-19'] 						= set_combine(sets.engaged['DW: 20'], 							{head=Adhemar_head_Acc, neck="Moonlight Nodowa", ear1="Suppanomimi", ear2="Dedition Earring", 
																																							body="Ken. Samue +1", hands=Adhemar_hands_Att, ring1="Epona's Ring", ring2="Ilabrat Ring", 
																																							back=TP_back, waist="Reiki Yotai", legs=Samnuha_Tights, feet="Hizamaru Sune-ate +1"})
	sets.engaged['Ilvl~118']['DW: 17-19'] 		= set_combine(sets.engaged['DW: 17-19'], 						{})
	sets.engaged['Ilvl~122']['DW: 17-19'] 		= set_combine(sets.engaged['Ilvl~118']['DW: 17-19'], 	{})
	sets.engaged['Ilvl~124+']['DW: 17-19'] 	= set_combine(sets.engaged['Ilvl~122']['DW: 17-19'], 	{})
	
	-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	---------------------------------------------			
	-- Custom melee group: High Haste ('DW: 14-16')    628 haste
	---------------------------------------------           
	
	sets.engaged['DW: 14-16'] 						= set_combine(sets.engaged['DW: 17-19'], 						{head=Adhemar_head_Acc, neck="Moonlight Nodowa", ear1="Telos Earring", ear2="Dedition Earring", 
																																							body="Ken. Samue +1", hands=Adhemar_hands_Att, ring1="Epona's Ring", ring2="Ilabrat Ring", 
																																							back=TP_back, waist="Reiki Yotai", legs=Samnuha_Tights, feet="Hizamaru Sune-ate +1"})
	sets.engaged['Ilvl~118']['DW: 14-16'] 		= set_combine(sets.engaged['DW: 14-16'], 						{})
	sets.engaged['Ilvl~122']['DW: 14-16'] 		= set_combine(sets.engaged['Ilvl~118']['DW: 14-16'], 	{})
	sets.engaged['Ilvl~124+']['DW: 14-16'] 	= set_combine(sets.engaged['Ilvl~122']['DW: 14-16'], 	{})
	
	-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	---------------------------------------------			
	-- Custom melee group: High Haste ('DW: 10-13')    656 haste      
	---------------------------------------------           
	
	sets.engaged['DW: 10-13'] 					= set_combine(sets.engaged['DW: 14-16'], 							{head=Adhemar_head_Acc, neck="Moonlight Nodowa", ear1="Suppanomimi", ear2="Dedition Earring", 
																																							body="Ken. Samue +1", hands=Adhemar_hands_Att, ring1="Epona's Ring", ring2="Ilabrat Ring", 
																																							back=TP_back, waist="Reiki Yotai", legs=Samnuha_Tights, feet="Ken. Sune-Ate +1"})
	sets.engaged['Ilvl~118']['DW: 10-13'] 	= set_combine(sets.engaged['DW: 10-13'], 							{})
	sets.engaged['Ilvl~122']['DW: 10-13'] 	= set_combine(sets.engaged['Ilvl~118']['DW: 10-13'], 		{})
	sets.engaged['Ilvl~124+']['DW: 10-13'] 	= set_combine(sets.engaged['Ilvl~122']['DW: 10-13'], 	{})
	
	-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	-----------------------------------------			
	-- Custom melee group: Max Haste ('DW: 0-9') 704 haste
	-----------------------------------------           
	
	sets.engaged['DW: 0-9'] 						= set_combine(sets.engaged['DW: 10-13'],						{	head=Adhemar_head_Acc, neck="Moonlight Nodowa", ear1="Telos Earring", ear2="Dedition Earring", 
																																							body="Ken. Samue +1", hands=Adhemar_hands_Att, ring1="Epona's Ring", ring2="Ilabrat Ring", 
																																							back=TP_back, waist="Windbuffet Belt +1", legs=Samnuha_Tights, feet="Ken. Sune-Ate +1"})
	sets.engaged['Ilvl~118']['DW: 0-9'] 		= set_combine(sets.engaged['DW: 0-9'], 							{})
	sets.engaged['Ilvl~122']['DW: 0-9'] 		= set_combine(sets.engaged['Ilvl~118']['DW: 0-9'], 		{})
	sets.engaged['Ilvl~124+']['DW: 0-9'] 	= set_combine(sets.engaged['Ilvl~122']['DW: 0-9'], 		{})
																													
	-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	---------------------------------------
	-- Buff Sets and Miscelanie
	---------------------------------------	
	sets.buff.Migawari = {}
	sets.buff.Futae 		= {hands=Empy_hands}
	sets.buff.Doom 	= {ring1="Saida Ring",ring2="Blenmot's Ring",waist="Gishdubar Sash"}
	sets.buff.Yonin		= {}
	sets.buff.Innin 		= {}
	sets.buff.Sange 	= {ammo = "Seki Shuriken"}
	sets.buff.Reive 		= {neck = "Ygnas's Resolve +1"}
	sets.CP 				= {back=CP_back}
			
end

-- Select default macro book on initial load or subjob change.
function select_default_macro_book()
    -- Default macro set/book
    set_macro_page(1, 5)
	
	
end
 
-------------------------------------------------------------------------------------------------------------------
-- Setup functions for this job.  Generally should not be modified.
-------------------------------------------------------------------------------------------------------------------

-- Initialization function for this job file.
include('Make-Settings.lua')
function get_sets()
    mote_include_version = 2

    -- Load and initialize the include file.
    include('Seb-Include.lua')	
	
end


-- Setup vars that are user-independent.  state.Buff vars initialized here will automatically be tracked.
function job_setup()
    state.Buff.Migawari = buffactive.migawari or false
	state.Buff.futae = buffactive.futae or false
    state.Buff.doom = buffactive.doom or false
    state.Buff.Yonin = buffactive.Yonin or false
    state.Buff.Innin = buffactive.Innin or false
    state.Buff.Futae = buffactive.Futae or false
	state.Buff.Sange = buffactive.Sange or false
	state.Buff["Reive Mark"] = buffactive["Reive Mark"] or false
	
end

-------------------------------------------------------------------------------------------------------------------
-- User setup functions for this job.  Recommend that these be overridden in a sidecar file.
-------------------------------------------------------------------------------------------------------------------

-- Setup vars that are user-dependent.  Can override this function in a sidecar file.
function user_setup()
    state.OffenseMode:options('Normal', 'Ilvl~118', 'Ilvl~122', 'Ilvl~124+')
    state.HybridMode:options('Normal')
    state.WeaponskillMode:options('Normal', 'Ilvl~118', 'Ilvl~122', 'Ilvl~124+')
    state.CastingMode:options('Normal', 'Resistant')
	state.IdleMode:options('Normal', 'Refresh', 'PDT')
    state.PhysicalDefenseMode:options('PDT')
	options.MagicalDefenseModes = {'MDT'}
	
	state.CP  				= M(false, 'CP')
	state.Auto_Kite  	= M(false, 'Auto_Kite')
	
	state.PhysicalDefense   = M(false, 'PhysicalDefense')
	state.MagicalDefense    = M(false, 'MagicalDefense')
	
	gear.DakanAmmo = {name="Seki Shuriken"}
	
	gear.MovementFeet = {name="Danzo Sune-ate"}
    gear.DayFeet = "Danzo Sune-ate"
    gear.NightFeet = "Danzo Sune-ate"
    
	send_command('bind !f12 gs c cycle IdleMode')
	send_command('bind @] gs c cycle HybridMode')
	send_command('bind ^F11 gs c cycle CP')
	send_command('bind ^F12 gs c cycle CastingMode')
	
	send_command('gi ugs true')
	
	Two_Handed = S{'Hoe', 'Pitchfork +1', 'Ark Tachi', 'Fire Staff'}
	
	DW_needed = 0
	DW = false
	MA_needed = 0
	H2H = false
	moving = false
	Ring_slot_locked_1 = false
	Ring_slot_locked_2 = false
	unlock_em = false
	
	send_command('gi update')
    select_default_macro_book()
	select_movement_feet()
	determine_haste_group()
	
	old_inform = {}
	settings = load_settings()
	text_box = texts.new(settings.display)
	text_box:register_event('reload', initialize)
	
	initialize(text_box)
	
	local msg = ''
	msg = ('You have loaded Seb\'s NIN lua. Please use '):color(text_color) .. ('\"\/\/GS c help\" '):color(Notification_color) .. ('for a full list of key bound functions. Enjoy!'):color(text_color)
	add_to_chat(122, msg)
end

-- Called when this job file is unloaded (eg: job change)
function user_unload()

end

-- Define sets and vars used by this job file.
function init_gear_sets()
	--------------------------------------
	-- Precast sets
	--------------------------------------
	
	gear.default.weaponskill_neck = ""
    gear.default.weaponskill_waist = ""
	
	-- Precast sets to enhance JAs
	sets.precast.JA['Mijin Gakure'] = {}
	sets.precast.JA['Futae'] = {}
	sets.precast.JA['Sange'] = {}
	sets.precast.JA['Provoke'] = {}

	-- Waltz set (chr and vit)
	sets.precast.Waltz = {}
	-- Don't need any special gear for Healing Waltz.
	sets.precast.Waltz['Healing Waltz'] = {}

	-- Set for acc on steps, since Yonin drops acc a fair bit
	sets.precast.Step = {}
	sets.precast.Flourish1 = {}

	-- Fast cast sets for spells
	
	sets.precast.FC = {}
	sets.precast.FC.Utsusemi = set_combine(sets.precast.FC, {})
	sets.precast.FC.NinjutsuIII = set_combine(sets.precast.FC, {})
	
	-- Snapshot for ranged
	sets.precast.RA = {}
    
	------------------------------------------------------ 
	-- Weaponskill sets
	-- Default set for any weaponskill that isn't any more specifically defined
	------------------------------------------------------
	
	sets.precast.WS = {}
	sets.precast.WS['Ilvl~118']  	= set_combine(sets.precast.WS, {})
	sets.precast.WS['Ilvl~122'] 	= set_combine(sets.precast.WS['Ilvl~118'], {})
	sets.precast.WS['Ilvl~124+'] 	= set_combine(sets.precast.WS['Ilvl~122'], {})
	
	-----------------------------------------------------
	sets.precast.WS['Blade: Jin'] = set_combine(sets.precast.WS, {})
	-----------------------------------------------------
	sets.precast.WS['Blade: Hi'] 				= set_combine(sets.precast.WS, {})
	sets.precast.WS['Blade: Hi']['Ilvl~118']	= set_combine(sets.precast.WS['Blade: Hi'], {})
	sets.precast.WS['Blade: Hi']['Ilvl~122']	= set_combine(sets.precast.WS['Blade: Hi']['Ilvl~118'], {})
	sets.precast.WS['Blade: Hi']['Ilvl~124+']	= set_combine(sets.precast.WS['Blade: Hi']['Ilvl~122'], {})
	------------------------------------------------------
	sets.precast.WS['Blade: Shun'] 				= set_combine(sets.precast.WS, {})
	sets.precast.WS['Blade: Shun']['Ilvl~118']	= set_combine(sets.precast.WS['Blade: Shun'], {})
	sets.precast.WS['Blade: Shun']['Ilvl~122']	= set_combine(sets.precast.WS['Blade: Shun']['Ilvl~118'], {})
	sets.precast.WS['Blade: Shun']['Ilvl~124+']	= set_combine(sets.precast.WS['Blade: Shun']['Ilvl~122'], {})
	------------------------------------------------------
	sets.precast.WS['Blade: Yu'] 				= set_combine(sets.precast.WS, {})
	------------------------------------------------------
	sets.precast.WS['Blade: Ten'] = set_combine(sets.precast.WS, {})
	------------------------------------------------------
	sets.precast.WS['Blade: Kamu'] = set_combine(sets.precast.WS, {})
	------------------------------------------------------
	sets.precast.WS['Blade: Ku'] = set_combine(sets.precast.WS, {})
	------------------------------------------------------
	sets.precast.WS['Aeolian Edge'] = set_combine(sets.precast.WS['Blade: Yu'], {})
	-------------------------------------------------------
	sets.precast.MaxTP_Agi = {}
	sets.precast.MaxTP_Dex = {}
	
	--------------------------------------
	-- Midcast sets
	--------------------------------------
	sets.midcast.FastRecast = {}

	-- any ninjutsu cast on self
	sets.midcast.SelfNinjutsu = set_combine(sets.midcast.FastRecast, {})
	sets.midcast["Utsusemi: Ichi"] = set_combine(sets.midcast.SelfNinjutsu, {})
	sets.midcast["Utsusemi: Ni"] = set_combine(sets.midcast["Utsusemi: Ichi"], {})
	sets.midcast["Utsusemi: San"] = set_combine(sets.midcast["Utsusemi: Ichi"], {})

	-- any ninjutsu cast on enemies
	sets.midcast.ElementalNinjutsu = {}
	sets.midcast.NinjutsuIII = set_combine(sets.midcast.ElementalNinjutsu, {})
	sets.midcast.ElementalNinjutsu.Resistant = set_combine(sets.midcast.ElementalNinjutsu, {})
	sets.midcast.NinjutsuIII.Resistant = set_combine(sets.midcast.ElementalNinjutsu, {})
	sets.midcast.NinjutsuDebuff = {}
	sets.midcast.NinjutsuBuff = set_combine(sets.midcast.SelfNinjutsu, {})
	sets.midcast.Trust = set_combine(sets.midcast.FastRecast, {})
	sets.midcast.RA = {}
	sets.midcast["Flash"] = set_combine(sets.precast.JA['Provoke'], {})
    -- Sets to return to when not performing an action.
    sets.latent_refresh = {}
    -- Resting sets
    sets.resting = {}   
    -- Idle sets
    sets.idle = {}
    sets.idle.PDT = {}
    sets.idle.Town = {}	
	sets.idle.Weak = {}
    -- Defense sets
    sets.defense.PDT = {}
    sets.defense.MDT = {}
    sets.Kiting = {}

	--------------------------------------
	-- Engaged sets
	----------------------------------------
	-- Normal melee group: No Haste (38% DW)
	----------------------------------------
	sets.engaged 						= {}
	sets.engaged['Ilvl~118']	= set_combine(sets.engaged, 			{})
	sets.engaged['Ilvl~122']	= set_combine(sets.engaged['Ilvl~118'], {})
	sets.engaged['Ilvl~124+'] 	= set_combine(sets.engaged['Ilvl~122'], {})										
											
	sets.engaged.Evasion 				= set_combine(sets.engaged,						{})
	sets.engaged['Ilvl~118'].Evasion 	= set_combine(sets.engaged.Evasion, 			{})
	sets.engaged['Ilvl~122'].Evasion	= set_combine(sets.engaged['Ilvl~118'].Evasion, {})
	sets.engaged['Ilvl~124+'].Evasion 	= set_combine(sets.engaged['Ilvl~122'].Evasion, {})										
	
	------------------------------------------------------------------	
											
	sets.engaged['DW: 37+'] 				= set_combine(sets.engaged, 						{})
	sets.engaged['Ilvl~118']['DW: 37+']		= set_combine(sets.engaged['DW: 37+'], 				{})
	sets.engaged['Ilvl~122']['DW: 37+'] 	= set_combine(sets.engaged['Ilvl~118']['DW: 37+'], 	{})
	sets.engaged['Ilvl~124+']['DW: 37+'] 	= set_combine(sets.engaged['Ilvl~122']['DW: 37+'], 	{})
	
	-- evasion sets
	sets.engaged['DW: 37+'].Evasion 				= set_combine(sets.engaged.Evasion,							{})
	sets.engaged['Ilvl~118']['DW: 37+'].Evasion 	= set_combine(sets.engaged['DW: 37+'].Evasion, 				{})
	sets.engaged['Ilvl~122']['DW: 37+'].Evasion		= set_combine(sets.engaged['Ilvl~118']['DW: 37+'].Evasion,	{})
	sets.engaged['Ilvl~124+']['DW: 37+'].Evasion 	= set_combine(sets.engaged['Ilvl~122']['DW: 37+'].Evasion,	{})
	
	-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	--------------------------------------------			head="Hattori Zukin",neck="Asperity Necklace",ear1="Dudgeon Earring",ear2="Heartseeker Earring",
	-- Custom melee group: low Haste (~31% DW)-             body=Relic_body,hands=Adhemar_hands,ring1="Epona's Ring",ring2="Petrov Ring",
	--------------------------------------------            back="Bleating Mantle",waist="Patentia Sash",legs="Mochizuki Hakama +1",feet=Herc_feet_TP_Acc}
	
	sets.engaged['DW: 22-36'] 				= set_combine(sets.engaged['DW: 37+'], 					{})
	sets.engaged['Ilvl~118']['DW: 22-36'] 	= set_combine(sets.engaged['DW: 22-36'], 				{})
	sets.engaged['Ilvl~122']['DW: 22-36'] 	= set_combine(sets.engaged['Ilvl~118']['DW: 22-36'], 	{})
	sets.engaged['Ilvl~124+']['DW: 22-36'] 	= set_combine(sets.engaged['Ilvl~122']['DW: 22-36'], 	{})
		
		----------------					head="Hattori Zukin",neck="Ej Necklace",ear1="Dudgeon Earring",ear2="Heartseeker Earring",				
		-- evasion sets                     body=Relic_body,hands="Otronif Gloves +1",ring1="Epona's Ring",ring2="Dumakulem's Ring",
		----------------                    back="Atheling Mantle",waist="Nusku's Sash",legs="Mochizuki Hakama +1",feet=Herc_feet_TP_Acc}
		
		sets.engaged['DW: 22-36'].Evasion				= set_combine(sets.engaged.Evasion, 							{})
		sets.engaged['Ilvl~118']['DW: 22-36'].Evasion 	= set_combine(sets.engaged['DW: 22-36'].Evasion, 				{})
		sets.engaged['Ilvl~122']['DW: 22-36'].Evasion 	= set_combine(sets.engaged['Ilvl~118']['DW: 22-36'].Evasion, 	{})
		sets.engaged['Ilvl~124+']['DW: 22-36'].Evasion 	= set_combine(sets.engaged['Ilvl~122']['DW: 22-36'].Evasion, 	{})
	
	-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	--------------------------------------------			head="Hattori Zukin",neck="Asperity Necklace",ear1="Brutal Earring",ear2="Suppanomimi"
	-- Custom melee group: MidHaste (~21% DW)-              body=Relic_body,hands=Adhemar_hands,ring1="Epona's Ring",ring2="Petrov Ring",
	--------------------------------------------            back="Bleating Mantle",waist="Patentia Sash",legs="Mochizuki Hakama +1",feet=Herc_feet_TP_Acc}
	
	sets.engaged['DW: 12-21'] 				= set_combine(sets.engaged['DW: 22-36'], 				{})
	sets.engaged['Ilvl~118']['DW: 12-21']  	= set_combine(sets.engaged['DW: 12-21'], 				{})
	sets.engaged['Ilvl~122']['DW: 12-21'] 	= set_combine(sets.engaged['Ilvl~118']['DW: 12-21'], 	{})
	sets.engaged['Ilvl~124+']['DW: 12-21']  = set_combine(sets.engaged['Ilvl~122']['DW: 12-21'], 	{})
	
		----------------					head="Hattori Zukin",neck="Ej Necklace",ear1="Brutal Earring",ear2="Suppanomimi"				
		-- evasion sets                     body=Relic_body,hands="Otronif Gloves +1",ring1="Epona's Ring",ring2="Dumakulem's Ring",
		----------------                    back="Atheling Mantle",waist="Nusku's Sash",legs="Mochizuki Hakama +1",feet=Herc_feet_TP_Acc}
	
		sets.engaged['DW: 12-21'].Evasion  				= set_combine(sets.engaged['DW: 22-36'].Evasion, 				{})
		sets.engaged['Ilvl~118']['DW: 12-21'].Evasion  	= set_combine(sets.engaged['DW: 12-21'].Evasion, 				{})
		sets.engaged['Ilvl~122']['DW: 12-21'].Evasion  	= set_combine(sets.engaged['Ilvl~118']['DW: 12-21'].Evasion, 	{})
		sets.engaged['Ilvl~124+']['DW: 12-21'].Evasion  = set_combine(sets.engaged['Ilvl~122']['DW: 12-21'].Evasion, 	{})
	
	-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	---------------------------------------------			head=Herc_head_WS,neck="Asperity Necklace",ear1="Dudgeon Earring",ear2="Heartseeker Earring",
	-- Custom melee group: High Haste (15% DW)               body=Relic_body,hands="Otronif Gloves +1",ring1="Epona's Ring",ring2="Petrov Ring",
	---------------------------------------------           back="Bleating Mantle",waist="Windbuffet Belt +1",legs="Hachiya Hakama +1",feet=Herc_feet_TP_Acc}
	
	sets.engaged['DW: 6-11'] 				= set_combine(sets.engaged['DW: 12-21'], 				{})
	sets.engaged['Ilvl~118']['DW: 6-11'] 	= set_combine(sets.engaged['DW: 6-11'], 				{})
	sets.engaged['Ilvl~122']['DW: 6-11'] 	= set_combine(sets.engaged['Ilvl~118']['DW: 6-11'], 	{})
	sets.engaged['Ilvl~124+']['DW: 6-11'] 	= set_combine(sets.engaged['Ilvl~122']['DW: 6-11'], 	{})
	
		----------------					head=Herc_head_WS,neck="Ej Necklace",ear1="Dudgeon Earring",ear2="Heartseeker Earring",				
		-- evasion sets                     body=Relic_body,hands="Otronif Gloves +1",ring1="Epona's Ring",ring2="Dumakulem's Ring",
		----------------                    back="Atheling Mantle",waist="Sveltesse Gouriz +1",legs="Hachiya Hakama +1",feet=Herc_feet_TP_Acc}
		
		sets.engaged['DW: 6-11'].Evasion 				= set_combine(sets.engaged['DW: 12-21'].Evasion, 				{})
		sets.engaged['Ilvl~118']['DW: 6-11'].Evasion 	= set_combine(sets.engaged['DW: 6-11'].Evasion, 				{})
		sets.engaged['Ilvl~122']['DW: 6-11'].Evasion 	= set_combine(sets.engaged['Ilvl~118']['DW: 6-11'].Evasion, 	{})
		sets.engaged['Ilvl~124+']['DW: 6-11'].Evasion 	= set_combine(sets.engaged['Ilvl~122']['DW: 6-11'].Evasion, 	{})
	
	-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	-----------------------------------------			head=Herc_head_WS,neck="Asperity Necklace",ear1="Dudgeon Earring",ear2="Heartseeker Earring",
	-- Custom melee group: Max Haste (0% DW)            body="Thaumas Coat",hands="Otronif Gloves +1",ring1="Epona's Ring",ring2="Petrov Ring",
	-----------------------------------------           back="Bleating Mantle",waist="Windbuffet Belt +1",legs="Otronif Brais +1",feet="Otronif Boots +1"}
	
	sets.engaged['DW: 5-0'] 				= set_combine(sets.engaged['DW: 6-11'],				{})
	sets.engaged['Ilvl~118']['DW: 5-0'] 	= set_combine(sets.engaged['DW: 5-0'], 				{})
	sets.engaged['Ilvl~122']['DW: 5-0'] 	= set_combine(sets.engaged['Ilvl~118']['DW: 5-0'], 	{})
	sets.engaged['Ilvl~124+']['DW: 5-0'] 	= set_combine(sets.engaged['Ilvl~122']['DW: 5-0'], 	{})
	
		----------------					head=Herc_head_WS,neck="Ej Necklace",ear1="Dudgeon Earring",ear2="Heartseeker Earring",				
		-- evasion sets                     body="Emet Harness +1",hands="Otronif Gloves +1",ring1="Epona's Ring",ring2="Dumakulem's Ring",
		----------------                    back="Atheling Mantle",waist="Sveltesse Gouriz +1",legs="Hachiya Hakama +1",feet=Herc_feet_TP_Acc}
		
		sets.engaged['DW: 5-0'].Evasion 					= set_combine(sets.engaged['DW: 12-21'].Evasion, 			{})
		sets.engaged['Ilvl~118']['DW: 5-0'].Evasion 		= set_combine(sets.engaged['DW: 5-0'].Evasion, 				{})
		sets.engaged['Ilvl~122']['DW: 5-0'].Evasion 		= set_combine(sets.engaged['Ilvl~118']['DW: 5-0'].Evasion, 	{})
		sets.engaged['Ilvl~124+']['DW: 5-0'].Evasion 		= set_combine(sets.engaged['Ilvl~122']['DW: 5-0'].Evasion, 	{})
																													
	-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------	
	---------------------------------------
	-- Buff Sets and Miscelanie
	---------------------------------------
	sets.TA_Ring  = {ring2="Oneiros Ring"}
	sets.buff.Migawari = {}
	sets.buff.Doom = {}
	sets.buff.Yonin = {}
	sets.buff.Innin = {}
	sets.buff.Sange = {}
	sets.buff.Reive = {}
	sets.Gavialis = {}
	sets.CP = {}	
end

-------------------------------------------------------------------------------------------------------------------
-- Job-specific hooks for standard casting events.
-------------------------------------------------------------------------------------------------------------------
function job_precast(spell, action, spellMap, eventArgs)
	if not midaction() then
		if spell.type == 'WeaponSkill' then
			
			if player.tp < 2850 then
				gear.ws_ear.name = gear.TP_Bonus_Ear.name
			else
				gear.ws_ear.name = gear.Max_TP_Ear
			end
			
		elseif spell.action_type == 'Magic' then
			if spell.skill == "Ninjutsu" and S{'katon: san', 'hyoton: san', 'huton: san', 'doton: san', 'raiton: san', 'suiton: san'}:contains(spell.english:lower()) then
				classes.CustomClass = "NinjutsuIII"
			end
			if (spell.english == 'Utsusemi: Ichi' or spell.english == 'Utsusemi: Ni' or spell.english == 'Utsusemi: San') and (buffactive['copy image (3)'] or buffactive['copy image (4+)']) then
				add_to_chat(123,('[Abort Spell: '):color(warning_text) .. ('\"' .. spell.name .. '\"'):color(Notification_color) .. (' -> 3+ Shodows already up'):color(text_color) .. (']'):color(warning_text))
				eventArgs.cancel = true
				return
			end
		end
	end
	
end

-- Run after the general precast() is done.
function job_post_precast(spell, action, spellMap, eventArgs)
	if spell.type == 'WeaponSkill' then
		if world.time >= 17*60 or world.time < 7*60 then
			if spell.name == "Blade: Ten" then
				equip(sets.lugra_one_ear)
			elseif spell.name == "Blade: Metsu" or spell.name == "Blade: Hi" or spell.name == "Blade: Shun" or spell.name == "Blade: Kamu" then
				equip(sets.lugra_both_ears)
			end
		end
		if state.Buff["Reive Mark"] then
			equip(sets.buff.Reive)
		end
	end 
end

-- Run after the general midcast() is done.
-- eventArgs is the same one used in job_midcast, in case information needs to be persisted.
function job_post_midcast(spell, action, spellMap, eventArgs)
    if state.Buff.doom then
        equip(sets.buff.Doom)
    end
	if state.Buff.futae and spellMap == 'ElementalNinjutsu' then
        equip(sets.buff.Futae)
    end
end


-- Set eventArgs.handled to true if we don't want any automatic gear equipping to be done.
function job_aftercast(spell, action, spellMap, eventArgs)
     if state.Buff[spell.name] == false and not spell.interrupted then
		state.Buff[spell.name] = true
    end
	if spell.name == "Migawari: Ichi" and not spell.interrupted then
		state.Buff.Migawari = true
    end
	
end

-------------------------------------------------------------------------------------------------------------------
-- Job-specific hooks for non-casting events.
-------------------------------------------------------------------------------------------------------------------

-- Called when a player gains or loses a buff.
-- buff == buff gained or lost
-- gain == true if the buff was gained, false if it was lost.
function job_buff_change(buff, gain, buff_info)
	--add_to_chat(200, buff .. '  ' .. tostring(gain) )

	if state.Buff[buff] ~= nil then
		state.Buff[buff] = gain
	end

    if not midaction() then
		handle_equipping_gear(player.status)
	end
end

-- Called when the player's status changes.
function job_state_change(field, new_value, old_value)

	if state.OffenseMode.value == 'Normal' then
		state.WeaponskillMode:set('Normal')
	elseif state.OffenseMode.value == 'Ilvl~118' then
		state.WeaponskillMode:set('Ilvl~118')
	elseif state.OffenseMode.value == 'Ilvl~122' then
		state.WeaponskillMode:set('Ilvl~122')
	elseif state.OffenseMode.value == 'Ilvl~124+' then
		state.WeaponskillMode:set('Ilvl~124+')
	end
	
	if field == "PhysicalDefense" then
		if state.PhysicalDefense.value == true then
			state.DefenseMode.current = 'Physical'
			state.DefenseMode:set('Physical')
			state.MagicalDefense = M(false)
		end
	elseif field == "MagicalDefense" then
		if state.MagicalDefense.value == true then
			state.DefenseMode.current = 'Magical'
			state.DefenseMode:set('Magical')
			state.PhysicalDefense = M(false)
		end
	end
	if field == "MagicalDefense" or field == "PhysicalDefense" then
		if state.PhysicalDefense.value == false and state.MagicalDefense.value == false then
			state.DefenseMode.current = 'None'
			state.DefenseMode:set('None')
		end
    end
end


-------------------------------------------------------------------------------------------------------------------
-- User code that supplements standard library decisions.
-------------------------------------------------------------------------------------------------------------------

-- Called any time we attempt to handle automatic gear equips (ie: engaged or idle gear).
function job_handle_equipping_gear(playerStatus, eventArgs)
	update_combat_form()
	check_moving()
	select_movement_feet()
	determine_haste_group()
	update()
end

-- Get custom spell maps
function job_get_spell_map(spell, default_spell_map)
    if spell.skill == "Ninjutsu" then
        if not default_spell_map then
            if spell.target.type == 'SELF' then
                return 'NinjutsuBuff'
            else
                return 'NinjutsuDebuff'
            end
        end
    end
end

-- Modify the default idle set after it was constructed.
function customize_idle_set(idleSet)
	lockouts()
	
    if state.Buff.Migawari then
        idleSet = set_combine(idleSet, sets.buff.Migawari)
    end
    if state.Buff.doom then
        idleSet = set_combine(idleSet, sets.buff.Doom)
		add_to_chat(200,('__\\||//__***** '):color(Notification_color) .. (' Doomed '):color(warning_text) .. ('*****__\\||//__'):color(Notification_color) )
    end	
	
	if state.DefenseMode.current == 'None' then
		if state.Buff["Reive Mark"] then
			idleSet = set_combine(idleSet, sets.buff.Reive)
		end
		if state.CP.value == true then
			idleSet = set_combine(idleSet, sets.CP)
		end
		if state.Auto_Kite.value == true then
			idleSet = set_combine(idleSet, sets.Kiting)
		end
	end
    return idleSet
end


-- Modify the default melee set after it was constructed.
function customize_melee_set(meleeSet)
	lockouts()
	
    if state.Buff.Migawari then
        meleeSet = set_combine(meleeSet, sets.buff.Migawari)
    end
    if state.Buff.doom then
        meleeSet = set_combine(meleeSet, sets.buff.Doom)
		add_to_chat(200,('__\\||//__***** '):color(Notification_color) .. (' Doomed '):color(warning_text) .. ('*****__\\||//__'):color(Notification_color) )
    end
	if state.DefenseMode.current == 'None' then 
		if state.Buff["Reive Mark"] then
			meleeSet = set_combine(meleeSet, sets.buff.Reive)
		end
		if state.CP.value == true then
			meleeSet = set_combine(meleeSet, sets.CP)
		end
	end
	if state.Buff.Sange and player.inventory["Happo Shuriken"] and not Two_Handed:contains(player.equipment.main) then
		meleeSet = set_combine(meleeSet, sets.buff.Sange)
	else
		send_command('cancel Sange')
	end
    return meleeSet
end

function customize_defense_set(defenseSet)
	lockouts()
    
    if state.Buff.doom then
        defenseSet = set_combine(defenseSet, sets.buff.Doom)
		add_to_chat(200,('__\\||//__***** '):color(Notification_color) .. (' Doomed '):color(warning_text) .. ('*****__\\||//__'):color(Notification_color) )
    end
    return defenseSet
end

function lockouts()

	if Tele_Ring:contains(player.equipment.ring1) and unlock_em == false then
		if Ring_slot_locked_1 == false then
			add_to_chat(200,('[Tele Ring Equipped: '):color(Notification_color) .. ('-> Locking \"'..player.equipment.ring1 .. '\"'):color(text_color) .. (']'):color(Notification_color) )
		end
		Ring_slot_locked_1 = true
		disable('ring1')
	end
	if Tele_Ring:contains(player.equipment.ring2) and unlock_em == false then
		if Ring_slot_locked_2 == false then
			add_to_chat(200,('[Tele Ring Equipped: '):color(Notification_color) .. ('-> Locking \"'..player.equipment.ring2 .. '\"'):color(text_color) .. (']'):color(Notification_color) )
		end
		Ring_slot_locked_2 = true
		disable('ring2')
	end
	
	if (Tele_Ring:contains(player.equipment.ring1) or Tele_Ring:contains(player.equipment.ring2)) and unlock_em then
		enable('ring1')
		enable('ring2')
	elseif not (Tele_Ring:contains(player.equipment.ring1) or Tele_Ring:contains(player.equipment.ring2)) and unlock_em then 
		unlock_em = false
		Ring_slot_locked_1 = false
		Ring_slot_locked_2 = false
		add_to_chat(200,('[Zoned: '):color(Notification_color) .. ('-> Un-locking Tele/Warp Rings '):color(text_color) .. (']'):color(Notification_color) )
	elseif not Tele_Ring:contains(player.equipment.ring1) and Ring_slot_locked_1 and unlock_em == false then 
		Ring_slot_locked_1 = false
		enable('ring1')
		add_to_chat(200,('[Tele Ring Removed manually: '):color(Notification_color) .. ('-> Un-locking Slot '):color(text_color) .. (']'):color(Notification_color) )
	elseif not Tele_Ring:contains(player.equipment.ring2) and Ring_slot_locked_2 and unlock_em == false then 
		Ring_slot_locked_2 = false
		enable('ring2')
		add_to_chat(200,('[Tele Ring Removed manually: '):color(Notification_color) .. ('-> Un-locking Slot '):color(text_color) .. (']'):color(Notification_color) )
	end
	--------------------------------
	-- Ring locks for exp ring use
	
	if Ring_lock:contains(player.equipment.ring1) and Ring_slot_locked_1 == false then
		disable('ring1')
	elseif not Ring_lock:contains(player.equipment.ring1) and Ring_slot_locked_1 == false then
		enable('ring1')
	end
	
	if Ring_lock:contains(player.equipment.ring2) and Ring_slot_locked_2 == false then
		disable('ring2')
	elseif not Ring_lock:contains(player.equipment.ring2) and Ring_slot_locked_2 == false then
		enable('ring2')
	end
	
	---------------------------------
	-- earring locks
	
	if Ear_lock:contains(player.equipment.ear1) then
		disable('Ear1')
	elseif not Ear_lock:contains(player.equipment.ear1) then
		enable('Ear1')
	end
	if Ear_lock:contains(player.equipment.ear2) then
		disable('Ear2')
	elseif not Ear_lock:contains(player.equipment.ear2) then
		enable('Ear2')
	end
	
end

function reset_rings()
	if Ring_slot_locked_1 or Ring_slot_locked_2 then
		unlock_em = true
	end
end

windower.raw_register_event('zone change',reset_rings)

-- Called by the default 'update' self-command.
function job_update(cmdParams, eventArgs)
	handle_equipping_gear(player.status)
end

function check_moving()
	if state.DefenseMode.value == 'None'  and state.Kiting.value == false then
		if state.Auto_Kite.value == false and moving then
			state.Auto_Kite:set(true)
		elseif state.Auto_Kite.value == true and moving == false then
			state.Auto_Kite:set(false)
		end
	end
end

-- Function to display the current relevant user state when doing an update.
-- Return true if display was handled, and you don't want the default info shown.
function display_current_job_state(eventArgs)
	
    local msg = ('[Melee'):color(Notification_color)
    
    if state.CombatForm.has_value then
        msg = msg .. (' (' .. state.CombatForm.value .. ')'):color(text_color)
    end
    
	if #classes.CustomMeleeGroups > 0 then
        for i = 1,#classes.CustomMeleeGroups do
			if classes.CustomMeleeGroups[i] ~= 'None' then
				if i == 1 then
					msg = msg .. (' ('):color(Notification_color)
				end
				msg = msg .. (classes.CustomMeleeGroups[i]):color(Notification_color)
				if i < #classes.CustomMeleeGroups then
					msg = msg .. (' + '):color(Notification_color)
				end
				if i == #classes.CustomMeleeGroups then
					msg = msg .. (')'):color(Notification_color)
				end
			end
        end
    end
	
    msg = msg .. (': '):color(Notification_color)
    
   if state.DefenseMode.value == 'None' then
		msg = msg .. (state.OffenseMode.value):color(text_color)
	else
		msg = msg ..('LOCKED: ' ):color(warning_text) .. (state.OffenseMode.value):color(text_color)
	end
	
    if state.HybridMode.value ~= 'Normal' then
        msg = msg .. (' + '):color(text_color) .. (state.HybridMode.value):color(warning_text)
    end
	
    if state.DefenseMode.value == 'None' then
		msg = msg .. ('] [WS: '):color(Notification_color) .. (state.WeaponskillMode.value):color(text_color) .. ('] '):color(Notification_color)
	else
		msg = msg .. ('] [WS: '):color(Notification_color) .. ('LOCKED: ' ):color(warning_text) .. (state.WeaponskillMode.value):color(text_color) .. ('] '):color(Notification_color)
	end
    
    if state.Kiting.value == true then
        msg = msg .. ('[Kiting'):color(Notification_color) .. ('] '):color(Notification_color)
    end

    if state.PCTargetMode.value ~= 'default' then
        msg = msg .. ('[Target PC: '):color(Notification_color)..state.PCTargetMode.value .. ('] '):color(Notification_color)
    end

    if state.SelectNPCTargets.value == true then
        msg = msg .. ('[Target NPCs'):color(Notification_color).. ('] '):color(Notification_color) .. ('] '):color(Notification_color)
    end
	
	if state.DefenseMode.value ~= 'None' then
        msg = msg  .. ('\n')..('['):color(warning_text) .. ('Defense: '):color(warning_text) .. (state.DefenseMode.value .. ' (' .. state[state.DefenseMode.value .. 'DefenseMode'].value .. ')'):color(text_color)..('] '):color(warning_text)
    end
	
	add_to_chat(122, msg)

    eventArgs.handled = true
	save_settings()
end

-------------------------------------------------------------------------------------------------------------------
-- Utility functions specific to this job.
-------------------------------------------------------------------------------------------------------------------
function update_combat_form()
	state.CombatForm:reset()
	if DW == true then
		state.CombatForm:set('DW')
	elseif H2H == true then
		state.CombatForm:set('H2H')
	end
end


function determine_haste_group()
	
	classes.CustomMeleeGroups:clear()
	-- Choose gearset based on DW needed
	-- 0 haste 		= 39 DW
	-- 50 haste 		= 37 DW
	-- 100 haste 	= 35 DW
	-- 150 haste 	= 32 DW
	-- 200 haste 	= 29 DW
	-- 250 haste 	= 26 DW
	-- 300 haste 	= 22 DW
	-- 306 haste 	= 21 DW
	-- 317 haste 	= 20 DW
	-- 350 haste 	= 17 DW
	-- 372 haste 	= 14 DW
	-- 400 haste 	= 10 DW
	-- 450 haste 	= 1 DW
	if DW == true then
		if DW_needed < 10 then
			classes.CustomMeleeGroups:append('DW: 0-9')
		elseif DW_needed > 10 and DW_needed < 14 then
			classes.CustomMeleeGroups:append('DW: 10-13')
		elseif DW_needed > 13 and DW_needed < 17 then
			classes.CustomMeleeGroups:append('DW: 14-16')
		elseif DW_needed > 16 and DW_needed < 20 then
			classes.CustomMeleeGroups:append('DW: 17-19')
		elseif DW_needed == 20 then
			classes.CustomMeleeGroups:append('DW: 20')
		elseif DW_needed == 21 then
			classes.CustomMeleeGroups:append('DW: 21')
		elseif DW_needed > 21 and DW_needed < 26 then
			classes.CustomMeleeGroups:append('DW: 22-25')
		elseif DW_needed > 25 and DW_needed < 29 then
			classes.CustomMeleeGroups:append('DW: 26-28')
		elseif DW_needed > 28 and DW_needed < 32 then
			classes.CustomMeleeGroups:append('DW: 29-31')
		elseif DW_needed > 31 and DW_needed < 35 then
			classes.CustomMeleeGroups:append('DW: 32-34')
		elseif DW_needed > 34 and DW_needed < 37 then
			classes.CustomMeleeGroups:append('DW: 35-36')
		elseif DW_needed > 36 and DW_needed < 39 then
			classes.CustomMeleeGroups:append('DW: 37-38')
		elseif DW_needed > 38 then
			classes.CustomMeleeGroups:append('DW: 39')
		end
	end
	
end

function select_movement_feet()
    if world.time >= 17*60 or world.time < 7*60 then
        gear.MovementFeet.name = gear.NightFeet
    else
        gear.MovementFeet.name = gear.DayFeet
    end
end

-- Called for custom player commands.
function job_self_command(cmdParams, eventArgs)

    gearinfo(cmdParams, eventArgs)
	
	if cmdParams[1] == 'hide' then
		if hide_window then
			hide_window = false
		else
			hide_window = true
		end
		old_inform.hide_window = hide_window
	end
	
	if cmdParams[1] == 'help' then
	
		local chat_purple = string.char(0x1F, 200)
		local chat_grey = string.char(0x1F, 160)
		local chat_red = string.char(0x1F, 167)
		local chat_white = string.char(0x1F, 001)
		local chat_green = string.char(0x1F, 214)
		local chat_yellow = string.char(0x1F, 036)
		local chat_d_blue = string.char(0x1F, 207)
		local chat_pink = string.char(0x1E, 5)
		local chat_l_blue = string.char(0x1E, 6)
		
		windower.add_to_chat(6, ' ')
		windower.add_to_chat(6, chat_white.. 	'                         ----------------------------------' )
		windower.add_to_chat(6, chat_d_blue.. 	'                         Welcome to Sebs Gearswap help!' )
		windower.add_to_chat(6, chat_white.. 	'                         ----------------------------------' )
		windower.add_to_chat(6, ' ')
		windower.add_to_chat(6, chat_d_blue.. 	'You may manually type these with \"\/\/gs c [function]\" eg. '.. chat_yellow ..' \"\/\/gs c update user\"')
		windower.add_to_chat(6, chat_d_blue.. 	'If you wish to macro the functions please use \"\/con gs c [function]\" eg. '.. chat_yellow ..' \"\/con gs c update user\"')
		windower.add_to_chat(6, chat_yellow.. 	'W-key'.. chat_d_blue ..' means Windows key')
		windower.add_to_chat(6, ' ')
		windower.add_to_chat(6, chat_green.. 	'Key Binds available:')
		windower.add_to_chat(6, chat_yellow.. 	'           \'F12\''..chat_l_blue  ..' = update user ' .. chat_white .. '  --  Will check and equip correct gear.')
		windower.add_to_chat(6, chat_d_blue.. 	'Will also save the current location of the gearswap info text box to file')
		windower.add_to_chat(6, chat_yellow..	'   \'Ctrl + F12\''..chat_l_blue  ..' = cycle CastingMode ' .. chat_white .. '   --  Cycles to resistant mode \(more Macc\).')
		windower.add_to_chat(6, chat_yellow..	'    \'Alt + F12\''..chat_l_blue  ..' = cycle IdleMode ' .. chat_white .. '  --  Cycle through idle modes.')
		windower.add_to_chat(6, chat_yellow..	'\'W-Key + F12\''..chat_l_blue  ..' = toggle kiting ' .. chat_white .. '  --  Locks movement speed gear on over any set')
		windower.add_to_chat(6, ' ')
		windower.add_to_chat(6, chat_yellow..	'   \'Ctrl + F11\''..chat_l_blue  ..' = cycle CP ' .. chat_white .. '  --  Makes you utilise CP cape')
		windower.add_to_chat(6, ' ')
		windower.add_to_chat(6, chat_yellow.. 	'             \'[\''..chat_l_blue  ..' = toggle PhysicalDefense ' .. chat_white .. '  --  Locks PDT set on.')
		windower.add_to_chat(6, chat_yellow..	'      \'Ctrl + [\''..chat_l_blue  ..' = cycle OffenseMode ' .. chat_white .. '   --  Cycles throught melee accuracy modes.')
		windower.add_to_chat(6, chat_yellow..	'  \'W-Key + [\''..chat_l_blue  ..' = cycle HybridMode ' .. chat_white .. '  --  Cycles thought Hybrid modes \(usually just DT\)')
		windower.add_to_chat(6, ' ')
		windower.add_to_chat(6, chat_yellow..	'             \']\''..chat_l_blue  ..' = toggle MagicalDefense ' .. chat_white .. '  --  Locks MDT set on.')
		windower.add_to_chat(6, ' ')
		windower.add_to_chat(6, chat_d_blue.. 	'If you need more help or run into problems, you can contact me via email at ' .. chat_yellow .. 'sebyg666@hotmail.com')
		windower.add_to_chat(6, chat_d_blue.. 	'Alternatively if you have me on your skype list, just leave me a message there and ill get back to you.')
		windower.add_to_chat(6, ' ')
		windower.add_to_chat(6, chat_green.. 	'Warning: Shameless plug follows.')
		windower.add_to_chat(6, chat_d_blue.. 	'If You are a big fan of my lua\'s and you wish to support me, you are more then welcome to donate any amount of money')
		windower.add_to_chat(6, chat_d_blue.. 	'via paypal at the above email adress. You may also tell other people you trust about my lua\'s and how to contact me,')
		windower.add_to_chat(6, chat_d_blue.. 	'for help setting up, and finally you can also find me streaming live on twitch at '.. chat_yellow .. 'www.twitch.tv/Sebbyg')
		windower.add_to_chat(6, ' ')
	
	end
	
end

initialize = function(text, t)
    local properties = L{}
	
    if state.OffenseMode then
        properties:append('${OffenseMode|0}')
    end
	if state.OneirosRing then
        properties:append('${OneirosRing}')
    end
	if state.CastingMode then
        properties:append('${CastingMode|0}')
    end
	if state.IdleMode then
        properties:append('${IdleMode}')
    end
	if state.Kiting then
        properties:append('${Kiting}')
    end
	if state.CP then
        properties:append('${CP}')
    end
	if info.haste then
		properties:append('${haste}')
	end
	if state.DefenseMode then
        properties:append('${DefenseMode}')
    end
	properties:append('${is_Moving}')
    text:clear()
    text:append(properties:concat(''))
	update()
end

function update()
	
	local white = '\\cs(220,220,220)'
	local blue = '\\cs(150,150,235)'
	local red = '\\cs(255,0,0)'
	local orange = '\\cs(232,138,13)'
	local yellow = '\\cs(220,220,0)'
	local green = '\\cs(0,225,0)'
	local purple = '\\cs(213,43,196)'
	
	if not windower.ffxi.get_info().logged_in or not windower.ffxi.get_player() or zoning_bool or hide_window then
		text_box:hide()
		return
	end
	
	local inform = {}
	local msg = ' [Melee'
	if #classes.CustomMeleeGroups > 0 then
		for i = 1,#classes.CustomMeleeGroups do
			if classes.CustomMeleeGroups[i] ~= 'None' then
				if i == 1 then msg = msg .. ' (' end
				msg = msg .. classes.CustomMeleeGroups[i]
				if i < #classes.CustomMeleeGroups then 
					msg = msg .. ' + ' 
				end
				if i == #classes.CustomMeleeGroups then 
					msg = msg .. ')' 
				end
			end
		end
	end
	
	msg = msg .. ': '
	
	if state.DefenseMode.value == 'None' then
		if state.HybridMode.value ~= 'Normal' then
			msg = blue .. msg .. white .. state.OffenseMode.value .. blue .. ' + ' .. yellow .. state.HybridMode.value .. blue .. '] '
		else
			msg = blue .. msg .. white .. state.OffenseMode.value .. blue .. '] '
		end
	else
		if state.HybridMode.value ~= 'Normal' then
			msg = red .. msg .. state.OffenseMode.value .. ' + ' .. state.HybridMode.value .. '] '
		else
			msg = red .. msg .. state.OffenseMode.value .. '] '
		end
	end

	if state.DefenseMode.value ~= 'None' then 
		inform.OffenseMode = msg .. '\\cr'
	else
		inform.OffenseMode = msg .. '\\cr'
	end
	
	inform.CastingMode = (blue .. ('\n [Casting: '.. white .. state.CastingMode.value:lpad(' ', 2) .. blue .. '] ' )) .. '\\cr'
	
	if state.DefenseMode.value == 'None' then
		inform.IdleMode = (blue .. ('\n [Idle: '.. white .. state.IdleMode.value:lpad(' ', 2) .. blue .. '] ' )) .. '\\cr'
	else
		inform.IdleMode = (red .. ('\n [Idle: '..state.IdleMode.value:lpad(' ', 2) .. '] ' )) .. '\\cr'
	end
		
	if state.DefenseMode.value == 'None' then
		if state.Kiting.value == true and state.CP.value == true then
			inform.Kiting = (yellow .. ('\n [Kiting] ' )) .. '\\cr'
			inform.CP = (orange .. ('[CP Cape] ' )) .. '\\cr'
		elseif state.Kiting.value == true and state.CP.value == false then
			inform.Kiting = (yellow .. ('\n [Kiting] ' )) .. '\\cr'
			inform.CP = ('')
		elseif state.Kiting.value == false and state.CP.value == true then
			inform.Kiting = ('')
			inform.CP = (orange .. ('\n [CP Cape] ' )) .. '\\cr'
		elseif state.Kiting.value == false and state.CP.value == false then
			inform.Kiting = ('')
			inform.CP = ('')
		end
	else
		if state.Kiting.value == true and state.CP.value == true then
			inform.Kiting = (yellow .. ('\n [Kiting] ' )) .. '\\cr'
			inform.CP = (red .. ('[CP Cape] ' )) .. '\\cr'
		elseif state.Kiting.value == true and state.CP.value == false then
			inform.Kiting = (yellow .. ('\n [Kiting] ' )) .. '\\cr'
			inform.CP = ('')
		elseif state.Kiting.value == false and state.CP.value == true then
			inform.Kiting = ('')
			inform.CP = (red .. ('\n [CP Cape] ' )) .. '\\cr'
		elseif state.Kiting.value == false and state.CP.value == false then
			inform.Kiting = ('')
			inform.CP = ('')
		end
	end
	
	if state.DefenseMode.value ~= 'None' then
		inform.DefenseMode = (red .. ('\n [' .. 'DEFENCE: ' .. state.DefenseMode.value .. white ..' (' ..state[state.DefenseMode.value .. 'DefenseMode'].value ..')'..red..']' )) .. '\\cr'
	else
		inform.DefenseMode = ('')
	end
	
	if state.DefenseMode.value == 'None' then
		if moving == true then
			inform.is_Moving = (yellow .. ('\n [Moving]' )) .. '\\cr'
		else
			inform.is_Moving = ('')
		end
	end
	
	if not table.equals(old_inform, inform) then
		text_box:update(inform)
		text_box:show()
		old_inform = inform
	end
end

windower.register_event('unload', function()
	text_box:destroy()
	text_box = nil
	
	send_command('unbind ^`')
    send_command('unbind !`')
	send_command('unbind @`')
	
	send_command('unbind f7')
	send_command('unbind ^f7')
	send_command('unbind !f7')
	send_command('unbind @f7')
	
	send_command('unbind f8')
	send_command('unbind ^f8')
	send_command('unbind !f8')
	send_command('unbind @f8')
	
	send_command('unbind f9')
	send_command('unbind ^f9')
	send_command('unbind !f9')
	send_command('unbind @f9')
	
	send_command('unbind f10')
	send_command('unbind ^f10')
	send_command('unbind !f10')
	send_command('unbind @f10')
	
	send_command('unbind f11')
	send_command('unbind ^f11')
	send_command('unbind !f11')
	send_command('unbind @f11')
	
	send_command('unbind f12')
	send_command('unbind ^f12')
	send_command('unbind !f12')
	send_command('unbind @f12')
end)

windower.register_event('job change',function()
    send_command('gs r')
end)

function select_default_macro_book()
end
-- Header
-- Title : NPCBot Creation Assistant
-- Description : Lua script to assist server admins in generating new NPCBots manually or randomly. Single, sets, etc.
-- Version : 0.1
-- Link : https://github.com/fatherzen/npcbotca
-- End Header


-- Races
rHuman = "1"
rOrc = "2"
rDwarf = "3"
rNightElf = "4"
rUndead = "5"
rTauren = "6"
rGnome = "7"
rTroll = "8"
rBloodElf = "10"
rDraenei = "11"

-- Sex
sMale = "0"
sFemale = "1"

-- Classes
cWarrior = "1"
cPaladin = "2"
cHunter = "3"
cRogue = "4"
cPriest = "5"
cDKnight = "6"
cShaman = "7"
cMage = "8"
cWarlock = "9"
cDruid = "11"

-- Split Races into Factions

allianceRaces = {rHuman, rDwarf, rNightElf, rGnome, rDraenei}
hordeRaces = {rOrc, rUndead, rTauren, rTroll, rBloodElf}

-- Compatible Race and Classes

cpatClassesHuman = {cWarrior, cPaladin, cRogue, cPriest, cDKnight, cMage, cWarlock}
cpatClassesOrc = {cWarrior, cHunter, cRogue, cDKnight, cShaman, cWarlock}
cpatClassesDwarf = {cWarrior, cPaladin, cHunter, cRogue, cPriest, cDKnight}
cpatClassesNightElf = {cWarrior, cHunter, cRogue, cPriest, cDKnight, cDruid}
cpatClassesUndead = {cWarrior, cRogue, cPriest, cDKnight, cMage, cWarlock}
cpatClassesTauren = {cWarrior, cHunter, cDKnight, cShaman, cDruid}
cpatClassesGnome = {cWarrior, cRogue, cDKnight, cMage, cWarlock}
cpatClassesTroll = {cWarrior, cHunter, cRogue, cPriest, cDKnight, cShaman, cMage}
cpatClassesBloodElf = {cPaladin, cHunter, cRogue, cPriest, cDKnight, cMage, cWarlock}
cpatClassesDraenei = {cWarrior, cPaladin, cHunter, cPriest, cDKnight, cShaman, cMage}

-- Human Male Ranges
huMSkin = {"0", "1", "2", "3", "4", "5", "6", "7", "8", "9"}
huMFace = {"0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11"}
huMHair = {"0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16"}
huMHairCo = {"0", "1", "2", "3", "4", "5", "6", "7", "8", "9"}
huMFeat = {"0", "1", "2", "3", "4", "5", "6", "7", "8"}

-- Human Female Ranges
huFSkin = {"0", "1", "2", "3", "4", "5", "6", "7", "8", "9"}
huFFace = {"0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14"}
huFHair = {"0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23"}
huFHairCo = {"0", "1", "2", "3", "4", "5", "6", "7", "8", "9"}
huFFeat = {"0", "1", "2", "3", "4", "5", "6"}

-- Dwarf Male Ranges
dwMSkin = {"0", "1", "2", "3", "4", "5", "6", "7", "8"}
dwMFace = {"0", "1", "2", "3", "4", "5", "6", "7", "8", "9"}
dwMHair = {"0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15"}
dwMHairCo = {"0", "1", "2", "3", "4", "5", "6", "7", "8", "9"}
dwMFeat = {"0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10"}

-- Dwarf Female Ranges
dwFSkin = {"0", "1", "2", "3", "4", "5", "6", "7", "8"}
dwFFace = {"0", "1", "2", "3", "4", "5", "6", "7", "8", "9"}
dwFHair = {"0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18"}
dwFHairCo = {"0", "1", "2", "3", "4", "5", "6", "7", "8", "9"}
dwFFeat = {"0", "1", "2", "3", "4", "5"}

-- Night Elf Male Ranges
neMSkin = {"0", "1", "2", "3", "4", "5", "6", "7", "8"}
neMFace = {"0", "1", "2", "3", "4", "5", "6", "7", "8"}
neMHair = {"0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11"}
neMHairCo = {"0", "1", "2", "3", "4", "5", "6", "7"}
neMFeat = {"0", "1", "2", "3", "4", "5"}

-- Night Elf Female Ranges
neFSkin = {"0", "1", "2", "3", "4", "5", "6", "7", "8"}
neFFace = {"0", "1", "2", "3", "4", "5", "6", "7", "8"}
neFHair = {"0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11"}
neFHairCo = {"0", "1", "2", "3", "4", "5", "6", "7"}
neFFeat = {"0", "1", "2", "3", "4", "5", "6", "7", "8", "9"}

-- Gnome Male Ranges
gnMSkin = {"0", "1", "2", "3", "4"}
gnMFace = {"0", "1", "2", "3", "4", "5", "6"}
gnMHair = {"0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11"}
gnMHairCo = {"0", "1", "2", "3", "4", "5", "6", "7", "8"}
gnMFeat = {"0", "1", "2", "3", "4", "5", "6", "7"}

-- Gnome Female Ranges 
gnFSkin = {"0", "1", "2", "3", "4"}
gnFFace = {"0", "1", "2", "3", "4", "5", "6"}
gnFHair = {"0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11"}
gnFHairCo = {"0", "1", "2", "3", "4", "5", "6", "7", "8"}
gnFFeat = {"0", "1", "2", "3", "4", "5", "6"}

-- Draenei Male Ranges
drMSkin = {"0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13"}
drMFace = {"0", "1", "2", "3", "4", "5", "6", "7", "8", "9"}
drMHair = {"0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13"}
drMHairCo = {"0", "1", "2", "3", "4", "5", "6"}
drMFeat = {"0", "1", "2", "3", "4", "5", "6", "7"}

-- Draenei Female Ranges
drFSkin = {"0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13"}
drFFace = {"0", "1", "2", "3", "4", "5", "6", "7", "8", "9"}
drFHair = {"0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15"}
drFHairCo = {"0", "1", "2", "3", "4", "5", "6"}
drFFeat = {"0", "1", "2", "3", "4", "5", "6"}

-- Orc Male Ranges
orMSkin = {"0", "1", "2", "3", "4", "5", "6", "7", "8"}
orMFace = {"0", "1", "2", "3", "4", "5", "6", "7", "8"}
orMHair = {"0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11"}
orMHairCo = {"0", "1", "2", "3", "4", "5", "6", "7"}
orMFeat = {"0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10"}

-- Orc Female Ranges
orFSkin = {"0", "1", "2", "3", "4", "5", "6", "7", "8"}
orFFace = {"0", "1", "2", "3", "4", "5", "6", "7", "8"}
orFHair = {"0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12"}
orFHairCo = {"0", "1", "2", "3", "4", "5", "6", "7"}
orFFeat = {"0", "1", "2", "3", "4", "5", "6"}

-- Undead Male Ranges
unMSkin = {"0", "1", "2", "3", "4", "5"}
unMFace = {"0", "1", "2", "3", "4", "5", "6", "7", "8", "9"}
unMHair = {"0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14"}
unMHairCo = {"0", "1", "2", "3", "4", "5", "6", "7", "8", "9"}
unMFeat = {"0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16"}

-- Undead Female Ranges
unFSkin = {"0", "1", "2", "3", "4", "5"}
unFFace = {"0", "1", "2", "3", "4", "5", "6", "7", "8", "9"}
unFHair = {"0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14"}
unFHairCo = {"0", "1", "2", "3", "4", "5", "6", "7", "8", "9"}
unFFeat = {"0", "1", "2", "3", "4", "5", "6", "7"}

-- Tauren Male Ranges
taMSkin = {"0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18"}
taMFace = {"0", "1", "2", "3", "4"}
taMHair = {"0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12"}
taMHairCo = {"0", "1", "2"}
taMFeat = {"0", "1", "2", "3", "4", "5", "6"}

-- Tauren Female Ranges
taFSkin = {"0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10"}
taFFace = {"0", "1", "2", "3"}
taFHair = {"0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11"}
taFHairCo = {"0", "1", "2"}
taFFeat = {"0", "1", "2", "3", "4"}

-- Troll Male Ranges
trMSkin = {"0", "1", "2", "3", "4", "5"}
trMFace = {"0", "1", "2", "3", "4"}
trMHair = {"0", "1", "2", "3", "4", "5", "6", "7", "8", "9"}
trMHairCo = {"0", "1", "2", "3", "4", "5", "6", "7", "8", "9"}
trMFeat = {"0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10"}

-- Troll Female Ranges
trFSkin = {"0", "1", "2", "3", "4", "5"}
trFFace = {"0", "1", "2", "3", "4", "5"}
trFHair = {"0", "1", "2", "3", "4", "5", "6", "7", "8", "9"}
trFHairCo = {"0", "1", "2", "3", "4", "5", "6", "7", "8", "9"}
trFFeat = {"0", "1", "2", "3", "4", "5"}

-- Blood Elf Male Ranges
beMSkin = {"0", "1", "2", "3", "4", "5", "6", "7", "8", "9"}
beMFace = {"0", "1", "2", "3", "4", "5", "6", "7", "8", "9"}
beMHair = {"0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15"}
beMHairCo = {"0", "1", "2", "3", "4", "5", "6", "7", "8", "9"}
beMFeat = {"0", "1", "2", "3", "4", "5", "6", "7", "8", "9"}

-- Blood Elf Female Ranges
beFSkin = {"0", "1", "2", "3", "4", "5", "6", "7", "8", "9"}
beFFace = {"0", "1", "2", "3", "4", "5", "6", "7", "8", "9"}
beFHair = {"0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18"}
beFHairCo = {"0", "1", "2", "3", "4", "5", "6", "7", "8", "9"}
beFFeat = {"0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10"}


-- FUNCTIONS

-- Function to get race by choice
function getRaceByChoice(choice)
    local races = {rHuman, rOrc, rDwarf, rNightElf, rUndead, rTauren, rGnome, rTroll, rBloodElf, rDraenei}
    return races[tonumber(choice)]
end

-- Function to get class by choice
function getClassByChoice(choice)
    local classes = {cWarrior, cPaladin, cHunter, cRogue, cPriest, cDKnight, cShaman, cMage, cWarlock, cDruid}
    return classes[tonumber(choice)]
end

-- Function to get sex by choice
function getSexByChoice(choice)
    local sexes = {sMale, sFemale}
    return sexes[tonumber(choice)]
end

-- Function to get a random element from a table
function getRandomElement(table)
    local index = math.random(#table)
    return table[index]
end

-- Function to get class by choice and race
function getClassByChoiceAndRace(classChoice, race)
    local compatibleClasses

    if race == rHuman then
        compatibleClasses = {cWarrior, cPaladin, cRogue, cPriest, cDKnight, cMage, cWarlock}
    elseif race == rOrc then
        compatibleClasses = {cWarrior, cHunter, cRogue, cDKnight, cShaman, cWarlock}
    elseif race == rDwarf then
        compatibleClasses = {cWarrior, cPaladin, cHunter, cRogue, cPriest, cDKnight}
    elseif race == rNightElf then
        compatibleClasses = {cWarrior, cHunter, cRogue, cPriest, cDKnight, cDruid}
    elseif race == rUndead then
        compatibleClasses = {cWarrior, cRogue, cPriest, cDKnight, cMage, cWarlock}
    elseif race == rTauren then
        compatibleClasses = {cWarrior, cHunter, cDKnight, cShaman, cDruid}
    elseif race == rGnome then
        compatibleClasses = {cWarrior, cRogue, cDKnight, cMage, cWarlock}
    elseif race == rTroll then
        compatibleClasses = {cWarrior, cHunter, cRogue, cPriest, cDKnight, cShaman, cMage}
    elseif race == rBloodElf then
        compatibleClasses = {cPaladin, cHunter, cRogue, cPriest, cDKnight, cMage, cWarlock}
    elseif race == rDraenei then
        compatibleClasses = {cWarrior, cPaladin, cHunter, cPriest, cDKnight, cShaman, cMage}
    else
        compatibleClasses = {}  -- Handle other cases or provide a default
    end

    return compatibleClasses[tonumber(classChoice)]
end

-- Function to generate a random NPC
function generateRandomNPC()
    -- Randomly pick a race
    local race = getRandomElement({rHuman, rOrc, rDwarf, rNightElf, rUndead, rTauren, rGnome, rTroll, rBloodElf, rDraenei})

    -- Randomly pick a sex
    local sex = getRandomElement({sMale, sFemale})

    -- Randomly pick a class based on the chosen race
    local classes
    if race == rHuman then
        classes = cpatClassesHuman
    elseif race == rOrc then
        classes = cpatClassesOrc
    elseif race == rDwarf then
        classes = cpatClassesDwarf
    elseif race == rNightElf then
        classes = cpatClassesNightElf
	elseif race == rUndead then
        classes = cpatClassesUndead
	elseif race == rTauren then
        classes = cpatClassesTauren
	elseif race == rGnome then
        classes = cpatClassesGnome
	elseif race == rTroll then
        classes = cpatClassesTroll
	elseif race == rBloodElf then
        classes = cpatClassesBloodElf
	elseif race == rDraenei then
        classes = cpatClassesDraenei
	end
		

    local class = getRandomElement(classes)

    -- Randomly pick skin, face, hair, hair color, and feature values based on race and sex
    local skin, face, hair, hairCo, feat

    if race == rHuman then
        if sex == sMale then
            skin = getRandomElement(huMSkin)
            face = getRandomElement(huMFace)
            hair = getRandomElement(huMHair)
            hairCo = getRandomElement(huMHairCo)
            feat = getRandomElement(huMFeat)
        else
            skin = getRandomElement(huFSkin)
            face = getRandomElement(huFFace)
            hair = getRandomElement(huFHair)
            hairCo = getRandomElement(huFHairCo)
            feat = getRandomElement(huFFeat)
		end
    elseif race == rOrc then
        if sex == sMale then
            skin = getRandomElement(orMSkin)
            face = getRandomElement(orMFace)
            hair = getRandomElement(orMHair)
            hairCo = getRandomElement(orMHairCo)
            feat = getRandomElement(orMFeat)
        else
            skin = getRandomElement(orFSkin)
            face = getRandomElement(orFFace)
            hair = getRandomElement(orFHair)
            hairCo = getRandomElement(orFHairCo)
            feat = getRandomElement(orFFeat)
		end
	elseif race == rDwarf then
        if sex == sMale then
            skin = getRandomElement(dwMSkin)
            face = getRandomElement(dwMFace)
            hair = getRandomElement(dwMHair)
            hairCo = getRandomElement(dwMHairCo)
            feat = getRandomElement(dwMFeat)
        else
            skin = getRandomElement(dwFSkin)
            face = getRandomElement(dwFFace)
            hair = getRandomElement(dwFHair)
            hairCo = getRandomElement(dwFHairCo)
            feat = getRandomElement(dwFFeat)
		end	
	elseif race == rNightElf then
        if sex == sMale then
            skin = getRandomElement(neMSkin)
            face = getRandomElement(neMFace)
            hair = getRandomElement(neMHair)
            hairCo = getRandomElement(neMHairCo)
            feat = getRandomElement(neMFeat)
        else
            skin = getRandomElement(neFSkin)
            face = getRandomElement(neFFace)
            hair = getRandomElement(neFHair)
            hairCo = getRandomElement(neFHairCo)
            feat = getRandomElement(neFFeat)
		end
	elseif race == rUndead then
        if sex == sMale then
            skin = getRandomElement(unMSkin)
            face = getRandomElement(unMFace)
            hair = getRandomElement(unMHair)
            hairCo = getRandomElement(unMHairCo)
            feat = getRandomElement(unMFeat)
        else
            skin = getRandomElement(unFSkin)
            face = getRandomElement(unFFace)
            hair = getRandomElement(unFHair)
            hairCo = getRandomElement(unFHairCo)
            feat = getRandomElement(unFFeat)
		end
	elseif race == rTauren then
        if sex == sMale then
            skin = getRandomElement(taMSkin)
            face = getRandomElement(taMFace)
            hair = getRandomElement(taMHair)
            hairCo = getRandomElement(taMHairCo)
            feat = getRandomElement(taMFeat)
        else
            skin = getRandomElement(taFSkin)
            face = getRandomElement(taFFace)
            hair = getRandomElement(taFHair)
            hairCo = getRandomElement(taFHairCo)
            feat = getRandomElement(taFFeat)
		end
	elseif race == rGnome then
        if sex == sMale then
            skin = getRandomElement(gnMSkin)
            face = getRandomElement(gnMFace)
            hair = getRandomElement(gnMHair)
            hairCo = getRandomElement(gnMHairCo)
            feat = getRandomElement(gnMFeat)
        else
            skin = getRandomElement(gnFSkin)
            face = getRandomElement(gnFFace)
            hair = getRandomElement(gnFHair)
            hairCo = getRandomElement(gnFHairCo)
            feat = getRandomElement(gnFFeat)
		end
	elseif race == rTroll then
        if sex == sMale then
            skin = getRandomElement(trMSkin)
            face = getRandomElement(trMFace)
            hair = getRandomElement(trMHair)
            hairCo = getRandomElement(trMHairCo)
            feat = getRandomElement(trMFeat)
        else
            skin = getRandomElement(trFSkin)
            face = getRandomElement(trFFace)
            hair = getRandomElement(trFHair)
            hairCo = getRandomElement(trFHairCo)
            feat = getRandomElement(trFFeat)
		end
	elseif race == rBloodElf then
        if sex == sMale then
            skin = getRandomElement(beMSkin)
            face = getRandomElement(beMFace)
            hair = getRandomElement(beMHair)
            hairCo = getRandomElement(beMHairCo)
            feat = getRandomElement(beMFeat)
        else
            skin = getRandomElement(beFSkin)
            face = getRandomElement(beFFace)
            hair = getRandomElement(beFHair)
            hairCo = getRandomElement(beFHairCo)
            feat = getRandomElement(beFFeat)
		end
	elseif race == rDraenei then
        if sex == sMale then
            skin = getRandomElement(drMSkin)
            face = getRandomElement(drMFace)
            hair = getRandomElement(drMHair)
            hairCo = getRandomElement(drMHairCo)
            feat = getRandomElement(drMFeat)
        else
            skin = getRandomElement(drFSkin)
            face = getRandomElement(drFFace)
            hair = getRandomElement(drFHair)
            hairCo = getRandomElement(drFHairCo)
            feat = getRandomElement(drFFeat)
		end
	end

    -- Print the generated NPC details
	print("TestName" .. " " .. class .. " " .. race .. " " .. sex .. " " .. skin .. " " .. face .. " " .. hair .. " " .. hairCo .. " " .. feat )
end

-- Function to generate an NPC based on choices
function generateNPCByChoices(raceChoice, sexChoice, classChoice)
    -- Get race, sex, and class based on choices
    local race = getRaceByChoice(raceChoice)
    local sex = getSexByChoice(sexChoice)
    local class = getClassByChoiceAndRace(classChoice, race)

    -- Get skin, face, hair, hair color, and feature based on race and sex
    local skin, face, hair, hairCo, feat

    if race == rHuman then
        if sex == sMale then
            skin = getRandomElement(huMSkin)
            face = getRandomElement(huMFace)
            hair = getRandomElement(huMHair)
            hairCo = getRandomElement(huMHairCo)
            feat = getRandomElement(huMFeat)
        else
            skin = getRandomElement(huFSkin)
            face = getRandomElement(huFFace)
            hair = getRandomElement(huFHair)
            hairCo = getRandomElement(huFHairCo)
            feat = getRandomElement(huFFeat)
		end
    elseif race == rOrc then
        if sex == sMale then
            skin = getRandomElement(orMSkin)
            face = getRandomElement(orMFace)
            hair = getRandomElement(orMHair)
            hairCo = getRandomElement(orMHairCo)
            feat = getRandomElement(orMFeat)
        else
            skin = getRandomElement(orFSkin)
            face = getRandomElement(orFFace)
            hair = getRandomElement(orFHair)
            hairCo = getRandomElement(orFHairCo)
            feat = getRandomElement(orFFeat)
		end
	elseif race == rDwarf then
        if sex == sMale then
            skin = getRandomElement(dwMSkin)
            face = getRandomElement(dwMFace)
            hair = getRandomElement(dwMHair)
            hairCo = getRandomElement(dwMHairCo)
            feat = getRandomElement(dwMFeat)
        else
            skin = getRandomElement(dwFSkin)
            face = getRandomElement(dwFFace)
            hair = getRandomElement(dwFHair)
            hairCo = getRandomElement(dwFHairCo)
            feat = getRandomElement(dwFFeat)
		end	
	elseif race == rNightElf then
        if sex == sMale then
            skin = getRandomElement(neMSkin)
            face = getRandomElement(neMFace)
            hair = getRandomElement(neMHair)
            hairCo = getRandomElement(neMHairCo)
            feat = getRandomElement(neMFeat)
        else
            skin = getRandomElement(neFSkin)
            face = getRandomElement(neFFace)
            hair = getRandomElement(neFHair)
            hairCo = getRandomElement(neFHairCo)
            feat = getRandomElement(neFFeat)
		end
	elseif race == rUndead then
        if sex == sMale then
            skin = getRandomElement(unMSkin)
            face = getRandomElement(unMFace)
            hair = getRandomElement(unMHair)
            hairCo = getRandomElement(unMHairCo)
            feat = getRandomElement(unMFeat)
        else
            skin = getRandomElement(unFSkin)
            face = getRandomElement(unFFace)
            hair = getRandomElement(unFHair)
            hairCo = getRandomElement(unFHairCo)
            feat = getRandomElement(unFFeat)
		end
	elseif race == rTauren then
        if sex == sMale then
            skin = getRandomElement(taMSkin)
            face = getRandomElement(taMFace)
            hair = getRandomElement(taMHair)
            hairCo = getRandomElement(taMHairCo)
            feat = getRandomElement(taMFeat)
        else
            skin = getRandomElement(taFSkin)
            face = getRandomElement(taFFace)
            hair = getRandomElement(taFHair)
            hairCo = getRandomElement(taFHairCo)
            feat = getRandomElement(taFFeat)
		end
	elseif race == rGnome then
        if sex == sMale then
            skin = getRandomElement(gnMSkin)
            face = getRandomElement(gnMFace)
            hair = getRandomElement(gnMHair)
            hairCo = getRandomElement(gnMHairCo)
            feat = getRandomElement(gnMFeat)
        else
            skin = getRandomElement(gnFSkin)
            face = getRandomElement(gnFFace)
            hair = getRandomElement(gnFHair)
            hairCo = getRandomElement(gnFHairCo)
            feat = getRandomElement(gnFFeat)
		end
	elseif race == rTroll then
        if sex == sMale then
            skin = getRandomElement(trMSkin)
            face = getRandomElement(trMFace)
            hair = getRandomElement(trMHair)
            hairCo = getRandomElement(trMHairCo)
            feat = getRandomElement(trMFeat)
        else
            skin = getRandomElement(trFSkin)
            face = getRandomElement(trFFace)
            hair = getRandomElement(trFHair)
            hairCo = getRandomElement(trFHairCo)
            feat = getRandomElement(trFFeat)
		end
	elseif race == rBloodElf then
        if sex == sMale then
            skin = getRandomElement(beMSkin)
            face = getRandomElement(beMFace)
            hair = getRandomElement(beMHair)
            hairCo = getRandomElement(beMHairCo)
            feat = getRandomElement(beMFeat)
        else
            skin = getRandomElement(beFSkin)
            face = getRandomElement(beFFace)
            hair = getRandomElement(beFHair)
            hairCo = getRandomElement(beFHairCo)
            feat = getRandomElement(beFFeat)
		end
	elseif race == rDraenei then
        if sex == sMale then
            skin = getRandomElement(drMSkin)
            face = getRandomElement(drMFace)
            hair = getRandomElement(drMHair)
            hairCo = getRandomElement(drMHairCo)
            feat = getRandomElement(drMFeat)
        else
            skin = getRandomElement(drFSkin)
            face = getRandomElement(drFFace)
            hair = getRandomElement(drFHair)
            hairCo = getRandomElement(drFHairCo)
            feat = getRandomElement(drFFeat)
		end
	end
	
	-- Print the generated NPC details
	print("TestName" .. " " .. class .. " " .. race .. " " .. sex .. " " .. skin .. " " .. face .. " " .. hair .. " " .. hairCo .. " " .. feat )
end

-- Function to get a random race based on faction
function getRandomRaceByFaction(faction)
    if faction == "Alliance" then
        return getRandomElement(allianceRaces)
    elseif faction == "Horde" then
        return getRandomElement(hordeRaces)
    else
        return nil  -- Invalid faction
    end
end

-- Function to get a random race and class based on faction
function getRandomRaceAndClassByFaction(faction)
    local race
    local class

    if faction == "Alliance" then
        race = getRandomElement(allianceRaces)
        class = getRandomElement(getCompatibleClassesForRace(race))
    elseif faction == "Horde" then
        race = getRandomElement(hordeRaces)
        class = getRandomElement(getCompatibleClassesForRace(race))
    else
        return nil, nil  -- Invalid faction
    end

    return race, class
end

-- Function to get compatible classes for a given race
function getCompatibleClassesForRace(race)
    if race == rHuman then
        return cpatClassesHuman
    elseif race == rOrc then
        return cpatClassesOrc
    elseif race == rDwarf then
        return cpatClassesDwarf
    elseif race == rNightElf then
        return cpatClassesNightElf
    elseif race == rUndead then
        return cpatClassesUndead
    elseif race == rTauren then
        return cpatClassesTauren
    elseif race == rGnome then
        return cpatClassesGnome
    elseif race == rTroll then
        return cpatClassesTroll
    elseif race == rBloodElf then
        return cpatClassesBloodElf
    elseif race == rDraenei then
        return cpatClassesDraenei
    else
        return {}  -- No specific class restrictions for this race
    end
end

-- SEED RANDOM

-- Seed the random number generator using the current time and other factors
local seed = math.floor(os.clock() * 1000) + os.time()
math.randomseed(seed)

-- WELCOME SCREEN

print("Welcome to the NPCBot Creation Assistant")
print("Please select one of the following options - ")
print("1. Completely Random NPCBot")
print("2. Pick Race / Class / Sex Variant")
menuchoice = io.read()

if menuchoice == "1" then
    print("How many NPC Bots would you like to generate?")
    print("Please input a numerical value (ex. 1-100)")
    randqtychoice = io.read()

    -- Generate the specified quantity of random NPCs
    for i = 1, tonumber(randqtychoice) do
        generateRandomNPC()
    end
	
elseif menuchoice == "2" then
    print("How many NPC Bots would you like to generate?")
    print("Please input a numerical value (ex. 1-100)")
    randqtychoice = io.read()
	print("Please choose a race -")
    print("1 Human")
    print("2 Orc")
    print("3 Dwarf")
    print("4 Night Elf")
    print("5 Undead")
    print("6 Tauren")
    print("7 Gnome")
    print("8 Troll")
    print("9 Blood Elf")
    print("10 Draenei")
    raceChoice = io.read()
	-- Only show compatible classed based on the choice of race.
    if raceChoice == "1" then
        print("Please choose a class - ")
        print("1 Warrior")
        print("2 Paladin")
        print("3 Rogue")
        print("4 Priest")
        print("5 Death Knight")
        print("6 Mage")
        print("7 Warlock")
        print("Press ENTER for Random")
        classChoice = io.read()
    elseif raceChoice == "2" then
        print("1 Warrior")
        print("2 Hunter")
        print("3 Rogue")
        print("4 Death Knight")
        print("5 Shaman")
        print("6 Warlock")
        print("Press ENTER for Random")
        classChoice = io.read()
    elseif raceChoice == "3" then
        print("1 Warrior")
        print("2 Paladin")
        print("3 Hunter")
        print("4 Rogue")
        print("5 Priest")
        print("6 Death Knight")
        print("Press ENTER for Random")
        classChoice = io.read()
    elseif raceChoice == "4" then
        print("1 Warrior")
        print("2 Hunter")
        print("3 Rogue")
        print("4 Priest")
        print("5 Death Knight")
        print("6 Druid")
        print("Press ENTER for Random")
        classChoice = io.read()
    elseif raceChoice == "5" then
        print("1 Warrior")
        print("2 Rogue")
        print("3 Priest")
        print("4 Death Knight")
        print("5 Mage")
        print("6 Warlock")
        print("Press ENTER for Random")
        classChoice = io.read()
    elseif raceChoice == "6" then
        print("1 Warrior")
        print("2 Hunter")
        print("3 Death Knight")
        print("4 Shaman")
        print("5 Druid")
        print("Press ENTER for Random")
        classChoice = io.read()
    elseif raceChoice == "7" then
        print("1 Warrior")
        print("2 Rogue")
        print("3 Death Knight")
        print("4 Mage")
        print("5 Warlock")
        print("Press ENTER for Random")
        classChoice = io.read()
    elseif raceChoice == "8" then
        print("1 Warrior")
        print("2 Hunter")
        print("3 Rogue")
        print("4 Priest")
        print("5 Death Knight")
        print("6 Shaman")
        print("7 Mage")
        print("Press ENTER for Random")
        classChoice = io.read()
    elseif raceChoice == "9" then
        print("1 Paladin")
        print("2 Hunter")
        print("3 Rogue")
        print("4 Priest")
        print("5 Death Knight")
        print("6 Mage")
        print("7 Warlock")
        print("Press ENTER for Random")
        classChoice = io.read()
    elseif raceChoice == "10" then
        print("1 Warrior")
        print("2 Paladin")
        print("3 Hunter")
        print("4 Priest")
        print("5 Death Knight")
        print("6 Shaman")
        print("7 Mage")
        print("Press ENTER for Random")
        classChoice = io.read()
	end
	print("Please choose a sex -")
	print("1 Male")
	print("2 Female")
        print("Press ENTER for Random")
	sexChoice = io.read()
	
	
	print("Generating : " .. randqtychoice .. " " .. raceChoice .. " " .. classChoice .. " " .. sexChoice)
	
	-- Generate the specified quantity of cutomized NPCs
	for i = 1, tonumber(randqtychoice) do
        generateNPCByChoices(raceChoice, sexChoice, classChoice)
    end
	
	
end

io.read()
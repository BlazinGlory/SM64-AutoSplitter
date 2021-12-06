// Memory of Japanese version
state("Project64", "Japanese") {
    uint gameRunTime : "Project64.exe", 0xD6A1C, 0x32C640;
    byte fileSelected : "Project64.exe", 0xD6A1C, 0x32CE96;
    byte mapID : "Project64.exe", 0xD6A1C, 0x32CE9A;
    ushort animation : "Project64.exe", 0xD6A1C, 0x339E0C;
    short starNumber : "Project64.exe", 0xD6A1C, 0x339EA8;
    byte mainMenu : "Project64.exe", 0xD6A1C, 0x1A7BD3;
    uint music : "Project64.exe", 0xD6A1C, 0x222A1C;
    byte fileAkey : "Project64.exe", 0xD6A1C, 0x207B08;
    byte fileBkey : "Project64.exe", 0xD6A1C, 0x207B78;
    byte fileCkey : "Project64.exe", 0xD6A1C, 0x207BE8;
    byte fileDkey : "Project64.exe", 0xD6A1C, 0x207F58;
}
// Memory of Shindou version
 state("Project64", "Shindou") {
   uint gameRunTime : "Project64.exe", 0xD6A1C, 0x30CCB0;
   byte fileSelected : "Project64.exe", 0xD6A1C, 0x30D526;
   byte mapID : "Project64.exe", 0xD6A1C, 0x30D52A;
   ushort animation : "Project64.exe", 0xD6A1C, 0x31D9CC;
   short starNumber : "Project64.exe", 0xD6A1C, 0x31DA68;
   byte mainMenu : "Project64.exe", 0xD6A1C, 0x1A7203;
   uint music : "Project64.exe", 0xD6A1C, 0x349DAC;
   byte fileAkey : "Project64.exe", 0xD6A1C, 0x203F08;
   byte fileBkey : "Project64.exe", 0xD6A1C, 0x203F78;
   byte fileCkey : "Project64.exe", 0xD6A1C, 0x203FE8;
   byte fileDkey : "Project64.exe", 0xD6A1C, 0x204058;
}
// Memory of US version
 state("Project64", "USA") {
   uint gameRunTime : "Project64.exe", 0xD6A1C, 0x32D580;
   byte fileSelected : "Project64.exe", 0xD6A1C, 0x32DDF6;
   byte mapID : "Project64.exe", 0xD6A1C, 0x32DDFA;
   ushort animation : "Project64.exe", 0xD6A1C, 0x33B17C;
   short starNumber : "Project64.exe", 0xD6A1C, 0x33B218;
   byte mainMenu : "Project64.exe", 0xD6A1C, 0x1A7D13;
   uint music : "Project64.exe", 0xD6A1C, 0x22261C;
   byte fileAkey : "Project64.exe", 0xD6A1C, 0x207708;
   byte fileBkey : "Project64.exe", 0xD6A1C, 0x207778;
   byte fileCkey : "Project64.exe", 0xD6A1C, 0x2077E8;
   byte fileDkey : "Project64.exe", 0xD6A1C, 0x207858;
}
// Memory of Europe version
 state("Project64", "Europe") {
   uint gameRunTime : "Project64.exe", 0xD6A1C, 0x2F9730;
   byte fileSelected : "Project64.exe", 0xD6A1C, 0x2F9FC6;
   byte mapID : "Project64.exe", 0xD6A1C, 0x2F9FCA;
   ushort animation : "Project64.exe", 0xD6A1C, 0x30943C;
   short starNumber : "Project64.exe", 0xD6A1C, 0x3094D8;
   byte mainMenu : "Project64.exe", 0xD6A1C, 0x1A6D53;
   uint music : "Project64.exe", 0xD6A1C, 0x223DD8;
   byte fileAkey : "Project64.exe", 0xD6A1C, 0x202F08;
   byte fileBkey : "Project64.exe", 0xD6A1C, 0x202F78;
   byte fileCkey : "Project64.exe", 0xD6A1C, 0x202FE8;
   byte fileDkey : "Project64.exe", 0xD6A1C, 0x203058;
}
 
init {
    // Version identifier
    if (settings["gameVerJP"]) {
		version = "Japanese";
	}
	else if (settings["gameVerShindou"]) {
		version = "Shindou";
	}
    else if (settings["gameVerUS"]) {
		version = "USA";
	}
    else if (settings["gameVerEU"]) {
		version = "Europe";
	}
    print(version);
    refreshRate = 30;
    
    // Variables
    vars.currentFile = 0;
    vars.currentStars = 0;
    vars.launchMapID = 1;
    vars.valueReset = 0;
    vars.courseReset = 0;
    vars.enterCastle = 0;
    vars.enterBitDW = 0;
    vars.enterBitFS = 0;
    vars.enterBitS = 0;
    vars.enterDDD = 0;
    // Define Presets
    if (settings["16"]) {
        if (settings["LBLJ"]) {
            vars.splitsArray = new int[] {4, 7, 11, 15, 16, 130, 130, 130, 130, 130, 130, 130, 130, 130, 130, 130, 130};
            }
        else if (settings["Reds"]) {
            vars.splitsArray = new int[] {1, 6, 8, 11, 12, 15, 16, 130, 130, 130, 130, 130, 130, 130, 130, 130, 130};
        }
        else if (settings["noReds"]) {
            vars.splitsArray = new int[] {1, 6, 8, 10, 11, 15, 16, 130, 130, 130, 130, 130, 130, 130, 130, 130, 130};
        }
    }    
    if (settings["70"]) {
        if (settings["earlyHMC"]) {
            vars.splitsArray = new int[] {1, 9, 13, 17, 19, 24, 30, 35, 38, 44, 47, 53, 58, 62, 70, 130, 130};
        }
        else if (settings["ccm18"]) {
            vars.splitsArray = new int[] {1, 9, 13, 18, 20, 24, 30, 33, 39, 42, 48, 52, 58, 62, 70, 130, 130};
        }
        else if (settings["ccm17"]) {
            vars.splitsArray = new int[] {1, 9, 13, 17, 19, 24, 30, 33, 39, 42, 48, 52, 58, 62, 70, 130, 130};
        }
    }
    if (settings["120"]) {
        if (settings["LBLJ120"]) {
            vars.splitsArray = new int[] {8, 16, 26, 34, 36, 42, 50, 59, 66, 68, 74, 81, 88, 96, 103, 111, 119};
        }

        else if (settings["noLBLJ120"]) {
            vars.splitsArray = new int[] {8, 16, 26, 34, 36, 42, 50, 59, 66, 68, 74, 81, 88, 96, 103, 111, 119};
        }
    }
    if (settings["1"]) {
        vars.splitsArray = new int[] {1, 130, 130, 130, 130, 130, 130, 130, 130, 130, 130, 130, 130, 130, 130, 130, 130};
    }
    if (settings["0"]) {
        vars.splitsArray = new int[] {130, 130, 130, 130, 130, 130, 130, 130, 130, 130, 130, 130, 130, 130, 130, 130, 130};
    }

    vars.split1 = vars.splitsArray[0];
    vars.split2 = vars.splitsArray[1];
    vars.split3 = vars.splitsArray[2];
    vars.split4 = vars.splitsArray[3];
    vars.split5 = vars.splitsArray[4];
    vars.split6 = vars.splitsArray[5];
    vars.split7 = vars.splitsArray[6];
    vars.split8 = vars.splitsArray[7];
    vars.split9 = vars.splitsArray[8];
    vars.split10 = vars.splitsArray[9];
    vars.split11 = vars.splitsArray[10];
    vars.split12 = vars.splitsArray[11];
    vars.split13 = vars.splitsArray[12];
    vars.split14 = vars.splitsArray[13];
    vars.split15 = vars.splitsArray[14];
    vars.split16 = vars.splitsArray[15];
    vars.split17 = vars.splitsArray[16];
    
    vars.nextSplit = 0;
    vars.prevSplit = 0;
}

startup {
    // Presets
    settings.Add("run", true, "Category Presets Per Stage (Only check one)");
    settings.Add("16", true, "16 Star","run");
    settings.Add("LBLJ", false, "LBLJ","16");
    settings.Add("noLBLJ", true, "No LBLJ","16");
    settings.Add("Reds",true,"BitDW reds (standard)","noLBLJ");
    settings.Add("noReds",false,"no BitDW reds (beginner)","noLBLJ");
    settings.Add("70", false, "70 Star","run");
    settings.Add("earlyHMC", false, "HMC Early","70");
    settings.Add("lateHMC", false, "HMC Late","70");
    settings.Add("ccm17",false,"CCM 17 (Advanced)","lateHMC");
    settings.Add("ccm18",false,"CCM 18 (Intermediate)","lateHMC");
    settings.Add("120", false, "120 Star","run");
    settings.Add("LBLJ120", false, "LBLJ","120");
    settings.Add("noLBLJ120", false, "No LBLJ","120");
    settings.Add("1", false, "1 Star","run");
    settings.Add("0", false, "0 Star","run");
    // Miscellaneous
    settings.Add("misc", true, "Misc. Splits");
    settings.Add("bowserSplits", true, "BitDW/BitFS","misc");
    settings.Add("enterCastleSplit", false, "Entering Castle", "misc");
    settings.Add("enterBitdwSplit", false, "Entering BitDW","misc");
    settings.Add("enterDDDSplit", true, "Entering DDD","misc");
    settings.Add("enterBitsSplit", true, "Entering BitS","misc");
    settings.Add("toadMipsSplit", false, "Toad/MIPS Stars", "misc");
    settings.Add("secretSplit", false, "Secret Stars - Toad/Mips", "misc");
    settings.Add("switchSplit", false, "Switch activation", "misc");
    settings.Add("misc120",false,"120 Exclusive","misc");
    settings.Add("vcSplit", false, "Vanish Cap", "misc120");
    settings.Add("cloudSplit", false, "Cloud Secret (Wing Mario Over the Rainbow)", "misc120");
    // Star Based
    settings.Add("starBased", false, "Star Count Based");
    settings.Add("starSplit", false, "Split on Star # at fadeout (Does not work on secret stars)","starBased");
    settings.Add("Star1",false,"1 Star","starSplit");
        for(int i=2; i<=120; i++){
            settings.Add("Star"+i.ToString(), false, i.ToString() + " Stars","starSplit");
        } 
    settings.Add("allStarSplit", false, "Split on Every Star (splits on grab not fadeout)","starBased");
    settings.Add("tenStarSplit", false, "Split on Every 10 Stars (splits on grab not fadeout)","starBased");
    // Game Version
    settings.Add("gameVersion", true, "Game Version (requires LiveSplit restart)");
    settings.Add("gameVerJP", true, "Japanese", "gameVersion");
    settings.Add("gameVerShindou", false, "Shindou", "gameVersion");
    settings.Add("gameVerUS", false, "USA", "gameVersion");
    settings.Add("gameVerEU", false, "Europe", "gameVersion");  
}

start {
    if (current.mapID == vars.launchMapID && current.gameRunTime == 0) {
        vars.valueReset = 1;
        return true;
    }
}

reset {
    if (current.mapID == vars.launchMapID && old.mapID != vars.launchMapID || (current.mapID == vars.launchMapID && old.mapID == vars.launchMapID && current.gameRunTime < old.gameRunTime)) {
        vars.valueReset = 1;
        return true;
    }
    // Resets all vars when the timer resets
    if (vars.valueReset == 1) {
        vars.valueReset = 0;
        vars.currentFile = 0;
        vars.courseReset = 1;
        vars.enterCastle = 0;
        vars.enterBitDW = 0;
        vars.enterBitFS = 0;
        vars.enterBitS = 0;
		vars.currentStars = 0;
    }
}

split {
	// Split on end star grab
    if (current.animation == 6409 && old.animation != 6409 && current.mapID == 34) {
        return true;
    }
    //Bowser stage splits
    if (settings["bowserSplits"]) {
        // BitDW
        if ((current.fileAkey==17 || current.fileBkey==17 || current.fileCkey==17 || current.fileDkey==17) && current.mapID == 6 && old.mapID == 30) {
            return true;   
        }
        //BitFS
        if ((current.fileAkey==49 || current.fileBkey==49 || current.fileCkey==49 || current.fileDkey==49) && current.mapID == 6 && old.mapID == 33) {
            return true;
        } 
    }
    // Entering stage
    if (settings["enterCastleSplit"] && vars.enterCastle == 0 && current.mapID == 6) {
        vars.enterCastle = 1;
        return true;
    }
    if (settings["enterBitdwSplit"] && vars.enterBitDW == 0 && current.mapID == 17) {
        vars.enterBitDW = 1;
        return true;
    }
    if (settings["enterDDDSplit"] && vars.enterDDD == 0 && current.mapID == 23) {
        vars.enterDDD = 1;
        return true;
    }
    if (settings["enterBitsSplit"] && vars.enterBitS == 0 && current.mapID == 21) {
        vars.enterBitS = 1;
        return true;
    }
    // Misc
    if (settings["switchSplit"] && ((current.fileSelected == 1 && current.fileAkey > old.fileAkey) || (current.fileSelected == 2 && current.fileBkey > old.fileBkey) || (current.fileSelected == 3 && current.fileCkey > old.fileCkey) || (current.fileSelected == 4 && current.fileDkey > old.fileDkey)) && (current.mapID == 18 || current.mapID == 28 || current.mapID == 29)) {
        return true;
    }
    if (settings["toadMipsSplit"] && !settings["allStarSplit"] && current.mapID == 6 && current.starNumber > old.starNumber) {
        return true;
    }
    if (settings["secretSplit"] && !settings["allStarSplit"] && current.mapID == 6 && old.mapID != 6 && current.animation == 4866 && (old.mapID == 18 || old.mapID == 20 || (old.mapID >= 27 && old.mapID <= 29) || old.mapID == 31)) {
        return true;
    }
    // 120 Specific
    if (settings["vcSplit"] && !settings["allStarSplit"] && current.mapID == 6 && old.mapID == 18 && current.animation == 4866) {
        return true;
    }
    if (settings["cloudSplit"] && !settings["allStarSplit"] && current.mapID == 6 && old.mapID == 31 && current.animation == 4866) {
        return true;
    }

    // Update star number on star Grab
    if (current.starNumber > old.starNumber) {
        vars.currentStars = current.starNumber;
	}
    // Split on Preset Star Numbers
    if (settings["run"] && current.mapID == 6 && old.mapID != 6 && current.animation == 4866 && (current.mapID != 18 || current.mapID != 20 || current.mapID != 27 || current.mapID != 28 || current.mapID != 29 || current.mapID != 31)) {
        if (current.starNumber == vars.split1 || current.starNumber == vars.split2 || current.starNumber == vars.split3 || current.starNumber == vars.split4 || current.starNumber == vars.split5 || current.starNumber == vars.split6 || current.starNumber == vars.split7 || current.starNumber == vars.split8 || current.starNumber == vars.split9 || current.starNumber == vars.split10 || current.starNumber == vars.split11 || current.starNumber == vars.split12 || current.starNumber == vars.split13 || current.starNumber == vars.split14 || current.starNumber == vars.split15 || current.starNumber == vars.split16 || current.starNumber == vars.split17) {
            return true;
		}
    }
    // Split on User Defined Star Number
    if (settings["starSplit"] && current.mapID == 6 && old.mapID != 6 && current.animation == 4866 && (current.mapID != 18 || current.mapID != 20 || current.mapID != 27 || current.mapID != 28 || current.mapID != 29 || current.mapID != 31)) {    
        for(int i=1; i<=120; i++){
            if (settings["Star"+i] && current.starNumber == i) {
                return true;
            }
        }
    }
    // Split on every Star
    if (settings["allStarSplit"] && !settings["run"] && current.mapID != vars.launchMapID && old.mapID != vars.launchMapID && current.starNumber > old.starNumber) {
        return true;
    }
    // Split every 10 Stars   
    if (settings["tenStarSplit"] && !settings["run"] && current.mapID != vars.launchMapID && old.mapID != vars.launchMapID && current.starNumber > old.starNumber) {
        if (vars.nextSplit == vars.prevSplit) {
            vars.nextSplit = vars.nextSplit + 10;
        }
        if (current.starNumber == vars.nextSplit) {
            vars.prevSplit = vars.nextSplit;
            vars.nextSplit = vars.nextSplit + 10;
            return true;
        }
    }
}
update {
    if (version == "") {
	return false;
    }
}
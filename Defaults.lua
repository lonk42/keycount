local colors = {
    red = { chat = "|cffff3333", rgb = { r = 255, g = 51, b = 51, a = 1 } },
    green = { chat = "|cff00ff00", rgb = { r = 0, g = 0, b = 0, a = 1 } },
    yellow = { chat = "|cffcccc00", rgb = { r = 204, g = 204, b = 0, a = 1 } },
    blue = { chat = "|cff0000ff", rgb = { r = 0, g = 0, b = 255, a = 1 } },
    magenta = { chat = "|cffff00ff", rgb = { r = 255, g = 0, b = 255, a = 1 } },
    cyan = { chat = "|cff00e5e5", rgb = { r = 0, g = 229, b = 229, a = 1 } },
    orange = { chat = "|cffffa700", rgb = { r = 255, g = 167, b = 0, a = 1 } },
    yellow2 = { chat = "|cfffff400", rgb = { r = 255, g = 244, b = 0, a = 1 } },
    lightgreen = { chat = "|cffa3ff00", rgb = { r = 163, g = 255, b = 0, a = 1 } },
    darkgreen = { chat = "|cff2cba00", rgb = { r = 44, g = 186, b = 0, a = 1 } },
    gold = { chat = "|cffffd700", rgb = { r = 255, g = 215, b = 0, a = 1 } },
    white = { chat = "|cffffffff", rgb = { r = 1, g = 1, b = 1, a = 1 } },
    reset = "|r"
}
local seasons = {
    Dragonflight = {
        "Dragonflight-1",
        "Dragonflight-2",
        "Dragonflight-3",
        "Dragonflight-4"
    },
    TheWarWithin = {
        "TheWarWithin-1",
        "TheWarWithin-2",
        "TheWarWithin-3"
    }
}
local keyresult = {
    unknown = { value = 0, name = "Unknown" },
    abandoned = { value = 1, name = "Abandoned" },
    outtime = { value = 2, name = "Failed to time" },
    intime = { value = 3, name = "Timed" },
}
local keydata = {
    name = "",
    level = 0,
    affixes = {},
    timelimit = 0,
}
local defaults = {
    dungeonNamesShort = {
        AV = "The Azure Vault",
        RLP = "Ruby Life Pools",
        HOV = "Halls of Valor",
        NO = "The Nokhud Offensive",
        SBG = "Shadowmoon Burial Grounds",
        COS = "Court of Stars",
        TJS = "Temple of the Jade Serpent",
        AA = "Algeth'ar Academy",
        BH = "Brackenhide Hollow",
        HOI = "Halls of Infusion",
        NEL = "Neltharus",
        ULD = "Uldaman: Legacy of Tyr",
        FH = "Freehold",
        NL = "Neltharion's Lair",
        UR = "The Underrot",
        VP = "The Vortex Pinnacle",
        AD = "Atal'Dazar",
        BRH = "Black Rook Hold",
        DHT = "Darkheart Thicket",
        EB = "Everbloom",
        TOTT = "Throne of the Tides",
        WM = "Waycrest Manor",
        FALL = "Dawn of the Infinite: Galakrond's Fall",
        RISE = "Dawn of the Infinite: Murozond's Rise",
        CM = "Cinderbrew Meadery",
        COT = "City of Threads",
        DFC = "Darkflame Cleft",
        ARAK = "Ara-Kara, City of Echoes",
        PSF = "Priory of the Sacred Flame",
        DAWN = "The Dawnbreaker",
        ROOK = "The Rookery",
        SV = "The Stonevault",
        NW = "The Necrotic Wake",
        MISTS = "Mists of Tirna Scythe",
        SIEGE = "Siege of Boralus",
        GB = "Grim Batol",
        WORK = "Mechagon Workshop",
        FLOOD = "Operation: Floodgate",
        ML = "The Motherlode!!",
        TOP = "Theater of Pain",
        DOME = "Eco-Dome Al'dani",
        HOA = "Halls of Atonement",
        STREETS = "Tazavesh: Streets of Wonder",
        GAMBIT = "Tazavesh: So'leah's Gambit"
    },
    partymember = {
        role = "",
        class = "",
        name = "",
        deaths = 0,
        healing = {
            total = 0,
            hps = 0
        },
        damage = {
            total = 0,
            dps = 0
        }
    },
    dungeonDefault = {
        uuid = "",
        version = 3,
        season = seasons.TheWarWithin[3],
        player = "",
        name = "",
        party = {},
        startedTimestamp = 0,
        completed = false,
        completedTimestamp = 0,
        timeToComplete = "",
        time = 0,
        deaths = {},
        totalDeaths = 0,
        keydata = keydata,
        keyresult = keyresult.unknown,
        date = { ["date"] = "1900-01-01", ["datestring"] = "", ["datetime"] = "1900-01-01 00:00:00" },
        stars = ""
    },
    playerDefault = {
        version = 2,
        player = "",
        totalEntries = 0,
        intime = 0,
        outtime = 0,
        abandoned = 0,
        maxdps = 0,
        maxhps = 0,
        role = "",
        class = "",
        dungeons = {},
        median = 0,
        best = 0
    },
    keyresult = keyresult,
    colors = {
        chatAnnounce = colors.cyan.chat,
        chatWarning = colors.yellow.chat,
        chatError = colors.red.chat,
        chatSuccess = colors.green.chat,
        rating = {
            colors.red,
            colors.orange,
            colors.yellow2,
            colors.lightgreen,
            colors.darkgreen,
        },
        gold = colors.gold,
        white = colors.white,
        reset = colors.reset,
    },
    dateFormat = "%Y-%m-%d",
    datetimeFormat = "%Y-%m-%d %H:%M:%S",
    gui = {
        view = "list",
        filter = "alldata"
    },
    filter = { key = "alldata", value = "" },
    dungeonPlusChar = "*",
    expansion = "TheWarWithin",
    seasons = seasons,
    maxlevel = 80,
    databaseCheckMessageFreq = 10,
    enablePreviousSeason = {enabled = false, season = "TheWarWithin-2"},
    soundOnNewGroupMember = true
}

KeyCount.defaults = defaults

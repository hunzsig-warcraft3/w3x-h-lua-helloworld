cj = require "jass.common"
cg = require "jass.globals"
JASS_MAX_ARRAY_SIZE = 8192
PLAYER_NEUTRAL_PASSIVE = 15
PLAYER_NEUTRAL_AGGRESSIVE = 12
PLAYER_COLOR_RED = cj.ConvertPlayerColor(0)
PLAYER_COLOR_BLUE = cj.ConvertPlayerColor(1)
PLAYER_COLOR_CYAN = cj.ConvertPlayerColor(2)
PLAYER_COLOR_PURPLE = cj.ConvertPlayerColor(3)
PLAYER_COLOR_YELLOW = cj.ConvertPlayerColor(4)
PLAYER_COLOR_ORANGE = cj.ConvertPlayerColor(5)
PLAYER_COLOR_GREEN = cj.ConvertPlayerColor(6)
PLAYER_COLOR_PINK = cj.ConvertPlayerColor(7)
PLAYER_COLOR_LIGHT_GRAY = cj.ConvertPlayerColor(8)
PLAYER_COLOR_LIGHT_BLUE = cj.ConvertPlayerColor(9)
PLAYER_COLOR_AQUA = cj.ConvertPlayerColor(10)
PLAYER_COLOR_BROWN = cj.ConvertPlayerColor(11)
RACE_HUMAN = cj.ConvertRace(1)
RACE_ORC = cj.ConvertRace(2)
RACE_UNDEAD = cj.ConvertRace(3)
RACE_NIGHTELF = cj.ConvertRace(4)
RACE_DEMON = cj.ConvertRace(5)
RACE_OTHER = cj.ConvertRace(7)
PLAYER_GAME_RESULT_VICTORY = cj.ConvertPlayerGameResult(0)
PLAYER_GAME_RESULT_DEFEAT = cj.ConvertPlayerGameResult(1)
PLAYER_GAME_RESULT_TIE = cj.ConvertPlayerGameResult(2)
PLAYER_GAME_RESULT_NEUTRAL = cj.ConvertPlayerGameResult(3)
ALLIANCE_PASSIVE = cj.ConvertAllianceType(0)
ALLIANCE_HELP_REQUEST = cj.ConvertAllianceType(1)
ALLIANCE_HELP_RESPONSE = cj.ConvertAllianceType(2)
ALLIANCE_SHARED_XP = cj.ConvertAllianceType(3)
ALLIANCE_SHARED_SPELLS = cj.ConvertAllianceType(4)
ALLIANCE_SHARED_VISION = cj.ConvertAllianceType(5)
ALLIANCE_SHARED_CONTROL = cj.ConvertAllianceType(6)
ALLIANCE_SHARED_ADVANCED_CONTROL = cj.ConvertAllianceType(7)
ALLIANCE_RESCUABLE = cj.ConvertAllianceType(8)
ALLIANCE_SHARED_VISION_FORCED = cj.ConvertAllianceType(9)
VERSION_REIGN_OF_CHAOS = cj.ConvertVersion(0)
VERSION_FROZEN_THRONE = cj.ConvertVersion(1)
ATTACK_TYPE_NORMAL = cj.ConvertAttackType(0)
ATTACK_TYPE_MELEE = cj.ConvertAttackType(1)
ATTACK_TYPE_PIERCE = cj.ConvertAttackType(2)
ATTACK_TYPE_SIEGE = cj.ConvertAttackType(3)
ATTACK_TYPE_MAGIC = cj.ConvertAttackType(4)
ATTACK_TYPE_CHAOS = cj.ConvertAttackType(5)
ATTACK_TYPE_HERO = cj.ConvertAttackType(6)
DAMAGE_TYPE_UNKNOWN = cj.ConvertDamageType(0)
DAMAGE_TYPE_NORMAL = cj.ConvertDamageType(4)
DAMAGE_TYPE_ENHANCED = cj.ConvertDamageType(5)
DAMAGE_TYPE_FIRE = cj.ConvertDamageType(8)
DAMAGE_TYPE_COLD = cj.ConvertDamageType(9)
DAMAGE_TYPE_LIGHTNING = cj.ConvertDamageType(10)
DAMAGE_TYPE_POISON = cj.ConvertDamageType(11)
DAMAGE_TYPE_DISEASE = cj.ConvertDamageType(12)
DAMAGE_TYPE_DIVINE = cj.ConvertDamageType(13)
DAMAGE_TYPE_MAGIC = cj.ConvertDamageType(14)
DAMAGE_TYPE_SONIC = cj.ConvertDamageType(15)
DAMAGE_TYPE_ACID = cj.ConvertDamageType(16)
DAMAGE_TYPE_FORCE = cj.ConvertDamageType(17)
DAMAGE_TYPE_DEATH = cj.ConvertDamageType(18)
DAMAGE_TYPE_MIND = cj.ConvertDamageType(19)
DAMAGE_TYPE_PLANT = cj.ConvertDamageType(20)
DAMAGE_TYPE_DEFENSIVE = cj.ConvertDamageType(21)
DAMAGE_TYPE_DEMOLITION = cj.ConvertDamageType(22)
DAMAGE_TYPE_SLOW_POISON = cj.ConvertDamageType(23)
DAMAGE_TYPE_SPIRIT_LINK = cj.ConvertDamageType(24)
DAMAGE_TYPE_SHADOW_STRIKE = cj.ConvertDamageType(25)
DAMAGE_TYPE_UNIVERSAL = cj.ConvertDamageType(26)
WEAPON_TYPE_WHOKNOWS = cj.ConvertWeaponType(0)
WEAPON_TYPE_METAL_LIGHT_CHOP = cj.ConvertWeaponType(1)
WEAPON_TYPE_METAL_MEDIUM_CHOP = cj.ConvertWeaponType(2)
WEAPON_TYPE_METAL_HEAVY_CHOP = cj.ConvertWeaponType(3)
WEAPON_TYPE_METAL_LIGHT_SLICE = cj.ConvertWeaponType(4)
WEAPON_TYPE_METAL_MEDIUM_SLICE = cj.ConvertWeaponType(5)
WEAPON_TYPE_METAL_HEAVY_SLICE = cj.ConvertWeaponType(6)
WEAPON_TYPE_METAL_MEDIUM_BASH = cj.ConvertWeaponType(7)
WEAPON_TYPE_METAL_HEAVY_BASH = cj.ConvertWeaponType(8)
WEAPON_TYPE_METAL_MEDIUM_STAB = cj.ConvertWeaponType(9)
WEAPON_TYPE_METAL_HEAVY_STAB = cj.ConvertWeaponType(10)
WEAPON_TYPE_WOOD_LIGHT_SLICE = cj.ConvertWeaponType(11)
WEAPON_TYPE_WOOD_MEDIUM_SLICE = cj.ConvertWeaponType(12)
WEAPON_TYPE_WOOD_HEAVY_SLICE = cj.ConvertWeaponType(13)
WEAPON_TYPE_WOOD_LIGHT_BASH = cj.ConvertWeaponType(14)
WEAPON_TYPE_WOOD_MEDIUM_BASH = cj.ConvertWeaponType(15)
WEAPON_TYPE_WOOD_HEAVY_BASH = cj.ConvertWeaponType(16)
WEAPON_TYPE_WOOD_LIGHT_STAB = cj.ConvertWeaponType(17)
WEAPON_TYPE_WOOD_MEDIUM_STAB = cj.ConvertWeaponType(18)
WEAPON_TYPE_CLAW_LIGHT_SLICE = cj.ConvertWeaponType(19)
WEAPON_TYPE_CLAW_MEDIUM_SLICE = cj.ConvertWeaponType(20)
WEAPON_TYPE_CLAW_HEAVY_SLICE = cj.ConvertWeaponType(21)
WEAPON_TYPE_AXE_MEDIUM_CHOP = cj.ConvertWeaponType(22)
WEAPON_TYPE_ROCK_HEAVY_BASH = cj.ConvertWeaponType(23)
PATHING_TYPE_ANY = cj.ConvertPathingType(0)
PATHING_TYPE_WALKABILITY = cj.ConvertPathingType(1)
PATHING_TYPE_FLYABILITY = cj.ConvertPathingType(2)
PATHING_TYPE_BUILDABILITY = cj.ConvertPathingType(3)
PATHING_TYPE_PEONHARVESTPATHING = cj.ConvertPathingType(4)
PATHING_TYPE_BLIGHTPATHING = cj.ConvertPathingType(5)
PATHING_TYPE_FLOATABILITY = cj.ConvertPathingType(6)
PATHING_TYPE_AMPHIBIOUSPATHING = cj.ConvertPathingType(7)
RACE_PREF_HUMAN = cj.ConvertRacePref(1)
RACE_PREF_ORC = cj.ConvertRacePref(2)
RACE_PREF_NIGHTELF = cj.ConvertRacePref(4)
RACE_PREF_UNDEAD = cj.ConvertRacePref(8)
RACE_PREF_DEMON = cj.ConvertRacePref(16)
RACE_PREF_RANDOM = cj.ConvertRacePref(32)
RACE_PREF_USER_SELECTABLE = cj.ConvertRacePref(64)
MAP_CONTROL_USER = cj.ConvertMapControl(0)
MAP_CONTROL_COMPUTER = cj.ConvertMapControl(1)
MAP_CONTROL_RESCUABLE = cj.ConvertMapControl(2)
MAP_CONTROL_NEUTRAL = cj.ConvertMapControl(3)
MAP_CONTROL_CREEP = cj.ConvertMapControl(4)
MAP_CONTROL_NONE = cj.ConvertMapControl(5)
GAME_TYPE_MELEE = cj.ConvertGameType(1)
GAME_TYPE_FFA = cj.ConvertGameType(2)
GAME_TYPE_USE_MAP_SETTINGS = cj.ConvertGameType(4)
GAME_TYPE_BLIZ = cj.ConvertGameType(8)
GAME_TYPE_ONE_ON_ONE = cj.ConvertGameType(16)
GAME_TYPE_TWO_TEAM_PLAY = cj.ConvertGameType(32)
GAME_TYPE_THREE_TEAM_PLAY = cj.ConvertGameType(64)
GAME_TYPE_FOUR_TEAM_PLAY = cj.ConvertGameType(128)
MAP_FOG_HIDE_TERRAIN = cj.ConvertMapFlag(1)
MAP_FOG_MAP_EXPLORED = cj.ConvertMapFlag(2)
MAP_FOG_ALWAYS_VISIBLE = cj.ConvertMapFlag(4)
MAP_USE_HANDICAPS = cj.ConvertMapFlag(8)
MAP_OBSERVERS = cj.ConvertMapFlag(16)
MAP_OBSERVERS_ON_DEATH = cj.ConvertMapFlag(32)
MAP_FIXED_COLORS = cj.ConvertMapFlag(128)
MAP_LOCK_RESOURCE_TRADING = cj.ConvertMapFlag(256)
MAP_RESOURCE_TRADING_ALLIES_ONLY = cj.ConvertMapFlag(512)
MAP_LOCK_ALLIANCE_CHANGES = cj.ConvertMapFlag(1024)
MAP_ALLIANCE_CHANGES_HIDDEN = cj.ConvertMapFlag(2048)
MAP_CHEATS = cj.ConvertMapFlag(4096)
MAP_CHEATS_HIDDEN = cj.ConvertMapFlag(8192)
MAP_LOCK_SPEED = cj.ConvertMapFlag(8192 * 2)
MAP_LOCK_RANDOM_SEED = cj.ConvertMapFlag(8192 * 4)
MAP_SHARED_ADVANCED_CONTROL = cj.ConvertMapFlag(8192 * 8)
MAP_RANDOM_HERO = cj.ConvertMapFlag(8192 * 16)
MAP_RANDOM_RACES = cj.ConvertMapFlag(8192 * 32)
MAP_RELOADED = cj.ConvertMapFlag(8192 * 64)
MAP_PLACEMENT_RANDOM = cj.ConvertPlacement(0)
MAP_PLACEMENT_FIXED = cj.ConvertPlacement(1)
MAP_PLACEMENT_USE_MAP_SETTINGS = cj.ConvertPlacement(2)
MAP_PLACEMENT_TEAMS_TOGETHER = cj.ConvertPlacement(3)
MAP_LOC_PRIO_LOW = cj.ConvertStartLocPrio(0)
MAP_LOC_PRIO_HIGH = cj.ConvertStartLocPrio(1)
MAP_LOC_PRIO_NOT = cj.ConvertStartLocPrio(2)
MAP_DENSITY_NONE = cj.ConvertMapDensity(0)
MAP_DENSITY_LIGHT = cj.ConvertMapDensity(1)
MAP_DENSITY_MEDIUM = cj.ConvertMapDensity(2)
MAP_DENSITY_HEAVY = cj.ConvertMapDensity(3)
MAP_DIFFICULTY_EASY = cj.ConvertGameDifficulty(0)
MAP_DIFFICULTY_NORMAL = cj.ConvertGameDifficulty(1)
MAP_DIFFICULTY_HARD = cj.ConvertGameDifficulty(2)
MAP_DIFFICULTY_INSANE = cj.ConvertGameDifficulty(3)
MAP_SPEED_SLOWEST = cj.ConvertGameSpeed(0)
MAP_SPEED_SLOW = cj.ConvertGameSpeed(1)
MAP_SPEED_NORMAL = cj.ConvertGameSpeed(2)
MAP_SPEED_FAST = cj.ConvertGameSpeed(3)
MAP_SPEED_FASTEST = cj.ConvertGameSpeed(4)
PLAYER_SLOT_STATE_EMPTY = cj.ConvertPlayerSlotState(0)
PLAYER_SLOT_STATE_PLAYING = cj.ConvertPlayerSlotState(1)
PLAYER_SLOT_STATE_LEFT = cj.ConvertPlayerSlotState(2)
SOUND_VOLUMEGROUP_UNITMOVEMENT = cj.ConvertVolumeGroup(0)
SOUND_VOLUMEGROUP_UNITSOUNDS = cj.ConvertVolumeGroup(1)
SOUND_VOLUMEGROUP_COMBAT = cj.ConvertVolumeGroup(2)
SOUND_VOLUMEGROUP_SPELLS = cj.ConvertVolumeGroup(3)
SOUND_VOLUMEGROUP_UI = cj.ConvertVolumeGroup(4)
SOUND_VOLUMEGROUP_MUSIC = cj.ConvertVolumeGroup(5)
SOUND_VOLUMEGROUP_AMBIENTSOUNDS = cj.ConvertVolumeGroup(6)
SOUND_VOLUMEGROUP_FIRE = cj.ConvertVolumeGroup(7)
GAME_STATE_DIVINE_INTERVENTION = cj.ConvertIGameState(0)
GAME_STATE_DISCONNECTED = cj.ConvertIGameState(1)
GAME_STATE_TIME_OF_DAY = cj.ConvertFGameState(2)
PLAYER_STATE_GAME_RESULT = cj.ConvertPlayerState(0)
PLAYER_STATE_RESOURCE_GOLD = cj.ConvertPlayerState(1)
PLAYER_STATE_RESOURCE_LUMBER = cj.ConvertPlayerState(2)
PLAYER_STATE_RESOURCE_HERO_TOKENS = cj.ConvertPlayerState(3)
PLAYER_STATE_RESOURCE_FOOD_CAP = cj.ConvertPlayerState(4)
PLAYER_STATE_RESOURCE_FOOD_USED = cj.ConvertPlayerState(5)
PLAYER_STATE_FOOD_CAP_CEILING = cj.ConvertPlayerState(6)
PLAYER_STATE_GIVES_BOUNTY = cj.ConvertPlayerState(7)
PLAYER_STATE_ALLIED_VICTORY = cj.ConvertPlayerState(8)
PLAYER_STATE_PLACED = cj.ConvertPlayerState(9)
PLAYER_STATE_OBSERVER_ON_DEATH = cj.ConvertPlayerState(10)
PLAYER_STATE_OBSERVER = cj.ConvertPlayerState(11)
PLAYER_STATE_UNFOLLOWABLE = cj.ConvertPlayerState(12)
PLAYER_STATE_GOLD_UPKEEP_RATE = cj.ConvertPlayerState(13)
PLAYER_STATE_LUMBER_UPKEEP_RATE = cj.ConvertPlayerState(14)
PLAYER_STATE_GOLD_GATHERED = cj.ConvertPlayerState(15)
PLAYER_STATE_LUMBER_GATHERED = cj.ConvertPlayerState(16)
PLAYER_STATE_NO_CREEP_SLEEP = cj.ConvertPlayerState(25)
UNIT_STATE_LIFE = cj.ConvertUnitState(0)
UNIT_STATE_MAX_LIFE = cj.ConvertUnitState(1)
UNIT_STATE_MANA = cj.ConvertUnitState(2)
UNIT_STATE_MAX_MANA = cj.ConvertUnitState(3)
AI_DIFFICULTY_NEWBIE = cj.ConvertAIDifficulty(0)
AI_DIFFICULTY_NORMAL = cj.ConvertAIDifficulty(1)
AI_DIFFICULTY_INSANE = cj.ConvertAIDifficulty(2)
PLAYER_SCORE_UNITS_TRAINED = cj.ConvertPlayerScore(0)
PLAYER_SCORE_UNITS_KILLED = cj.ConvertPlayerScore(1)
PLAYER_SCORE_STRUCT_BUILT = cj.ConvertPlayerScore(2)
PLAYER_SCORE_STRUCT_RAZED = cj.ConvertPlayerScore(3)
PLAYER_SCORE_TECH_PERCENT = cj.ConvertPlayerScore(4)
PLAYER_SCORE_FOOD_MAXPROD = cj.ConvertPlayerScore(5)
PLAYER_SCORE_FOOD_MAXUSED = cj.ConvertPlayerScore(6)
PLAYER_SCORE_HEROES_KILLED = cj.ConvertPlayerScore(7)
PLAYER_SCORE_ITEMS_GAINED = cj.ConvertPlayerScore(8)
PLAYER_SCORE_MERCS_HIRED = cj.ConvertPlayerScore(9)
PLAYER_SCORE_GOLD_MINED_TOTAL = cj.ConvertPlayerScore(10)
PLAYER_SCORE_GOLD_MINED_UPKEEP = cj.ConvertPlayerScore(11)
PLAYER_SCORE_GOLD_LOST_UPKEEP = cj.ConvertPlayerScore(12)
PLAYER_SCORE_GOLD_LOST_TAX = cj.ConvertPlayerScore(13)
PLAYER_SCORE_GOLD_GIVEN = cj.ConvertPlayerScore(14)
PLAYER_SCORE_GOLD_RECEIVED = cj.ConvertPlayerScore(15)
PLAYER_SCORE_LUMBER_TOTAL = cj.ConvertPlayerScore(16)
PLAYER_SCORE_LUMBER_LOST_UPKEEP = cj.ConvertPlayerScore(17)
PLAYER_SCORE_LUMBER_LOST_TAX = cj.ConvertPlayerScore(18)
PLAYER_SCORE_LUMBER_GIVEN = cj.ConvertPlayerScore(19)
PLAYER_SCORE_LUMBER_RECEIVED = cj.ConvertPlayerScore(20)
PLAYER_SCORE_UNIT_TOTAL = cj.ConvertPlayerScore(21)
PLAYER_SCORE_HERO_TOTAL = cj.ConvertPlayerScore(22)
PLAYER_SCORE_RESOURCE_TOTAL = cj.ConvertPlayerScore(23)
PLAYER_SCORE_TOTAL = cj.ConvertPlayerScore(24)
EVENT_GAME_VICTORY = cj.ConvertGameEvent(0)
EVENT_GAME_END_LEVEL = cj.ConvertGameEvent(1)
EVENT_GAME_VARIABLE_LIMIT = cj.ConvertGameEvent(2)
EVENT_GAME_STATE_LIMIT = cj.ConvertGameEvent(3)
EVENT_GAME_TIMER_EXPIRED = cj.ConvertGameEvent(4)
EVENT_GAME_ENTER_REGION = cj.ConvertGameEvent(5)
EVENT_GAME_LEAVE_REGION = cj.ConvertGameEvent(6)
EVENT_GAME_TRACKABLE_HIT = cj.ConvertGameEvent(7)
EVENT_GAME_TRACKABLE_TRACK = cj.ConvertGameEvent(8)
EVENT_GAME_SHOW_SKILL = cj.ConvertGameEvent(9)
EVENT_GAME_BUILD_SUBMENU = cj.ConvertGameEvent(10)
EVENT_PLAYER_STATE_LIMIT = cj.ConvertPlayerEvent(11)
EVENT_PLAYER_ALLIANCE_CHANGED = cj.ConvertPlayerEvent(12)
EVENT_PLAYER_DEFEAT = cj.ConvertPlayerEvent(13)
EVENT_PLAYER_VICTORY = cj.ConvertPlayerEvent(14)
EVENT_PLAYER_LEAVE = cj.ConvertPlayerEvent(15)
EVENT_PLAYER_CHAT = cj.ConvertPlayerEvent(16)
EVENT_PLAYER_END_CINEMATIC = cj.ConvertPlayerEvent(17)
EVENT_PLAYER_UNIT_ATTACKED = cj.ConvertPlayerUnitEvent(18)
EVENT_PLAYER_UNIT_RESCUED = cj.ConvertPlayerUnitEvent(19)
EVENT_PLAYER_UNIT_DEATH = cj.ConvertPlayerUnitEvent(20)
EVENT_PLAYER_UNIT_DECAY = cj.ConvertPlayerUnitEvent(21)
EVENT_PLAYER_UNIT_DETECTED = cj.ConvertPlayerUnitEvent(22)
EVENT_PLAYER_UNIT_HIDDEN = cj.ConvertPlayerUnitEvent(23)
EVENT_PLAYER_UNIT_SELECTED = cj.ConvertPlayerUnitEvent(24)
EVENT_PLAYER_UNIT_DESELECTED = cj.ConvertPlayerUnitEvent(25)
EVENT_PLAYER_UNIT_CONSTRUCT_START = cj.ConvertPlayerUnitEvent(26)
EVENT_PLAYER_UNIT_CONSTRUCT_CANCEL = cj.ConvertPlayerUnitEvent(27)
EVENT_PLAYER_UNIT_CONSTRUCT_FINISH = cj.ConvertPlayerUnitEvent(28)
EVENT_PLAYER_UNIT_UPGRADE_START = cj.ConvertPlayerUnitEvent(29)
EVENT_PLAYER_UNIT_UPGRADE_CANCEL = cj.ConvertPlayerUnitEvent(30)
EVENT_PLAYER_UNIT_UPGRADE_FINISH = cj.ConvertPlayerUnitEvent(31)
EVENT_PLAYER_UNIT_TRAIN_START = cj.ConvertPlayerUnitEvent(32)
EVENT_PLAYER_UNIT_TRAIN_CANCEL = cj.ConvertPlayerUnitEvent(33)
EVENT_PLAYER_UNIT_TRAIN_FINISH = cj.ConvertPlayerUnitEvent(34)
EVENT_PLAYER_UNIT_RESEARCH_START = cj.ConvertPlayerUnitEvent(35)
EVENT_PLAYER_UNIT_RESEARCH_CANCEL = cj.ConvertPlayerUnitEvent(36)
EVENT_PLAYER_UNIT_RESEARCH_FINISH = cj.ConvertPlayerUnitEvent(37)
EVENT_PLAYER_UNIT_ISSUED_ORDER = cj.ConvertPlayerUnitEvent(38)
EVENT_PLAYER_UNIT_ISSUED_POINT_ORDER = cj.ConvertPlayerUnitEvent(39)
EVENT_PLAYER_UNIT_ISSUED_TARGET_ORDER = cj.ConvertPlayerUnitEvent(40)
EVENT_PLAYER_UNIT_ISSUED_UNIT_ORDER = cj.ConvertPlayerUnitEvent(40)
EVENT_PLAYER_HERO_LEVEL = cj.ConvertPlayerUnitEvent(41)
EVENT_PLAYER_HERO_SKILL = cj.ConvertPlayerUnitEvent(42)
EVENT_PLAYER_HERO_REVIVABLE = cj.ConvertPlayerUnitEvent(43)
EVENT_PLAYER_HERO_REVIVE_START = cj.ConvertPlayerUnitEvent(44)
EVENT_PLAYER_HERO_REVIVE_CANCEL = cj.ConvertPlayerUnitEvent(45)
EVENT_PLAYER_HERO_REVIVE_FINISH = cj.ConvertPlayerUnitEvent(46)
EVENT_PLAYER_UNIT_SUMMON = cj.ConvertPlayerUnitEvent(47)
EVENT_PLAYER_UNIT_DROP_ITEM = cj.ConvertPlayerUnitEvent(48)
EVENT_PLAYER_UNIT_PICKUP_ITEM = cj.ConvertPlayerUnitEvent(49)
EVENT_PLAYER_UNIT_USE_ITEM = cj.ConvertPlayerUnitEvent(50)
EVENT_PLAYER_UNIT_LOADED = cj.ConvertPlayerUnitEvent(51)
EVENT_UNIT_DAMAGED = cj.ConvertUnitEvent(52)
EVENT_UNIT_DEATH = cj.ConvertUnitEvent(53)
EVENT_UNIT_DECAY = cj.ConvertUnitEvent(54)
EVENT_UNIT_DETECTED = cj.ConvertUnitEvent(55)
EVENT_UNIT_HIDDEN = cj.ConvertUnitEvent(56)
EVENT_UNIT_SELECTED = cj.ConvertUnitEvent(57)
EVENT_UNIT_DESELECTED = cj.ConvertUnitEvent(58)
EVENT_UNIT_STATE_LIMIT = cj.ConvertUnitEvent(59)
EVENT_UNIT_ACQUIRED_TARGET = cj.ConvertUnitEvent(60)
EVENT_UNIT_TARGET_IN_RANGE = cj.ConvertUnitEvent(61)
EVENT_UNIT_ATTACKED = cj.ConvertUnitEvent(62)
EVENT_UNIT_RESCUED = cj.ConvertUnitEvent(63)
EVENT_UNIT_CONSTRUCT_CANCEL = cj.ConvertUnitEvent(64)
EVENT_UNIT_CONSTRUCT_FINISH = cj.ConvertUnitEvent(65)
EVENT_UNIT_UPGRADE_START = cj.ConvertUnitEvent(66)
EVENT_UNIT_UPGRADE_CANCEL = cj.ConvertUnitEvent(67)
EVENT_UNIT_UPGRADE_FINISH = cj.ConvertUnitEvent(68)
EVENT_UNIT_TRAIN_START = cj.ConvertUnitEvent(69)
EVENT_UNIT_TRAIN_CANCEL = cj.ConvertUnitEvent(70)
EVENT_UNIT_TRAIN_FINISH = cj.ConvertUnitEvent(71)
EVENT_UNIT_RESEARCH_START = cj.ConvertUnitEvent(72)
EVENT_UNIT_RESEARCH_CANCEL = cj.ConvertUnitEvent(73)
EVENT_UNIT_RESEARCH_FINISH = cj.ConvertUnitEvent(74)
EVENT_UNIT_ISSUED_ORDER = cj.ConvertUnitEvent(75)
EVENT_UNIT_ISSUED_POINT_ORDER = cj.ConvertUnitEvent(76)
EVENT_UNIT_ISSUED_TARGET_ORDER = cj.ConvertUnitEvent(77)
EVENT_UNIT_HERO_LEVEL = cj.ConvertUnitEvent(78)
EVENT_UNIT_HERO_SKILL = cj.ConvertUnitEvent(79)
EVENT_UNIT_HERO_REVIVABLE = cj.ConvertUnitEvent(80)
EVENT_UNIT_HERO_REVIVE_START = cj.ConvertUnitEvent(81)
EVENT_UNIT_HERO_REVIVE_CANCEL = cj.ConvertUnitEvent(82)
EVENT_UNIT_HERO_REVIVE_FINISH = cj.ConvertUnitEvent(83)
EVENT_UNIT_SUMMON = cj.ConvertUnitEvent(84)
EVENT_UNIT_DROP_ITEM = cj.ConvertUnitEvent(85)
EVENT_UNIT_PICKUP_ITEM = cj.ConvertUnitEvent(86)
EVENT_UNIT_USE_ITEM = cj.ConvertUnitEvent(87)
EVENT_UNIT_LOADED = cj.ConvertUnitEvent(88)
EVENT_WIDGET_DEATH = cj.ConvertWidgetEvent(89)
EVENT_DIALOG_BUTTON_CLICK = cj.ConvertDialogEvent(90)
EVENT_DIALOG_CLICK = cj.ConvertDialogEvent(91)
EVENT_GAME_LOADED = cj.ConvertGameEvent(256)
EVENT_GAME_TOURNAMENT_FINISH_SOON = cj.ConvertGameEvent(257)
EVENT_GAME_TOURNAMENT_FINISH_NOW = cj.ConvertGameEvent(258)
EVENT_GAME_SAVE = cj.ConvertGameEvent(259)
EVENT_PLAYER_ARROW_LEFT_DOWN = cj.ConvertPlayerEvent(261)
EVENT_PLAYER_ARROW_LEFT_UP = cj.ConvertPlayerEvent(262)
EVENT_PLAYER_ARROW_RIGHT_DOWN = cj.ConvertPlayerEvent(263)
EVENT_PLAYER_ARROW_RIGHT_UP = cj.ConvertPlayerEvent(264)
EVENT_PLAYER_ARROW_DOWN_DOWN = cj.ConvertPlayerEvent(265)
EVENT_PLAYER_ARROW_DOWN_UP = cj.ConvertPlayerEvent(266)
EVENT_PLAYER_ARROW_UP_DOWN = cj.ConvertPlayerEvent(267)
EVENT_PLAYER_ARROW_UP_UP = cj.ConvertPlayerEvent(268)
EVENT_PLAYER_UNIT_SELL = cj.ConvertPlayerUnitEvent(269)
EVENT_PLAYER_UNIT_CHANGE_OWNER = cj.ConvertPlayerUnitEvent(270)
EVENT_PLAYER_UNIT_SELL_ITEM = cj.ConvertPlayerUnitEvent(271)
EVENT_PLAYER_UNIT_SPELL_CHANNEL = cj.ConvertPlayerUnitEvent(272)
EVENT_PLAYER_UNIT_SPELL_CAST = cj.ConvertPlayerUnitEvent(273)
EVENT_PLAYER_UNIT_SPELL_EFFECT = cj.ConvertPlayerUnitEvent(274)
EVENT_PLAYER_UNIT_SPELL_FINISH = cj.ConvertPlayerUnitEvent(275)
EVENT_PLAYER_UNIT_SPELL_ENDCAST = cj.ConvertPlayerUnitEvent(276)
EVENT_PLAYER_UNIT_PAWN_ITEM = cj.ConvertPlayerUnitEvent(277)
EVENT_UNIT_SELL = cj.ConvertUnitEvent(286)
EVENT_UNIT_CHANGE_OWNER = cj.ConvertUnitEvent(287)
EVENT_UNIT_SELL_ITEM = cj.ConvertUnitEvent(288)
EVENT_UNIT_SPELL_CHANNEL = cj.ConvertUnitEvent(289)
EVENT_UNIT_SPELL_CAST = cj.ConvertUnitEvent(290)
EVENT_UNIT_SPELL_EFFECT = cj.ConvertUnitEvent(291)
EVENT_UNIT_SPELL_FINISH = cj.ConvertUnitEvent(292)
EVENT_UNIT_SPELL_ENDCAST = cj.ConvertUnitEvent(293)
EVENT_UNIT_PAWN_ITEM = cj.ConvertUnitEvent(294)
LESS_THAN = cj.ConvertLimitOp(0)
LESS_THAN_OR_EQUAL = cj.ConvertLimitOp(1)
EQUAL = cj.ConvertLimitOp(2)
GREATER_THAN_OR_EQUAL = cj.ConvertLimitOp(3)
GREATER_THAN = cj.ConvertLimitOp(4)
NOT_EQUAL = cj.ConvertLimitOp(5)
UNIT_TYPE_HERO = cj.ConvertUnitType(0)
UNIT_TYPE_DEAD = cj.ConvertUnitType(1)
UNIT_TYPE_STRUCTURE = cj.ConvertUnitType(2)
UNIT_TYPE_FLYING = cj.ConvertUnitType(3)
UNIT_TYPE_GROUND = cj.ConvertUnitType(4)
UNIT_TYPE_ATTACKS_FLYING = cj.ConvertUnitType(5)
UNIT_TYPE_ATTACKS_GROUND = cj.ConvertUnitType(6)
UNIT_TYPE_MELEE_ATTACKER = cj.ConvertUnitType(7)
UNIT_TYPE_RANGED_ATTACKER = cj.ConvertUnitType(8)
UNIT_TYPE_GIANT = cj.ConvertUnitType(9)
UNIT_TYPE_SUMMONED = cj.ConvertUnitType(10)
UNIT_TYPE_STUNNED = cj.ConvertUnitType(11)
UNIT_TYPE_PLAGUED = cj.ConvertUnitType(12)
UNIT_TYPE_SNARED = cj.ConvertUnitType(13)
UNIT_TYPE_UNDEAD = cj.ConvertUnitType(14)
UNIT_TYPE_MECHANICAL = cj.ConvertUnitType(15)
UNIT_TYPE_PEON = cj.ConvertUnitType(16)
UNIT_TYPE_SAPPER = cj.ConvertUnitType(17)
UNIT_TYPE_TOWNHALL = cj.ConvertUnitType(18)
UNIT_TYPE_ANCIENT = cj.ConvertUnitType(19)
UNIT_TYPE_TAUREN = cj.ConvertUnitType(20)
UNIT_TYPE_POISONED = cj.ConvertUnitType(21)
UNIT_TYPE_POLYMORPHED = cj.ConvertUnitType(22)
UNIT_TYPE_SLEEPING = cj.ConvertUnitType(23)
UNIT_TYPE_RESISTANT = cj.ConvertUnitType(24)
UNIT_TYPE_ETHEREAL = cj.ConvertUnitType(25)
UNIT_TYPE_MAGIC_IMMUNE = cj.ConvertUnitType(26)
ITEM_TYPE_PERMANENT = cj.ConvertItemType(0)
ITEM_TYPE_CHARGED = cj.ConvertItemType(1)
ITEM_TYPE_POWERUP = cj.ConvertItemType(2)
ITEM_TYPE_ARTIFACT = cj.ConvertItemType(3)
ITEM_TYPE_PURCHASABLE = cj.ConvertItemType(4)
ITEM_TYPE_CAMPAIGN = cj.ConvertItemType(5)
ITEM_TYPE_MISCELLANEOUS = cj.ConvertItemType(6)
ITEM_TYPE_UNKNOWN = cj.ConvertItemType(7)
ITEM_TYPE_ANY = cj.ConvertItemType(8)
ITEM_TYPE_TOME = cj.ConvertItemType(2)
CAMERA_FIELD_TARGET_DISTANCE = cj.ConvertCameraField(0)
CAMERA_FIELD_FARZ = cj.ConvertCameraField(1)
CAMERA_FIELD_ANGLE_OF_ATTACK = cj.ConvertCameraField(2)
CAMERA_FIELD_FIELD_OF_VIEW = cj.ConvertCameraField(3)
CAMERA_FIELD_ROLL = cj.ConvertCameraField(4)
CAMERA_FIELD_ROTATION = cj.ConvertCameraField(5)
CAMERA_FIELD_ZOFFSET = cj.ConvertCameraField(6)
BLEND_MODE_NONE = cj.ConvertBlendMode(0)
BLEND_MODE_DONT_CARE = cj.ConvertBlendMode(0)
BLEND_MODE_KEYALPHA = cj.ConvertBlendMode(1)
BLEND_MODE_BLEND = cj.ConvertBlendMode(2)
BLEND_MODE_ADDITIVE = cj.ConvertBlendMode(3)
BLEND_MODE_MODULATE = cj.ConvertBlendMode(4)
BLEND_MODE_MODULATE_2X = cj.ConvertBlendMode(5)
RARITY_FREQUENT = cj.ConvertRarityControl(0)
RARITY_RARE = cj.ConvertRarityControl(1)
TEXMAP_FLAG_NONE = cj.ConvertTexMapFlags(0)
TEXMAP_FLAG_WRAP_U = cj.ConvertTexMapFlags(1)
TEXMAP_FLAG_WRAP_V = cj.ConvertTexMapFlags(2)
TEXMAP_FLAG_WRAP_UV = cj.ConvertTexMapFlags(3)
FOG_OF_WAR_MASKED = cj.ConvertFogState(1)
FOG_OF_WAR_FOGGED = cj.ConvertFogState(2)
FOG_OF_WAR_VISIBLE = cj.ConvertFogState(4)
CAMERA_MARGIN_LEFT = 0
CAMERA_MARGIN_RIGHT = 1
CAMERA_MARGIN_TOP = 2
CAMERA_MARGIN_BOTTOM = 3
EFFECT_TYPE_EFFECT = cj.ConvertEffectType(0)
EFFECT_TYPE_TARGET = cj.ConvertEffectType(1)
EFFECT_TYPE_CASTER = cj.ConvertEffectType(2)
EFFECT_TYPE_SPECIAL = cj.ConvertEffectType(3)
EFFECT_TYPE_AREA_EFFECT = cj.ConvertEffectType(4)
EFFECT_TYPE_MISSILE = cj.ConvertEffectType(5)
EFFECT_TYPE_LIGHTNING = cj.ConvertEffectType(6)
SOUND_TYPE_EFFECT = cj.ConvertSoundType(0)
SOUND_TYPE_EFFECT_LOOPED = cj.ConvertSoundType(1)
bj_PI = 3.14159265358979323846
bj_E = 2.71828182845904523536
bj_CELLWIDTH = 128.0
bj_CLIFFHEIGHT = 128.0
bj_UNIT_FACING = 270.0
bj_RADTODEG = 180.0 / bj_PI
bj_DEGTORAD = bj_PI / 180.0
bj_TEXT_DELAY_QUEST = 20.00
bj_TEXT_DELAY_QUESTUPDATE = 20.00
bj_TEXT_DELAY_QUESTDONE = 20.00
bj_TEXT_DELAY_QUESTFAILED = 20.00
bj_TEXT_DELAY_QUESTREQUIREMENT = 20.00
bj_TEXT_DELAY_MISSIONFAILED = 20.00
bj_TEXT_DELAY_ALWAYSHINT = 12.00
bj_TEXT_DELAY_HINT = 12.00
bj_TEXT_DELAY_SECRET = 10.00
bj_TEXT_DELAY_UNITACQUIRED = 15.00
bj_TEXT_DELAY_UNITAVAILABLE = 10.00
bj_TEXT_DELAY_ITEMACQUIRED = 10.00
bj_TEXT_DELAY_WARNING = 12.00
bj_QUEUE_DELAY_QUEST = 5.00
bj_QUEUE_DELAY_HINT = 5.00
bj_QUEUE_DELAY_SECRET = 3.00
bj_HANDICAP_EASY = 60.00
bj_GAME_STARTED_THRESHOLD = 0.01
bj_WAIT_FOR_COND_MIN_INTERVAL = 0.10
bj_POLLED_WAIT_INTERVAL = 0.10
bj_POLLED_WAIT_SKIP_THRESHOLD = 2.00
bj_MAX_INVENTORY = 6
bj_MAX_PLAYERS = 12
bj_PLAYER_NEUTRAL_VICTIM = 13
bj_PLAYER_NEUTRAL_EXTRA = 14
bj_MAX_PLAYER_SLOTS = 16
bj_MAX_SKELETONS = 25
bj_MAX_STOCK_ITEM_SLOTS = 11
bj_MAX_STOCK_UNIT_SLOTS = 11
bj_MAX_ITEM_LEVEL = 10
bj_TOD_DAWN = 6.00
bj_TOD_DUSK = 18.00
bj_MELEE_STARTING_TOD = 8.00
bj_MELEE_STARTING_GOLD_V0 = 750
bj_MELEE_STARTING_GOLD_V1 = 500
bj_MELEE_STARTING_LUMBER_V0 = 200
bj_MELEE_STARTING_LUMBER_V1 = 150
bj_MELEE_STARTING_HERO_TOKENS = 1
bj_MELEE_HERO_LIMIT = 3
bj_MELEE_HERO_TYPE_LIMIT = 1
bj_MELEE_MINE_SEARCH_RADIUS = 2000
bj_MELEE_CLEAR_UNITS_RADIUS = 1500
bj_MELEE_CRIPPLE_TIMEOUT = 120.00
bj_MELEE_CRIPPLE_MSG_DURATION = 20.00
bj_MELEE_MAX_TWINKED_HEROES_V0 = 3
bj_MELEE_MAX_TWINKED_HEROES_V1 = 1
bj_CREEP_ITEM_DELAY = 0.50
bj_STOCK_RESTOCK_INITIAL_DELAY = 120
bj_STOCK_RESTOCK_INTERVAL = 30
bj_STOCK_MAX_ITERATIONS = 20
bj_MAX_DEST_IN_REGION_EVENTS = 64
bj_CAMERA_MIN_FARZ = 100
bj_CAMERA_DEFAULT_DISTANCE = 1650
bj_CAMERA_DEFAULT_FARZ = 5000
bj_CAMERA_DEFAULT_AOA = 304
bj_CAMERA_DEFAULT_FOV = 70
bj_CAMERA_DEFAULT_ROLL = 0
bj_CAMERA_DEFAULT_ROTATION = 90
bj_RESCUE_PING_TIME = 2.00
bj_NOTHING_SOUND_DURATION = 5.00
bj_TRANSMISSION_PING_TIME = 1.00
bj_TRANSMISSION_IND_RED = 255
bj_TRANSMISSION_IND_BLUE = 255
bj_TRANSMISSION_IND_GREEN = 255
bj_TRANSMISSION_IND_ALPHA = 255
bj_TRANSMISSION_PORT_HANGTIME = 1.50
bj_CINEMODE_INTERFACEFADE = 0.50
bj_CINEMODE_GAMESPEED = MAP_SPEED_NORMAL
bj_CINEMODE_VOLUME_UNITMOVEMENT = 0.40
bj_CINEMODE_VOLUME_UNITSOUNDS = 0.00
bj_CINEMODE_VOLUME_COMBAT = 0.40
bj_CINEMODE_VOLUME_SPELLS = 0.40
bj_CINEMODE_VOLUME_UI = 0.00
bj_CINEMODE_VOLUME_MUSIC = 0.55
bj_CINEMODE_VOLUME_AMBIENTSOUNDS = 1.00
bj_CINEMODE_VOLUME_FIRE = 0.60
bj_SPEECH_VOLUME_UNITMOVEMENT = 0.25
bj_SPEECH_VOLUME_UNITSOUNDS = 0.00
bj_SPEECH_VOLUME_COMBAT = 0.25
bj_SPEECH_VOLUME_SPELLS = 0.25
bj_SPEECH_VOLUME_UI = 0.00
bj_SPEECH_VOLUME_MUSIC = 0.55
bj_SPEECH_VOLUME_AMBIENTSOUNDS = 1.00
bj_SPEECH_VOLUME_FIRE = 0.60
bj_SMARTPAN_TRESHOLD_PAN = 500
bj_SMARTPAN_TRESHOLD_SNAP = 3500
bj_MAX_QUEUED_TRIGGERS = 100
bj_QUEUED_TRIGGER_TIMEOUT = 180.00
bj_CAMPAIGN_INDEX_T = 0
bj_CAMPAIGN_INDEX_H = 1
bj_CAMPAIGN_INDEX_U = 2
bj_CAMPAIGN_INDEX_O = 3
bj_CAMPAIGN_INDEX_N = 4
bj_CAMPAIGN_INDEX_XN = 5
bj_CAMPAIGN_INDEX_XH = 6
bj_CAMPAIGN_INDEX_XU = 7
bj_CAMPAIGN_INDEX_XO = 8
bj_CAMPAIGN_OFFSET_T = 0
bj_CAMPAIGN_OFFSET_H = 1
bj_CAMPAIGN_OFFSET_U = 2
bj_CAMPAIGN_OFFSET_O = 3
bj_CAMPAIGN_OFFSET_N = 4
bj_CAMPAIGN_OFFSET_XN = 0
bj_CAMPAIGN_OFFSET_XH = 1
bj_CAMPAIGN_OFFSET_XU = 2
bj_CAMPAIGN_OFFSET_XO = 3
bj_MISSION_INDEX_T00 = bj_CAMPAIGN_OFFSET_T * 1000 + 0
bj_MISSION_INDEX_T01 = bj_CAMPAIGN_OFFSET_T * 1000 + 1
bj_MISSION_INDEX_H00 = bj_CAMPAIGN_OFFSET_H * 1000 + 0
bj_MISSION_INDEX_H01 = bj_CAMPAIGN_OFFSET_H * 1000 + 1
bj_MISSION_INDEX_H02 = bj_CAMPAIGN_OFFSET_H * 1000 + 2
bj_MISSION_INDEX_H03 = bj_CAMPAIGN_OFFSET_H * 1000 + 3
bj_MISSION_INDEX_H04 = bj_CAMPAIGN_OFFSET_H * 1000 + 4
bj_MISSION_INDEX_H05 = bj_CAMPAIGN_OFFSET_H * 1000 + 5
bj_MISSION_INDEX_H06 = bj_CAMPAIGN_OFFSET_H * 1000 + 6
bj_MISSION_INDEX_H07 = bj_CAMPAIGN_OFFSET_H * 1000 + 7
bj_MISSION_INDEX_H08 = bj_CAMPAIGN_OFFSET_H * 1000 + 8
bj_MISSION_INDEX_H09 = bj_CAMPAIGN_OFFSET_H * 1000 + 9
bj_MISSION_INDEX_H10 = bj_CAMPAIGN_OFFSET_H * 1000 + 10
bj_MISSION_INDEX_H11 = bj_CAMPAIGN_OFFSET_H * 1000 + 11
bj_MISSION_INDEX_U00 = bj_CAMPAIGN_OFFSET_U * 1000 + 0
bj_MISSION_INDEX_U01 = bj_CAMPAIGN_OFFSET_U * 1000 + 1
bj_MISSION_INDEX_U02 = bj_CAMPAIGN_OFFSET_U * 1000 + 2
bj_MISSION_INDEX_U03 = bj_CAMPAIGN_OFFSET_U * 1000 + 3
bj_MISSION_INDEX_U05 = bj_CAMPAIGN_OFFSET_U * 1000 + 4
bj_MISSION_INDEX_U07 = bj_CAMPAIGN_OFFSET_U * 1000 + 5
bj_MISSION_INDEX_U08 = bj_CAMPAIGN_OFFSET_U * 1000 + 6
bj_MISSION_INDEX_U09 = bj_CAMPAIGN_OFFSET_U * 1000 + 7
bj_MISSION_INDEX_U10 = bj_CAMPAIGN_OFFSET_U * 1000 + 8
bj_MISSION_INDEX_U11 = bj_CAMPAIGN_OFFSET_U * 1000 + 9
bj_MISSION_INDEX_O00 = bj_CAMPAIGN_OFFSET_O * 1000 + 0
bj_MISSION_INDEX_O01 = bj_CAMPAIGN_OFFSET_O * 1000 + 1
bj_MISSION_INDEX_O02 = bj_CAMPAIGN_OFFSET_O * 1000 + 2
bj_MISSION_INDEX_O03 = bj_CAMPAIGN_OFFSET_O * 1000 + 3
bj_MISSION_INDEX_O04 = bj_CAMPAIGN_OFFSET_O * 1000 + 4
bj_MISSION_INDEX_O05 = bj_CAMPAIGN_OFFSET_O * 1000 + 5
bj_MISSION_INDEX_O06 = bj_CAMPAIGN_OFFSET_O * 1000 + 6
bj_MISSION_INDEX_O07 = bj_CAMPAIGN_OFFSET_O * 1000 + 7
bj_MISSION_INDEX_O08 = bj_CAMPAIGN_OFFSET_O * 1000 + 8
bj_MISSION_INDEX_O09 = bj_CAMPAIGN_OFFSET_O * 1000 + 9
bj_MISSION_INDEX_O10 = bj_CAMPAIGN_OFFSET_O * 1000 + 10
bj_MISSION_INDEX_N00 = bj_CAMPAIGN_OFFSET_N * 1000 + 0
bj_MISSION_INDEX_N01 = bj_CAMPAIGN_OFFSET_N * 1000 + 1
bj_MISSION_INDEX_N02 = bj_CAMPAIGN_OFFSET_N * 1000 + 2
bj_MISSION_INDEX_N03 = bj_CAMPAIGN_OFFSET_N * 1000 + 3
bj_MISSION_INDEX_N04 = bj_CAMPAIGN_OFFSET_N * 1000 + 4
bj_MISSION_INDEX_N05 = bj_CAMPAIGN_OFFSET_N * 1000 + 5
bj_MISSION_INDEX_N06 = bj_CAMPAIGN_OFFSET_N * 1000 + 6
bj_MISSION_INDEX_N07 = bj_CAMPAIGN_OFFSET_N * 1000 + 7
bj_MISSION_INDEX_N08 = bj_CAMPAIGN_OFFSET_N * 1000 + 8
bj_MISSION_INDEX_N09 = bj_CAMPAIGN_OFFSET_N * 1000 + 9
bj_MISSION_INDEX_XN00 = bj_CAMPAIGN_OFFSET_XN * 1000 + 0
bj_MISSION_INDEX_XN01 = bj_CAMPAIGN_OFFSET_XN * 1000 + 1
bj_MISSION_INDEX_XN02 = bj_CAMPAIGN_OFFSET_XN * 1000 + 2
bj_MISSION_INDEX_XN03 = bj_CAMPAIGN_OFFSET_XN * 1000 + 3
bj_MISSION_INDEX_XN04 = bj_CAMPAIGN_OFFSET_XN * 1000 + 4
bj_MISSION_INDEX_XN05 = bj_CAMPAIGN_OFFSET_XN * 1000 + 5
bj_MISSION_INDEX_XN06 = bj_CAMPAIGN_OFFSET_XN * 1000 + 6
bj_MISSION_INDEX_XN07 = bj_CAMPAIGN_OFFSET_XN * 1000 + 7
bj_MISSION_INDEX_XN08 = bj_CAMPAIGN_OFFSET_XN * 1000 + 8
bj_MISSION_INDEX_XN09 = bj_CAMPAIGN_OFFSET_XN * 1000 + 9
bj_MISSION_INDEX_XN10 = bj_CAMPAIGN_OFFSET_XN * 1000 + 10
bj_MISSION_INDEX_XH00 = bj_CAMPAIGN_OFFSET_XH * 1000 + 0
bj_MISSION_INDEX_XH01 = bj_CAMPAIGN_OFFSET_XH * 1000 + 1
bj_MISSION_INDEX_XH02 = bj_CAMPAIGN_OFFSET_XH * 1000 + 2
bj_MISSION_INDEX_XH03 = bj_CAMPAIGN_OFFSET_XH * 1000 + 3
bj_MISSION_INDEX_XH04 = bj_CAMPAIGN_OFFSET_XH * 1000 + 4
bj_MISSION_INDEX_XH05 = bj_CAMPAIGN_OFFSET_XH * 1000 + 5
bj_MISSION_INDEX_XH06 = bj_CAMPAIGN_OFFSET_XH * 1000 + 6
bj_MISSION_INDEX_XH07 = bj_CAMPAIGN_OFFSET_XH * 1000 + 7
bj_MISSION_INDEX_XH08 = bj_CAMPAIGN_OFFSET_XH * 1000 + 8
bj_MISSION_INDEX_XH09 = bj_CAMPAIGN_OFFSET_XH * 1000 + 9
bj_MISSION_INDEX_XU00 = bj_CAMPAIGN_OFFSET_XU * 1000 + 0
bj_MISSION_INDEX_XU01 = bj_CAMPAIGN_OFFSET_XU * 1000 + 1
bj_MISSION_INDEX_XU02 = bj_CAMPAIGN_OFFSET_XU * 1000 + 2
bj_MISSION_INDEX_XU03 = bj_CAMPAIGN_OFFSET_XU * 1000 + 3
bj_MISSION_INDEX_XU04 = bj_CAMPAIGN_OFFSET_XU * 1000 + 4
bj_MISSION_INDEX_XU05 = bj_CAMPAIGN_OFFSET_XU * 1000 + 5
bj_MISSION_INDEX_XU06 = bj_CAMPAIGN_OFFSET_XU * 1000 + 6
bj_MISSION_INDEX_XU07 = bj_CAMPAIGN_OFFSET_XU * 1000 + 7
bj_MISSION_INDEX_XU08 = bj_CAMPAIGN_OFFSET_XU * 1000 + 8
bj_MISSION_INDEX_XU09 = bj_CAMPAIGN_OFFSET_XU * 1000 + 9
bj_MISSION_INDEX_XU10 = bj_CAMPAIGN_OFFSET_XU * 1000 + 10
bj_MISSION_INDEX_XU11 = bj_CAMPAIGN_OFFSET_XU * 1000 + 11
bj_MISSION_INDEX_XU12 = bj_CAMPAIGN_OFFSET_XU * 1000 + 12
bj_MISSION_INDEX_XU13 = bj_CAMPAIGN_OFFSET_XU * 1000 + 13
bj_MISSION_INDEX_XO00 = bj_CAMPAIGN_OFFSET_XO * 1000 + 0
bj_CINEMATICINDEX_TOP = 0
bj_CINEMATICINDEX_HOP = 1
bj_CINEMATICINDEX_HED = 2
bj_CINEMATICINDEX_OOP = 3
bj_CINEMATICINDEX_OED = 4
bj_CINEMATICINDEX_UOP = 5
bj_CINEMATICINDEX_UED = 6
bj_CINEMATICINDEX_NOP = 7
bj_CINEMATICINDEX_NED = 8
bj_CINEMATICINDEX_XOP = 9
bj_CINEMATICINDEX_XED = 10
bj_ALLIANCE_UNALLIED = 0
bj_ALLIANCE_UNALLIED_VISION = 1
bj_ALLIANCE_ALLIED = 2
bj_ALLIANCE_ALLIED_VISION = 3
bj_ALLIANCE_ALLIED_UNITS = 4
bj_ALLIANCE_ALLIED_ADVUNITS = 5
bj_ALLIANCE_NEUTRAL = 6
bj_ALLIANCE_NEUTRAL_VISION = 7
bj_KEYEVENTTYPE_DEPRESS = 0
bj_KEYEVENTTYPE_RELEASE = 1
bj_KEYEVENTKEY_LEFT = 0
bj_KEYEVENTKEY_RIGHT = 1
bj_KEYEVENTKEY_DOWN = 2
bj_KEYEVENTKEY_UP = 3
bj_TIMETYPE_ADD = 0
bj_TIMETYPE_SET = 1
bj_TIMETYPE_SUB = 2
bj_CAMERABOUNDS_ADJUST_ADD = 0
bj_CAMERABOUNDS_ADJUST_SUB = 1
bj_QUESTTYPE_REQ_DISCOVERED = 0
bj_QUESTTYPE_REQ_UNDISCOVERED = 1
bj_QUESTTYPE_OPT_DISCOVERED = 2
bj_QUESTTYPE_OPT_UNDISCOVERED = 3
bj_QUESTMESSAGE_DISCOVERED = 0
bj_QUESTMESSAGE_UPDATED = 1
bj_QUESTMESSAGE_COMPLETED = 2
bj_QUESTMESSAGE_FAILED = 3
bj_QUESTMESSAGE_REQUIREMENT = 4
bj_QUESTMESSAGE_MISSIONFAILED = 5
bj_QUESTMESSAGE_ALWAYSHINT = 6
bj_QUESTMESSAGE_HINT = 7
bj_QUESTMESSAGE_SECRET = 8
bj_QUESTMESSAGE_UNITACQUIRED = 9
bj_QUESTMESSAGE_UNITAVAILABLE = 10
bj_QUESTMESSAGE_ITEMACQUIRED = 11
bj_QUESTMESSAGE_WARNING = 12
bj_SORTTYPE_SORTBYVALUE = 0
bj_SORTTYPE_SORTBYPLAYER = 1
bj_SORTTYPE_SORTBYLABEL = 2
bj_CINEFADETYPE_FADEIN = 0
bj_CINEFADETYPE_FADEOUT = 1
bj_CINEFADETYPE_FADEOUTIN = 2
bj_REMOVEBUFFS_POSITIVE = 0
bj_REMOVEBUFFS_NEGATIVE = 1
bj_REMOVEBUFFS_ALL = 2
bj_REMOVEBUFFS_NONTLIFE = 3
bj_BUFF_POLARITY_POSITIVE = 0
bj_BUFF_POLARITY_NEGATIVE = 1
bj_BUFF_POLARITY_EITHER = 2
bj_BUFF_RESIST_MAGIC = 0
bj_BUFF_RESIST_PHYSICAL = 1
bj_BUFF_RESIST_EITHER = 2
bj_BUFF_RESIST_BOTH = 3
bj_HEROSTAT_STR = 0
bj_HEROSTAT_AGI = 1
bj_HEROSTAT_INT = 2
bj_MODIFYMETHOD_ADD = 0
bj_MODIFYMETHOD_SUB = 1
bj_MODIFYMETHOD_SET = 2
bj_UNIT_STATE_METHOD_ABSOLUTE = 0
bj_UNIT_STATE_METHOD_RELATIVE = 1
bj_UNIT_STATE_METHOD_DEFAULTS = 2
bj_UNIT_STATE_METHOD_MAXIMUM = 3
bj_GATEOPERATION_CLOSE = 0
bj_GATEOPERATION_OPEN = 1
bj_GATEOPERATION_DESTROY = 2
bj_GAMECACHE_BOOLEAN = 0
bj_GAMECACHE_INTEGER = 1
bj_GAMECACHE_REAL = 2
bj_GAMECACHE_UNIT = 3
bj_GAMECACHE_STRING = 4
bj_ITEM_STATUS_HIDDEN = 0
bj_ITEM_STATUS_OWNED = 1
bj_ITEM_STATUS_INVULNERABLE = 2
bj_ITEM_STATUS_POWERUP = 3
bj_ITEM_STATUS_SELLABLE = 4
bj_ITEM_STATUS_PAWNABLE = 5
bj_ITEMCODE_STATUS_POWERUP = 0
bj_ITEMCODE_STATUS_SELLABLE = 1
bj_ITEMCODE_STATUS_PAWNABLE = 2
bj_MINIMAPPINGSTYLE_SIMPLE = 0
bj_MINIMAPPINGSTYLE_FLASHY = 1
bj_MINIMAPPINGSTYLE_ATTACK = 2
bj_CORPSE_MAX_DEATH_TIME = 8.00
bj_CORPSETYPE_FLESH = 0
bj_CORPSETYPE_BONE = 1
bj_ELEVATOR_BLOCKER_CODE = "DTep"
bj_ELEVATOR_CODE01 = "DTrf"
bj_ELEVATOR_CODE02 = "DTrx"
bj_ELEVATOR_WALL_TYPE_ALL = 0
bj_ELEVATOR_WALL_TYPE_EAST = 1
bj_ELEVATOR_WALL_TYPE_NORTH = 2
bj_ELEVATOR_WALL_TYPE_SOUTH = 3
bj_ELEVATOR_WALL_TYPE_WEST = 4
bj_MELEE_MAX_TWINKED_HEROES = 0
bj_slotControlReady = false
bj_mapInitialPlayableArea = nil
bj_mapInitialCameraBounds = nil
bj_forLoopAIndex = 0
bj_forLoopBIndex = 0
bj_forLoopAIndexEnd = 0
bj_forLoopBIndexEnd = 0
bj_slotControlReady = false
bj_gameStartedTimer = nil
bj_gameStarted = false
bj_isSinglePlayer = false
bj_dncSoundsDay = nil
bj_dncSoundsNight = nil
bj_dayAmbientSound = nil
bj_nightAmbientSound = nil
bj_dncSoundsDawn = nil
bj_dncSoundsDusk = nil
bj_dawnSound = nil
bj_duskSound = nil
bj_useDawnDuskSounds = true
bj_dncIsDaytime = false
bj_rescueSound = nil
bj_questDiscoveredSound = nil
bj_questUpdatedSound = nil
bj_questCompletedSound = nil
bj_questFailedSound = nil
bj_questHintSound = nil
bj_questSecretSound = nil
bj_questItemAcquiredSound = nil
bj_questWarningSound = nil
bj_victoryDialogSound = nil
bj_defeatDialogSound = nil
bj_rescueUnitBehavior = nil
bj_rescueChangeColorUnit = true
bj_rescueChangeColorBldg = true
bj_cineSceneEndingTimer = nil
bj_cineSceneLastSound = nil
bj_cineSceneBeingSkipped = nil
bj_cineModePriorSpeed = MAP_SPEED_NORMAL
bj_cineModePriorFogSetting = false
bj_cineModePriorMaskSetting = false
bj_cineModeAlreadyIn = false
bj_cineModePriorDawnDusk = false
bj_cineModeSavedSeed = 0
bj_cineFadeFinishTimer = nil
bj_cineFadeContinueTimer = nil
bj_cineFadeContinueRed = 0
bj_cineFadeContinueGreen = 0
bj_cineFadeContinueBlue = 0
bj_cineFadeContinueTrans = 0
bj_cineFadeContinueDuration = 0
bj_cineFadeContinueTex = ""
CONST_ATTR = {
    life = "生命",
    mana = "魔法",
    move = "移动",
    defend = "护甲",
    attack_damage_type = "攻击伤害类型",
    physical = "物理",
    magic = "魔法",
    real = "真实",
    absolute = "绝对",
    fire = "火",
    soil = "土",
    water = "水",
    ice = "冰",
    wind = "风",
    light = "光",
    dark = "暗",
    wood = "木",
    thunder = "雷",
    poison = "毒",
    ghost = "鬼",
    metal = "金",
    dragon = "龙",
    insect = "虫",
    god = "神",
    attack_speed = "攻速",
    attack_speed_space = "攻击间隔",
    attack_white = "攻击力",
    attack_green = "附加攻击力",
    attack_range = "攻击范围",
    sight = "视野范围",
    str_green = "附加力量",
    agi_green = "附加敏捷",
    int_green = "附加智力",
    str_white = "本体力量",
    agi_white = "本体敏捷",
    int_white = "本体智力",
    life_back = "生命恢复",
    mana_back = "魔法恢复",
    resistance = "魔抗",
    toughness = "减伤",
    avoid = "回避",
    aim = "命中",
    punish = "僵直",
    punish_current = "当前僵直",
    meditative = "冥想力",
    help = "救助力",
    hemophagia = "吸血",
    hemophagia_skill = "技能吸血",
    luck = "幸运",
    invincible = "无敌",
    weight = "负重",
    weight_current = "当前负重",
    damage_extent = "伤害增幅",
    damage_rebound = "反弹伤害",
    damage_rebound_oppose = "反伤抵抗",
    cure = "治疗",
    knocking_oppose = "物理暴击抵抗",
    violence_oppose = "魔法暴击抵抗",
    hemophagia_oppose = "吸血抵抗",
    hemophagia_skill_oppose = "技能吸血抵抗",
    split_oppose = "分裂抵抗",
    punish_oppose = "僵直抵抗",
    swim_oppose = "眩晕抵抗",
    broken_oppose = "打断抵抗",
    silent_oppose = "沉默抵抗",
    unarm_oppose = "缴械抵抗",
    fetter_oppose = "缚足抵抗",
    bomb_oppose = "爆破抵抗",
    lightning_chain_oppose = "闪电链抵抗",
    crack_fly_oppose = "击飞抵抗",
    natural_fire = "自然火攻",
    natural_soil = "自然土攻",
    natural_water = "自然水攻",
    natural_ice = "自然冰攻",
    natural_wind = "自然风攻",
    natural_light = "自然光攻",
    natural_dark = "自然暗攻",
    natural_wood = "自然木攻",
    natural_thunder = "自然雷攻",
    natural_poison = "自然毒攻",
    natural_ghost = "自然鬼攻",
    natural_metal = "自然金攻",
    natural_dragon = "自然龙攻",
    natural_insect = "自然虫攻",
    natural_god = "自然神攻",
    natural_fire_oppose = "自然火抗",
    natural_soil_oppose = "自然土抗",
    natural_water_oppose = "自然水抗",
    natural_ice_oppose = "自然冰抗",
    natural_wind_oppose = "自然风抗",
    natural_light_oppose = "自然光抗",
    natural_dark_oppose = "自然暗抗",
    natural_wood_oppose = "自然风抗",
    natural_thunder_oppose = "自然雷抗",
    natural_poison_oppose = "自然毒抗",
    natural_ghost_oppose = "自然鬼抗",
    natural_metal_oppose = "自然金抗",
    natural_dragon_oppose = "自然龙抗",
    natural_insect_oppose = "自然虫抗",
    natural_god_oppose = "自然神抗",
    
    attack_buff = "平攻强化效果",
    attack_debuff = "平攻削敌效果",
    attack_effect = "平攻特效",
    skill_buff = "技能强化效果",
    skill_debuff = "技能削敌效果",
    skill_effect = "技能特效",
    
    knocking = "物理暴击",
    violence = "魔法暴击",
    split = "分裂",
    swim = "眩晕",
    broken = "打断",
    silent = "沉默",
    unarm = "缴械",
    fetter = "缚足",
    bomb = "爆破",
    lightning_chain = "闪电链",
    crack_fly = "击飞",
    
    odds = "几率",
    percent = "比例",
    val = "数值",
    during = "持续时间",
    qty = "数量",
    range = "范围",
    reduce = "衰减",
    distance = "距离",
    high = "高度",
    
    gold_ratio = "黄金获得率",
    lumber_ratio = "木头获得率",
    exp_ratio = "经验获得率",
    sell_ratio = "售卖比率"
}
CONST_ATTR_KEYS = {
    "life",
    "mana",
    "move",
    "defend",
    "attack_damage_type",
    "attack_speed",
    "attack_speed_space",
    "attack_white",
    "attack_green",
    "attack_range",
    "sight",
    "str_green",
    "agi_green",
    "int_green",
    "str_white",
    "agi_white",
    "int_white",
    "life_back",
    "mana_back",
    "resistance",
    "toughness",
    "avoid",
    "aim",
    "punish",
    "punish_current",
    "meditative",
    "help",
    "hemophagia",
    "hemophagia_skill",
    "luck",
    "invincible",
    "weight",
    "weight_current",
    "damage_extent",
    "damage_rebound",
    "damage_rebound_oppose",
    "cure",
    "knocking_oppose",
    "violence_oppose",
    "hemophagia_oppose",
    "hemophagia_skill_oppose",
    "split_oppose",
    "punish_oppose",
    "swim_oppose",
    "broken_oppose",
    "silent_oppose",
    "unarm_oppose",
    "fetter_oppose",
    "bomb_oppose",
    "lightning_chain_oppose",
    "crack_fly_oppose",
    "natural_fire",
    "natural_soil",
    "natural_water",
    "natural_ice",
    "natural_wind",
    "natural_light",
    "natural_dark",
    "natural_wood",
    "natural_thunder",
    "natural_poison",
    "natural_ghost",
    "natural_metal",
    "natural_dragon",
    "natural_insect",
    "natural_god",
    "natural_fire_oppose",
    "natural_soil_oppose",
    "natural_water_oppose",
    "natural_ice_oppose",
    "natural_wind_oppose",
    "natural_light_oppose",
    "natural_dark_oppose",
    "natural_wood_oppose",
    "natural_thunder_oppose",
    "natural_poison_oppose",
    "natural_ghost_oppose",
    "natural_metal_oppose",
    "natural_dragon_oppose",
    "natural_insect_oppose",
    "natural_god_oppose",
    "attack_buff",
    "attack_debuff",
    "skill_buff",
    "skill_debuff",
    "attack_effect",
    "skill_effect",
    "gold_ratio",
    "lumber_ratio",
    "exp_ratio",
    "sell_ratio"
}
CONST_ATTR_BUFF_KEYS = {
    "attr",
    "odds",
    "percent",
    "val",
    "during",
    "qty",
    "range",
    "reduce",
    "distance",
    "high"
}
CONST_DAMAGE_KIND = {
    attack = "attack",
    skill = "skill",
    special = "special",
    item = "item",
}
CONST_DAMAGE_KIND_LABEL = {
    attack = "攻击",
    skill = "技能",
    special = "特殊",
    item = "物品",
}
CONST_DAMAGE_TYPE = {
    common = "common",
    physical = "physical",
    magic = "magic",
    real = "real",
    absolute = "absolute",
    fire = "fire",
    soil = "soil",
    water = "water",
    ice = "ice",
    wind = "wind",
    light = "light",
    dark = "dark",
    wood = "wood",
    thunder = "thunder",
    poison = "poison",
    ghost = "ghost",
    metal = "metal",
    dragon = "dragon",
    insect = "insect",
    god = "god"
}
CONST_DAMAGE_TYPE_NATURE = {
    "fire",
    "soil",
    "water",
    "ice",
    "wind",
    "light",
    "dark",
    "wood",
    "thunder",
    "poison",
    "ghost",
    "metal",
    "dragon",
    "insect",
    "god",
}
CONST_DAMAGE_TYPE_MAP = {
    common = {
        label = "常规",
        color = "ffffff"
    },
    physical = {
        label = "物理",
        color = "d9d9d9"
    },
    magic = {
        label = "魔法",
        color = "4876ff"
    },
    real = {
        label = "真实",
        color = "ffd700"
    },
    absolute = {
        label = "绝对",
        color = "ee5c42"
    },
    fire = {
        label = "火",
        color = "f45454"
    },
    soil = {
        label = "土",
        color = "dbb745"
    },
    water = {
        label = "水",
        color = "85adee"
    },
    ice = {
        label = "冰",
        color = "85f4f4"
    },
    wind = {
        label = "风",
        color = "b6d7a8"
    },
    light = {
        label = "光",
        color = "f9f99c"
    },
    dark = {
        label = "暗",
        color = "696969"
    },
    wood = {
        label = "木",
        color = "7cbd60"
    },
    thunder = {
        label = "雷",
        color = "7cbd60"
    },
    poison = {
        label = "毒",
        color = "3cb371"
    },
    ghost = {
        label = "鬼",
        color = "383434"
    },
    metal = {
        label = "金",
        color = "f9f99c"
    },
    dragon = {
        label = "龙",
        color = "7cbd60"
    },
    insect = {
        label = "虫",
        color = "ba55d3"
    },
    god = {
        label = "神",
        color = "bf3eff"
    }
}
CONST_HERO_PRIMARY = {
    STR = "力量",
    AGI = "敏捷",
    INT = "智力",
}
CONST_HOTKEY_ABILITY = {
    { HotKey = "Q", Buttonpos1 = 0, Buttonpos2 = 2, },
    { HotKey = "W", Buttonpos1 = 1, Buttonpos2 = 2, },
    { HotKey = "E", Buttonpos1 = 2, Buttonpos2 = 2, },
    { HotKey = "R", Buttonpos1 = 3, Buttonpos2 = 2, },
    { HotKey = "D", Buttonpos1 = 0, Buttonpos2 = 1, },
    { HotKey = "F", Buttonpos1 = 1, Buttonpos2 = 1, },
    { HotKey = "C", Buttonpos1 = 2, Buttonpos2 = 1, },
    { HotKey = "V", Buttonpos1 = 3, Buttonpos2 = 1, },
}
CONST_HOTKEY_ABILITY_KV = {
    Q = { Buttonpos1 = 0, Buttonpos2 = 2, },
    W = { Buttonpos1 = 1, Buttonpos2 = 2, },
    E = { Buttonpos1 = 2, Buttonpos2 = 2, },
    R = { Buttonpos1 = 3, Buttonpos2 = 2, },
    D = { Buttonpos1 = 0, Buttonpos2 = 1, },
    F = { Buttonpos1 = 1, Buttonpos2 = 1, },
    C = { Buttonpos1 = 2, Buttonpos2 = 1, },
    V = { Buttonpos1 = 3, Buttonpos2 = 1, },
}
CONST_HOTKEY_FULL = {
    { HotKey = "Q", Buttonpos1 = 0, Buttonpos2 = 0, },
    { HotKey = "W", Buttonpos1 = 1, Buttonpos2 = 0, },
    { HotKey = "E", Buttonpos1 = 2, Buttonpos2 = 0, },
    { HotKey = "R", Buttonpos1 = 3, Buttonpos2 = 0, },
    { HotKey = "A", Buttonpos1 = 0, Buttonpos2 = 1, },
    { HotKey = "S", Buttonpos1 = 1, Buttonpos2 = 1, },
    { HotKey = "D", Buttonpos1 = 2, Buttonpos2 = 1, },
    { HotKey = "F", Buttonpos1 = 3, Buttonpos2 = 1, },
    { HotKey = "Z", Buttonpos1 = 0, Buttonpos2 = 2, },
    { HotKey = "X", Buttonpos1 = 1, Buttonpos2 = 2, },
    { HotKey = "C", Buttonpos1 = 2, Buttonpos2 = 2, },
    { HotKey = "V", Buttonpos1 = 3, Buttonpos2 = 2, },
}
CONST_HOTKEY_FULL_KV = {
    Q = { Buttonpos1 = 0, Buttonpos2 = 0, },
    W = { Buttonpos1 = 1, Buttonpos2 = 0, },
    E = { Buttonpos1 = 2, Buttonpos2 = 0, },
    R = { Buttonpos1 = 3, Buttonpos2 = 0, },
    A = { Buttonpos1 = 0, Buttonpos2 = 1, },
    S = { Buttonpos1 = 1, Buttonpos2 = 1, },
    D = { Buttonpos1 = 2, Buttonpos2 = 1, },
    F = { Buttonpos1 = 3, Buttonpos2 = 1, },
    Z = { Buttonpos1 = 0, Buttonpos2 = 2, },
    X = { Buttonpos1 = 1, Buttonpos2 = 2, },
    C = { Buttonpos1 = 2, Buttonpos2 = 2, },
    V = { Buttonpos1 = 3, Buttonpos2 = 2, },
}
CONST_ITEM_CLASS = {
    Permanent = "永久",
    Charged = "可充",
    PowerUp = "力量提升",
    Artifact = "人造",
    Purchasable = "可购买",
    Campaign = "战役",
    Miscellaneous = "混杂",
}
CONST_WEAPON_TYPE = {
    missile = { value = "missile", label = "箭矢" },
    msplash = { value = "msplash", label = "箭矢(溅射)" },
    mbounce = { value = "mbounce", label = "箭矢(弹射)" },
    mline = { value = "mline", label = "箭矢(穿透)" },
    normal = { value = "normal", label = "近战" },
    instant = { value = "instant", label = "立即" },
    artillery = { value = "artillery", label = "炮火" },
    aline = { value = "aline", label = "炮火(穿透)" },
}
CONST_WEAPON_SOUND = {
    MetalHeavyBash = { value = "MetalHeavyBash", label = "金属重击" },
    MetalMediumBash = { value = "MetalMediumBash", label = "金属中击" },
    MetalHeavyChop = { value = "MetalHeavyChop", label = "金属重砍" },
    MetalMediumChop = { value = "MetalMediumChop", label = "金属中砍" },
    MetalLightChop = { value = "MetalLightChop", label = "金属轻砍" },
    MetalHeavySlice = { value = "MetalHeavySlice", label = "金属重切" },
    MetalMediumSlice = { value = "MetalMediumSlice", label = "金属中切" },
    MetalLightSlice = { value = "MetalLightSlice", label = "金属轻切" },
    AxeMediumChop = { value = "AxeMediumChop", label = "斧头中砍" },
    RockHeavyBash = { value = "RockHeavyBash", label = "岩石重击" },
    WoodHeavyBash = { value = "WoodHeavyBash", label = "木头重击" },
    WoodMediumBash = { value = "WoodMediumBash", label = "木头中击" },
    WoodLightBash = { value = "WoodLightBash", label = "木头轻击" },
}
CONST_MOVE_TYPE = {
    foot = { value = "foot", label = "步行" },
    horse = { value = "horse", label = "坐骑" },
    fly = { value = "fly", label = "飞行" },
    hover = { value = "hover", label = "浮空" },
    float = { value = "float", label = "漂浮" },
    amph = { value = "amph", label = "两栖" },
}
CONST_ARMOR_TYPE = {
    Metal = { value = "Metal", label = "金属" },
    Ethereal = { value = "Ethereal", label = "气态" },
    Flesh = { value = "Flesh", label = "肉体" },
    Wood = { value = "Wood", label = "木头" },
    Stone = { value = "Stone", label = "石头" },
}
CONST_PLAYER_COLOR = {
    RED = cj.ConvertPlayerColor(0),
    BLUE = cj.ConvertPlayerColor(1),
    CYAN = cj.ConvertPlayerColor(2),
    PURPLE = cj.ConvertPlayerColor(3),
    YELLOW = cj.ConvertPlayerColor(4),
    ORANGE = cj.ConvertPlayerColor(5),
    GREEN = cj.ConvertPlayerColor(6),
    PINK = cj.ConvertPlayerColor(7),
    LIGHT_GRAY = cj.ConvertPlayerColor(8),
    LIGHT_BLUE = cj.ConvertPlayerColor(9),
    AQUA = cj.ConvertPlayerColor(10),
    BROWN = cj.ConvertPlayerColor(11)
}
CONST_EVENT = {
    attackDetect = "attackDetect",
    attackGetTarget = "attackGetTarget",
    attackReady = "attackReady",
    beAttackReady = "beAttackReady",
    attack = "attack",
    beAttack = "beAttack",
    skillStudy = "skillStudy",
    skillReady = "skillReady",
    skillCast = "skillCast",
    skillEffect = "skillEffect",
    skillStop = "skillStop",
    skillFinish = "skillFinish",
    itemUsed = "itemUsed",
    itemSell = "itemSell",
    unitSell = "unitSell",
    itemDrop = "itemDrop",
    itemPawn = "itemPawn",
    itemGet = "itemGet",
    itemDestroy = "itemDestroy",
    itemSynthesis = "itemSynthesis",
    itemSeparate = "itemSeparate",
    itemOverWeight = "itemOverWeight",
    itemOverSlot = "itemOverSlot",
    damage = "damage",
    beDamage = "beDamage",
    avoid = "avoid",
    beAvoid = "beAvoid",
    breakArmor = "breakArmor",
    beBreakArmor = "beBreakArmor",
    swim = "swim",
    beSwim = "beSwim",
    broken = "broken",
    beBroken = "beBroken",
    silent = "silent",
    beSilent = "beSilent",
    unarm = "unarm",
    beUnarm = "beUnarm",
    fetter = "fetter",
    beFetter = "beFetter",
    bomb = "bomb",
    beBomb = "beBomb",
    lightningChain = "lightningChain",
    beLightningChain = "beLightningChain",
    crackFly = "crackFly",
    beCrackFly = "beCrackFly",
    rebound = "rebound",
    beRebound = "beRebound",
    noAvoid = "noAvoid",
    beNoAvoid = "beNoAvoid",
    knocking = "knocking",
    beKnocking = "beKnocking",
    violence = "violence",
    beViolence = "beViolence",
    spilt = "spilt",
    beSpilt = "beSpilt",
    limitToughness = "limitToughness",
    hemophagia = "hemophagia",
    beHemophagia = "beHemophagia",
    skillHemophagia = "skillHemophagia",
    beSkillHemophagia = "beSkillHemophagia",
    punish = "punish",
    dead = "dead",
    kill = "kill",
    reborn = "reborn",
    levelUp = "levelUp",
    enterUnitRange = "enterUnitRange",
    enterRect = "enterRect",
    leaveRect = "leaveRect",
    chat = "chat",
    esc = "esc",
    selection = "selection",
    deSelection = "deSelection",
    upgradeStart = "upgradeStart",
    upgradeCancel = "upgradeCancel",
    upgradeFinish = "upgradeFinish",
    constructStart = "constructStart",
    constructCancel = "constructCancel",
    constructFinish = "constructFinish",
    pickHero = "pickHero",
    playerLeave = "playerLeave",
    destructableDestroy = "destructableDestroy",
    courierBlink = "courierBlink",
    courierRangePickUp = "courierRangePickUp",
    courierSeparate = "courierSeparate",
    courierDeliver = "courierDeliver",
    moveStart = "moveStart",
    moving = "moving",
    moveStop = "moveStop",
    holdOn = "holdOn",
    stop = "stop",
}
if (HLUA_DEBUG == nil) then
    HLUA_DEBUG = false 
end
rem = function(key1, key2)
    if (HLUA_DEBUG == false) then
        return
    end
    if (type(key1) ~= "string") then
        return
    end
    if (key2 ~= nil and type(key2) ~= "string") then
        return
    end
    if (remStack == nil) then
        remStack = {}
    end
    remStack[key1] = os.clock()
    if (key2 ~= nil) then
        remStack[key2] = os.clock()
        print("[rem " .. key1 .. "->" .. key2 .. "]:" .. remStack[key2] - remStack[key1])
    end
end
print_stack = function(...)
    if (HLUA_DEBUG == false) then
        return
    end
    local out = { "[TRACE]" }
    local n = select("#", ...)
    for i = 1, n, 1 do
        local v = select(i, ...)
        out[#out + 1] = tostring(v)
    end
    out[#out + 1] = "\n"
    out[#out + 1] = debug.traceback("", 2)
    print(table.concat(out, " "))
    
end
print_mb = function(...)
    if (HLUA_DEBUG == false) then
        return
    end
    for _, str in ipairs({ ... }) do
        console.write(str)
    end
end
print_err = function(val)
    if (HLUA_DEBUG == false) then
        return
    end
    print("========h-lua-err========")
    if (type(val) == "table") then
        print_mbr(val)
    else
        print_mb(val)
    end
    print_stack()
    print("=========================")
end
print_r = function(t, printMethod, showDetail)
    if (HLUA_DEBUG == false) then
        return
    end
    local print_r_cache = {}
    printMethod = printMethod or print
    if (showDetail == nil) then
        showDetail = true
    end
    local function sub_print_r(tt, indent)
        if (print_r_cache[tostring(tt)]) then
            printMethod(indent .. "*" .. tostring(tt))
        else
            print_r_cache[tostring(tt)] = true
            if (type(tt) == "table") then
                for pos, val in pairs(tt) do
                    if (type(pos) == "userdata") then
                        pos = "userdata"
                    end
                    if (type(val) == "table") then
                        printMethod(indent .. "[" .. pos .. "](" .. table.len(val) .. ") => " .. tostring(tt) .. " {")
                        sub_print_r(val, indent .. string.rep(" ", string.len(pos) + 8))
                        printMethod(indent .. string.rep(" ", string.len(pos) + 6) .. "}")
                    elseif (showDetail == true) then
                        if (type(val) == "string") then
                            printMethod(indent .. "[" .. pos .. '] => <string>"' .. val .. '"')
                        else
                            printMethod(indent .. "[" .. pos .. "] => " .. "<" .. type(val) .. ">" .. tostring(val))
                        end
                    end
                end
            else
                printMethod(indent .. "<" .. type(tt) .. ">" .. tostring(tt))
            end
        end
    end
    if (type(t) == "table") then
        printMethod(tostring(t) .. "(" .. table.len(t) .. ") {")
        sub_print_r(t, "  ")
        print("}")
    else
        sub_print_r(t, "  ")
    end
    print()
end
print_mbr = function(t)
    print_r(t, print_mb, true)
end
json = {}
local function kind_of(obj)
    if type(obj) ~= "table" then
        return type(obj)
    end
    local i = 1
    for _ in pairs(obj) do
        if obj[i] ~= nil then
            i = i + 1
        else
            return "table"
        end
    end
    if i == 1 then
        return "table"
    else
        return "array"
    end
end
local function escape_str(s)
    local in_char = { "\\", '"', "/", "\b", "\f", "\n", "\r", "\t" }
    local out_char = { "\\", '"', "/", "b", "f", "n", "r", "t" }
    for i, c in ipairs(in_char) do
        s = s:gsub(c, "\\" .. out_char[i])
    end
    return s
end
local function skip_delim(str, pos, delim, err_if_missing)
    pos = pos + #str:match("^%s*", pos)
    if str:sub(pos, pos) ~= delim then
        if err_if_missing then
            error("Expected " .. delim .. " near position " .. pos)
        end
        return pos, false
    end
    return pos + 1, true
end
local function parse_str_val(str, pos, val)
    val = val or ""
    local early_end_error = "End of input found while parsing string."
    if pos > #str then
        error(early_end_error)
    end
    local c = str:sub(pos, pos)
    if c == '"' then
        return val, pos + 1
    end
    if c ~= "\\" then
        return parse_str_val(str, pos + 1, val .. c)
    end
    
    local esc_map = { b = "\b", f = "\f", n = "\n", r = "\r", t = "\t" }
    local nextc = str:sub(pos + 1, pos + 1)
    if not nextc then
        error(early_end_error)
    end
    return parse_str_val(str, pos + 2, val .. (esc_map[nextc] or nextc))
end
local function parse_num_val(str, pos)
    local num_str = str:match("^-?%d+%.?%d*[eE]?[+-]?%d*", pos)
    local val = tonumber(num_str)
    if not val then
        error("Error parsing number at position " .. pos .. ".")
    end
    return val, pos + #num_str
end
function json.stringify(obj, as_key)
    local s = {} 
    local kind = kind_of(obj) 
    if kind == "array" then
        if as_key then
            error("Can't encode array as key.")
        end
        s[#s + 1] = "["
        for i, val in ipairs(obj) do
            if i > 1 then
                s[#s + 1] = ", "
            end
            s[#s + 1] = json.stringify(val)
        end
        s[#s + 1] = "]"
    elseif kind == "table" then
        if as_key then
            error("Can't encode table as key.")
        end
        s[#s + 1] = "{"
        for k, v in pairs(obj) do
            if #s > 1 then
                s[#s + 1] = ", "
            end
            s[#s + 1] = json.stringify(k, true)
            s[#s + 1] = ":"
            s[#s + 1] = json.stringify(v)
        end
        s[#s + 1] = "}"
    elseif kind == "string" then
        return '"' .. escape_str(obj) .. '"'
    elseif kind == "number" then
        if as_key then
            return '"' .. tostring(obj) .. '"'
        end
        return tostring(obj)
    elseif kind == "boolean" then
        return tostring(obj)
    elseif kind == "nil" then
        return "null"
    else
        error("Unjsonifiable type: " .. kind .. ".")
    end
    return table.concat(s)
end
json.null = {} 
function json.parse(str, pos, end_delim)
    pos = pos or 1
    if str == nil then
        print_stack()
        error("json str is nil.")
    end
    if pos > #str then
        print_stack()
        error("Reached unexpected end of input.")
    end
    local pos = pos + #str:match("^%s*", pos) 
    local first = str:sub(pos, pos)
    if first == "{" then
        
        local obj, key, delim_found = {}, true, true
        pos = pos + 1
        while true do
            key, pos = json.parse(str, pos, "}")
            if key == nil then
                return obj, pos
            end
            if not delim_found then
                error("Comma missing between object items.")
            end
            pos = skip_delim(str, pos, ":", true) 
            obj[key], pos = json.parse(str, pos)
            pos, delim_found = skip_delim(str, pos, ",")
        end
    elseif first == "[" then
        
        local arr, val, delim_found = {}, true, true
        pos = pos + 1
        while true do
            val, pos = json.parse(str, pos, "]")
            if val == nil then
                return arr, pos
            end
            if not delim_found then
                error("Comma missing between array items.")
            end
            arr[#arr + 1] = val
            pos, delim_found = skip_delim(str, pos, ",")
        end
    elseif first == '"' then
        
        return parse_str_val(str, pos + 1)
    elseif first == "-" or first:match("%d") then
        
        return parse_num_val(str, pos)
    elseif first == end_delim then
        
        return nil, pos + 1
    else
        
        local literals = { ["true"] = true, ["false"] = false, ["null"] = json.null }
        for lit_str, lit_val in pairs(literals) do
            local lit_end = pos + #lit_str - 1
            if str:sub(pos, lit_end) == lit_str then
                return lit_val, lit_end + 1
            end
        end
        local pos_info_str = "position " .. pos .. ": " .. str:sub(pos, pos + 10)
        error("Invalid json syntax starting at " .. pos_info_str)
    end
end
md5 = {
    _VERSION = "md5.lua 1.1.0",
    _DESCRIPTION = "MD5 computation in Lua (5.1-3, LuaJIT)",
    _URL = "https://github.com/kikito/md5.lua",
    _LICENSE = [[
    MIT LICENSE
    Copyright (c) 2013 Enrique García Cota + Adam Baldwin + hanzao + Equi 4 Software
    Permission is hereby granted, free of charge, to any person obtaining a
    copy of this software and associated documentation files (the
    "Software"), to deal in the Software without restriction, including
    without limitation the rights to use, copy, modify, merge, publish,
    distribute, sublicense, and/or sell copies of the Software, and to
    permit persons to whom the Software is furnished to do so, subject to
    the following conditions:
    The above copyright notice and this permission notice shall be included
    in all copies or substantial portions of the Software.
    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
    OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
    MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
    IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
    CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
    TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
    SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
  ]]
}
local char, byte, format, rep, sub = string.char, string.byte, string.format, string.rep, string.sub
local bit_or, bit_and, bit_not, bit_xor, bit_rshift, bit_lshift
local ok, bit = pcall(require, "bit")
if ok then
    bit_or, bit_and, bit_not, bit_xor, bit_rshift, bit_lshift = bit.bor,
    bit.band,
    bit.bnot,
    bit.bxor,
    bit.rshift,
    bit.lshift
else
    ok, bit = pcall(require, "bit32")
    if ok then
        bit_not = bit.bnot
        local tobit = function(n)
            return n <= 0x7fffffff and n or -(bit_not(n) + 1)
        end
        local normalize = function(f)
            return function(a, b)
                return tobit(f(tobit(a), tobit(b)))
            end
        end
        bit_or, bit_and, bit_xor = normalize(bit.bor), normalize(bit.band), normalize(bit.bxor)
        bit_rshift, bit_lshift = normalize(bit.rshift), normalize(bit.lshift)
    else
        local function tbl2number(tbl)
            local result = 0
            local power = 1
            for i = 1, #tbl do
                result = result + tbl[i] * power
                power = power * 2
            end
            return result
        end
        local function expand(t1, t2)
            local big, small = t1, t2
            if (#big < #small) then
                big, small = small, big
            end
            
            for i = #small + 1, #big do
                small[i] = 0
            end
        end
        local to_bits  
        bit_not = function(n)
            local tbl = to_bits(n)
            local size = math.max(#tbl, 32)
            for i = 1, size do
                if (tbl[i] == 1) then
                    tbl[i] = 0
                else
                    tbl[i] = 1
                end
            end
            return tbl2number(tbl)
        end
        
        to_bits = function(n)
            if (n < 0) then
                
                return to_bits(bit_not(math.abs(n)) + 1)
            end
            
            local tbl = {}
            local cnt = 1
            local last
            while n > 0 do
                last = n % 2
                tbl[cnt] = last
                n = (n - last) / 2
                cnt = cnt + 1
            end
            return tbl
        end
        bit_or = function(m, n)
            local tbl_m = to_bits(m)
            local tbl_n = to_bits(n)
            expand(tbl_m, tbl_n)
            local tbl = {}
            for i = 1, #tbl_m do
                if (tbl_m[i] == 0 and tbl_n[i] == 0) then
                    tbl[i] = 0
                else
                    tbl[i] = 1
                end
            end
            return tbl2number(tbl)
        end
        bit_and = function(m, n)
            local tbl_m = to_bits(m)
            local tbl_n = to_bits(n)
            expand(tbl_m, tbl_n)
            local tbl = {}
            for i = 1, #tbl_m do
                if (tbl_m[i] == 0 or tbl_n[i] == 0) then
                    tbl[i] = 0
                else
                    tbl[i] = 1
                end
            end
            return tbl2number(tbl)
        end
        bit_xor = function(m, n)
            local tbl_m = to_bits(m)
            local tbl_n = to_bits(n)
            expand(tbl_m, tbl_n)
            local tbl = {}
            for i = 1, #tbl_m do
                if (tbl_m[i] ~= tbl_n[i]) then
                    tbl[i] = 1
                else
                    tbl[i] = 0
                end
            end
            return tbl2number(tbl)
        end
        bit_rshift = function(n, bits)
            local high_bit = 0
            if (n < 0) then
                
                n = bit_not(math.abs(n)) + 1
                high_bit = 0x80000000
            end
            local floor = math.floor
            for i = 1, bits do
                n = n / 2
                n = bit_or(floor(n), high_bit)
            end
            return floor(n)
        end
        bit_lshift = function(n, bits)
            if (n < 0) then
                
                n = bit_not(math.abs(n)) + 1
            end
            for i = 1, bits do
                n = n * 2
            end
            return bit_and(n, 0xFFFFFFFF)
        end
    end
end
local function lei2str(i)
    local f = function(s)
        return char(bit_and(bit_rshift(i, s), 255))
    end
    return f(0) .. f(8) .. f(16) .. f(24)
end
local function str2bei(s)
    local v = 0
    for i = 1, #s do
        v = v * 256 + byte(s, i)
    end
    return v
end
local function str2lei(s)
    local v = 0
    for i = #s, 1, -1 do
        v = v * 256 + byte(s, i)
    end
    return v
end
local function cut_le_str(s, ...)
    local o, r = 1, {}
    local args = { ... }
    for i = 1, #args do
        table.insert(r, str2lei(sub(s, o, o + args[i] - 1)))
        o = o + args[i]
    end
    return r
end
local swap = function(w)
    return str2bei(lei2str(w))
end
local CONSTS = {
    0xd76aa478,
    0xe8c7b756,
    0x242070db,
    0xc1bdceee,
    0xf57c0faf,
    0x4787c62a,
    0xa8304613,
    0xfd469501,
    0x698098d8,
    0x8b44f7af,
    0xffff5bb1,
    0x895cd7be,
    0x6b901122,
    0xfd987193,
    0xa679438e,
    0x49b40821,
    0xf61e2562,
    0xc040b340,
    0x265e5a51,
    0xe9b6c7aa,
    0xd62f105d,
    0x02441453,
    0xd8a1e681,
    0xe7d3fbc8,
    0x21e1cde6,
    0xc33707d6,
    0xf4d50d87,
    0x455a14ed,
    0xa9e3e905,
    0xfcefa3f8,
    0x676f02d9,
    0x8d2a4c8a,
    0xfffa3942,
    0x8771f681,
    0x6d9d6122,
    0xfde5380c,
    0xa4beea44,
    0x4bdecfa9,
    0xf6bb4b60,
    0xbebfbc70,
    0x289b7ec6,
    0xeaa127fa,
    0xd4ef3085,
    0x04881d05,
    0xd9d4d039,
    0xe6db99e5,
    0x1fa27cf8,
    0xc4ac5665,
    0xf4292244,
    0x432aff97,
    0xab9423a7,
    0xfc93a039,
    0x655b59c3,
    0x8f0ccc92,
    0xffeff47d,
    0x85845dd1,
    0x6fa87e4f,
    0xfe2ce6e0,
    0xa3014314,
    0x4e0811a1,
    0xf7537e82,
    0xbd3af235,
    0x2ad7d2bb,
    0xeb86d391,
    0x67452301,
    0xefcdab89,
    0x98badcfe,
    0x10325476
}
local f = function(x, y, z)
    return bit_or(bit_and(x, y), bit_and(-x - 1, z))
end
local g = function(x, y, z)
    return bit_or(bit_and(x, z), bit_and(y, -z - 1))
end
local h = function(x, y, z)
    return bit_xor(x, bit_xor(y, z))
end
local i = function(x, y, z)
    return bit_xor(y, bit_or(x, -z - 1))
end
local z = function(ff, a, b, c, d, x, s, ac)
    a = bit_and(a + ff(b, c, d) + x + ac, 0xFFFFFFFF)
    
    return bit_or(bit_lshift(bit_and(a, bit_rshift(0xFFFFFFFF, s)), s), bit_rshift(a, 32 - s)) + b
end
local function transform(A, B, C, D, X)
    local a, b, c, d = A, B, C, D
    local t = CONSTS
    a = z(f, a, b, c, d, X[0], 7, t[1])
    d = z(f, d, a, b, c, X[1], 12, t[2])
    c = z(f, c, d, a, b, X[2], 17, t[3])
    b = z(f, b, c, d, a, X[3], 22, t[4])
    a = z(f, a, b, c, d, X[4], 7, t[5])
    d = z(f, d, a, b, c, X[5], 12, t[6])
    c = z(f, c, d, a, b, X[6], 17, t[7])
    b = z(f, b, c, d, a, X[7], 22, t[8])
    a = z(f, a, b, c, d, X[8], 7, t[9])
    d = z(f, d, a, b, c, X[9], 12, t[10])
    c = z(f, c, d, a, b, X[10], 17, t[11])
    b = z(f, b, c, d, a, X[11], 22, t[12])
    a = z(f, a, b, c, d, X[12], 7, t[13])
    d = z(f, d, a, b, c, X[13], 12, t[14])
    c = z(f, c, d, a, b, X[14], 17, t[15])
    b = z(f, b, c, d, a, X[15], 22, t[16])
    a = z(g, a, b, c, d, X[1], 5, t[17])
    d = z(g, d, a, b, c, X[6], 9, t[18])
    c = z(g, c, d, a, b, X[11], 14, t[19])
    b = z(g, b, c, d, a, X[0], 20, t[20])
    a = z(g, a, b, c, d, X[5], 5, t[21])
    d = z(g, d, a, b, c, X[10], 9, t[22])
    c = z(g, c, d, a, b, X[15], 14, t[23])
    b = z(g, b, c, d, a, X[4], 20, t[24])
    a = z(g, a, b, c, d, X[9], 5, t[25])
    d = z(g, d, a, b, c, X[14], 9, t[26])
    c = z(g, c, d, a, b, X[3], 14, t[27])
    b = z(g, b, c, d, a, X[8], 20, t[28])
    a = z(g, a, b, c, d, X[13], 5, t[29])
    d = z(g, d, a, b, c, X[2], 9, t[30])
    c = z(g, c, d, a, b, X[7], 14, t[31])
    b = z(g, b, c, d, a, X[12], 20, t[32])
    a = z(h, a, b, c, d, X[5], 4, t[33])
    d = z(h, d, a, b, c, X[8], 11, t[34])
    c = z(h, c, d, a, b, X[11], 16, t[35])
    b = z(h, b, c, d, a, X[14], 23, t[36])
    a = z(h, a, b, c, d, X[1], 4, t[37])
    d = z(h, d, a, b, c, X[4], 11, t[38])
    c = z(h, c, d, a, b, X[7], 16, t[39])
    b = z(h, b, c, d, a, X[10], 23, t[40])
    a = z(h, a, b, c, d, X[13], 4, t[41])
    d = z(h, d, a, b, c, X[0], 11, t[42])
    c = z(h, c, d, a, b, X[3], 16, t[43])
    b = z(h, b, c, d, a, X[6], 23, t[44])
    a = z(h, a, b, c, d, X[9], 4, t[45])
    d = z(h, d, a, b, c, X[12], 11, t[46])
    c = z(h, c, d, a, b, X[15], 16, t[47])
    b = z(h, b, c, d, a, X[2], 23, t[48])
    a = z(i, a, b, c, d, X[0], 6, t[49])
    d = z(i, d, a, b, c, X[7], 10, t[50])
    c = z(i, c, d, a, b, X[14], 15, t[51])
    b = z(i, b, c, d, a, X[5], 21, t[52])
    a = z(i, a, b, c, d, X[12], 6, t[53])
    d = z(i, d, a, b, c, X[3], 10, t[54])
    c = z(i, c, d, a, b, X[10], 15, t[55])
    b = z(i, b, c, d, a, X[1], 21, t[56])
    a = z(i, a, b, c, d, X[8], 6, t[57])
    d = z(i, d, a, b, c, X[15], 10, t[58])
    c = z(i, c, d, a, b, X[6], 15, t[59])
    b = z(i, b, c, d, a, X[13], 21, t[60])
    a = z(i, a, b, c, d, X[4], 6, t[61])
    d = z(i, d, a, b, c, X[11], 10, t[62])
    c = z(i, c, d, a, b, X[2], 15, t[63])
    b = z(i, b, c, d, a, X[9], 21, t[64])
    return bit_and(A + a, 0xFFFFFFFF), bit_and(B + b, 0xFFFFFFFF), bit_and(C + c, 0xFFFFFFFF), bit_and(
        D + d,
        0xFFFFFFFF
    )
end
local function md5_update(self, s)
    self.pos = self.pos + #s
    s = self.buf .. s
    for ii = 1, #s - 63, 64 do
        local X = cut_le_str(sub(s, ii, ii + 63), 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4)
        assert(#X == 16)
        X[0] = table.remove(X, 1) 
        self.a, self.b, self.c, self.d = transform(self.a, self.b, self.c, self.d, X)
    end
    self.buf = sub(s, math.floor(#s / 64) * 64 + 1, #s)
    return self
end
local function md5_finish(self)
    local msgLen = self.pos
    local padLen = 56 - msgLen % 64
    if msgLen % 64 > 56 then
        padLen = padLen + 64
    end
    if padLen == 0 then
        padLen = 64
    end
    local s = char(128) ..
        rep(char(0), padLen - 1) .. lei2str(bit_and(8 * msgLen, 0xFFFFFFFF)) .. lei2str(math.floor(msgLen / 0x20000000))
    md5_update(self, s)
    assert(self.pos % 64 == 0)
    return lei2str(self.a) .. lei2str(self.b) .. lei2str(self.c) .. lei2str(self.d)
end
function md5.new()
    return {
        a = CONSTS[65],
        b = CONSTS[66],
        c = CONSTS[67],
        d = CONSTS[68],
        pos = 0,
        buf = "",
        update = md5_update,
        finish = md5_finish
    }
end
function md5.tohex(s)
    return format(
        "%08x%08x%08x%08x",
        str2bei(sub(s, 1, 4)),
        str2bei(sub(s, 5, 8)),
        str2bei(sub(s, 9, 12)),
        str2bei(sub(s, 13, 16))
    )
end
function md5.sum(s)
    return md5.new():update(s):finish()
end
function md5.sumhexa(s)
    return md5.tohex(md5.sum(s))
end
hRuntime = {
    
    register = {
        unit = function(json)
            hslk.id2Value.unit[json.UNIT_ID] = json
            hslk.name2Value.unit[json.Name] = json
            if (json.CLASS_GROUP ~= nil) then
                if (hslk.class_group.unit[json.CLASS_GROUP] == nil) then
                    hslk.class_group.unit[json.CLASS_GROUP] = {}
                end
                table.insert(hslk.class_group.unit[json.CLASS_GROUP], json.UNIT_ID)
            end
        end,
        item = function(json)
            hslk.id2Value.item[json.ITEM_ID] = json
            hslk.name2Value.item[json.Name] = json
            if (json.CLASS_GROUP ~= nil) then
                if (hslk.class_group.item[json.CLASS_GROUP] == nil) then
                    hslk.class_group.item[json.CLASS_GROUP] = {}
                end
                table.insert(hslk.class_group.item[json.CLASS_GROUP], json.ITEM_ID)
            end
            if (json.cooldownID ~= nil) then
                hslk.item_cooldown_ids[json.cooldownID] = json.ITEM_ID
            end
            if (json.RING ~= nil) then
                json.RING.RING_ID = json.ITEM_ID
                json.RING.Name = json.Name
                hslk.id2Value.ring[json.ITEM_ID] = json.RING
                hslk.name2Value.ring[json.Name] = json.RING
            end
        end,
        ability = function(json)
            hslk.id2Value.ability[json.ABILITY_ID] = json
            hslk.name2Value.ability[json.Name] = json
            if (json.CLASS_GROUP ~= nil) then
                if (hslk.class_group.ability[json.CLASS_GROUP] == nil) then
                    hslk.class_group.ability[json.CLASS_GROUP] = {}
                end
                table.insert(hslk.class_group.ability[json.CLASS_GROUP], json.ABILITY_ID)
            end
            if (json.RING ~= nil) then
                json.RING.RING_ID = json.ABILITY_ID
                json.RING.Name = json.Name
                hslk.id2Value.ring[json.ABILITY_ID] = json.RING
                hslk.name2Value.ring[json.Name] = json.RING
            end
        end,
        technology = function(json)
            hslk.id2Value.technology[json.TECHNOLOGY_ID] = json
            hslk.name2Value.technology[json.Name] = json
            if (json.CLASS_GROUP ~= nil) then
                if (hslk.class_group.technology[json.CLASS_GROUP] == nil) then
                    hslk.class_group.technology[json.CLASS_GROUP] = {}
                end
                table.insert(hslk.class_group.technology[json.CLASS_GROUP], json.TECHNOLOGY_ID)
            end
        end,
        synthesis = function(json)
            
            
            local jsonFragment = {}
            for k, v in ipairs(json.fragment) do
                json.fragment[k][2] = math.floor(v[2])
                local fragmentId = hslk.name2Value.item[v[1]].ITEM_ID or nil
                if (fragmentId ~= nil) then
                    table.insert(jsonFragment, { fragmentId, v[2] })
                end
            end
            local profitId = hslk.name2Value.item[json.profit[1]].ITEM_ID or nil
            if (profitId == nil) then
                return
            end
            if (hslk.synthesis.profit[profitId] == nil) then
                hslk.synthesis.profit[profitId] = {}
            end
            table.insert(hslk.synthesis.profit[profitId], {
                qty = json.profit[2],
                fragment = jsonFragment,
            })
            local profitIndex = #hslk.synthesis.profit[profitId]
            for _, f in ipairs(jsonFragment) do
                if (hslk.synthesis.fragment[f[1]] == nil) then
                    hslk.synthesis.fragment[f[1]] = {}
                end
                if (hslk.synthesis.fragment[f[1]][f[2]] == nil) then
                    hslk.synthesis.fragment[f[1]][f[2]] = {}
                end
                table.insert(hslk.synthesis.fragment[f[1]][f[2]], {
                    profit = profitId,
                    index = profitIndex,
                })
            end
        end,
    },
    env = {},
    event = {
        
        register = {},
        
        pool = {},
    },
    textTag = {},
    rect = {},
    player = {},
    unit = {},
    group = {}, 
    hero = {},
    unit_type_ids = { 
        hero = {},
        courier_hero = {},
    },
    heroBuildSelection = {},
    skill = {
        silentUnits = {},
        silentTrigger = nil,
        unarmUnits = {},
        unarmTrigger = nil,
    },
    attributeGroup = {
        life_back = {},
        mana_back = {},
        punish = {}
    },
    item = {},
    itemPickPool = {},
    leaderBoard = {},
    multiBoard = {},
    dialog = {}
}
hRuntime.clear = function(handle)
    if (handle == nil) then
        return
    end
    if (hRuntime.env[handle] ~= nil) then
        hRuntime.env[handle] = nil
    end
    if (hRuntime.event[handle] ~= nil) then
        hRuntime.event[handle] = nil
    end
    if (hRuntime.event.register[handle] ~= nil) then
        hRuntime.event.register[handle] = nil
    end
    if (hRuntime.event.pool[handle] ~= nil) then
        for _, p in ipairs(hRuntime.event.pool[handle]) do
            local key = p.key
            local poolIndex = p.poolIndex
            hevent.POOL[key][poolIndex].stock = hevent.POOL[key][poolIndex].stock - 1
            
            if (hevent.POOL[key][poolIndex].stock == 0
                and hevent.POOL[key][poolIndex].count > 0.25 * hevent.POOL_RED_LINE) then
                cj.DisableTrigger(hevent.POOL[key][poolIndex].trigger)
                cj.DestroyTrigger(hevent.POOL[key][poolIndex].trigger)
                hevent.POOL[key][poolIndex] = -1
            end
            local e = 0
            for _, v in ipairs(hevent.POOL[key]) do
                if (v == -1) then
                    e = e + 1
                end
            end
            if (e == #hevent.POOL[key]) then
                hevent.POOL[key] = nil
            end
        end
        hRuntime.event.pool[handle] = nil
    end
    if (hRuntime.textTag[handle] ~= nil) then
        hRuntime.textTag[handle] = nil
    end
    if (hRuntime.rect[handle] ~= nil) then
        hRuntime.rect[handle] = nil
    end
    if (hRuntime.unit[handle] ~= nil) then
        hRuntime.unit[handle] = nil
    end
    if (table.includes(handle, hRuntime.group)) then
        table.delete(handle, hRuntime.group)
    end
    if (hRuntime.hero[handle] ~= nil) then
        hRuntime.hero[handle] = nil
    end
    if (hRuntime.heroBuildSelection[handle] ~= nil) then
        hRuntime.heroBuildSelection[handle] = nil
    end
    if (hRuntime.skill[handle] ~= nil) then
        hRuntime.skill[handle] = nil
        if (table.includes(handle, hRuntime.skill.silentUnits)) then
            table.delete(handle, hRuntime.skill.silentUnits)
        end
        if (table.includes(handle, hRuntime.skill.unarmUnits)) then
            table.delete(handle, hRuntime.skill.unarmUnits)
        end
    end
    if (hRuntime.item[handle] ~= nil) then
        hRuntime.item[handle] = nil
    end
    if (hRuntime.leaderBoard[handle] ~= nil) then
        hRuntime.leaderBoard[handle] = nil
    end
    if (hRuntime.multiBoard[handle] ~= nil) then
        hRuntime.multiBoard[handle] = nil
    end
    if (hRuntime.dialog[handle] ~= nil) then
        hRuntime.dialog[handle] = nil
    end
end
math.random = function(n, m)
    local func = cj.GetRandomReal
    if (n == nil or m == nil) then
        
        return math.floor((func(0.000, 1.000) * 100) + 0.5) * 0.01
    end
    if (n == m) then
        return n
    end
    local fn = string.find(tostring(n), "[.]", 0)
    local fm = string.find(tostring(m), "[.]", 0)
    if (type(fn) ~= "number" and type(fm) ~= "number") then
        func = cj.GetRandomInt
        n = math.floor(n)
        m = math.floor(m)
    end
    if (m < n) then
        return func(m, n)
    end
    return func(n, m)
end
math.polarProjection = function(x, y, dist, angle)
    local tx = x + dist * math.cos(angle * bj_DEGTORAD)
    local ty = y + dist * math.sin(angle * bj_DEGTORAD)
    local minX = cj.GetRectMinX(hrect.MAP_INITIAL_PLAYABLE_AREA)
    local minY = cj.GetRectMinY(hrect.MAP_INITIAL_PLAYABLE_AREA)
    local maxX = cj.GetRectMaxX(hrect.MAP_INITIAL_PLAYABLE_AREA)
    local maxY = cj.GetRectMaxY(hrect.MAP_INITIAL_PLAYABLE_AREA)
    if (tx < minX) then
        tx = minX
    elseif (tx > maxX) then
        tx = maxX
    end
    if (ty < minY) then
        ty = minY
    elseif (ty > maxY) then
        ty = maxY
    end
    return { x = tx, y = ty }
end
math.round = function(decimal)
    if (decimal == nil) then
        return 0.00
    end
    return math.floor((decimal * 100) + 0.5) * 0.01
end
math.numberFormat = function(value)
    if (value > 10000 * 100000000) then
        return string.format("%.2f", value / 10000 * 100000000) .. "T"
    elseif (value > 10 * 100000000) then
        return string.format("%.2f", value / 10 * 100000000) .. "B"
    elseif (value > 100 * 10000) then
        return string.format("%.2f", value / 100 * 10000) .. "M"
    elseif (value > 1000) then
        return string.format("%.2f", value / 1000) .. "K"
    else
        return string.format("%.2f", value)
    end
end
math.integerFormat = function(value)
    if (value > 10000 * 100000000) then
        return math.floor(value / 10000 * 100000000) .. "T"
    elseif (value > 10 * 100000000) then
        return math.floor(value / 10 * 100000000) .. "B"
    elseif (value > 100 * 10000) then
        return math.floor(value / 100 * 10000) .. "M"
    elseif (value > 1000) then
        return math.floor(value / 1000) .. "K"
    else
        return tostring(math.floor(value))
    end
end
math.getDegBetweenXY = function(x1, y1, x2, y2)
    return bj_RADTODEG * cj.Atan2(y2 - y1, x2 - x1)
end
math.getDegBetweenLoc = function(l1, l2)
    if (l1 == nil or l2 == nil) then
        return 0
    end
    return math.getDegBetweenXY(cj.GetLocationX(l1), cj.GetLocationY(l1), cj.GetLocationX(l2), cj.GetLocationY(l2))
end
math.getDegBetweenUnit = function(u1, u2)
    if (u1 == nil or u2 == nil) then
        return 0
    end
    return math.getDegBetweenXY(hunit.x(u1), hunit.y(u1), hunit.x(u2), hunit.y(u2))
end
math.getDistanceBetweenXY = function(x1, y1, x2, y2)
    local dx = x2 - x1
    local dy = y2 - y1
    return cj.SquareRoot(dx * dx + dy * dy)
end
math.getDistanceBetweenLoc = function(l1, l2)
    return math.getDistanceBetweenXY(cj.GetLocationX(l1), cj.GetLocationY(l1), cj.GetLocationX(l2), cj.GetLocationY(l2))
end
math.getDistanceBetweenUnit = function(u1, u2)
    return math.getDistanceBetweenXY(hunit.x(u1), hunit.y(u1), hunit.x(u2), hunit.y(u2))
end
math.getMaxDistanceInRect = function(w, h, deg)
    w = w or 0
    h = h or 0
    if (w <= 0 or h <= 0) then
        return
    end
    local distance = 0
    local lockDegA = (180 * cj.Atan(h / w)) / bj_PI
    local lockDegB = 90 - lockDegA
    if (deg == 0 or deg == 180 or deg == -180) then
        
        distance = w
    elseif (deg == 90 or deg == -90) then
        
        distance = h
    elseif (deg > 0 and deg <= lockDegA) then
        
        distance = w / 2 / math.cos(deg * bj_DEGTORAD)
    elseif (deg > lockDegA and deg < 90) then
        
        distance = h / 2 / math.cos(90 - deg * bj_DEGTORAD)
    elseif (deg > 90 and deg <= 90 + lockDegB) then
        
        distance = h / 2 / math.cos((deg - 90) * bj_DEGTORAD)
    elseif (deg > 90 + lockDegB and deg < 180) then
        
        distance = w / 2 / math.cos((180 - deg) * bj_DEGTORAD)
    elseif (deg < 0 and deg >= -lockDegA) then
        
        distance = w / 2 / math.cos(deg * bj_DEGTORAD)
    elseif (deg < lockDegA and deg > -90) then
        
        distance = h / 2 / math.cos((90 + deg) * bj_DEGTORAD)
    elseif (deg < -90 and deg >= -90 - lockDegB) then
        
        distance = h / 2 / math.cos((-deg - 90) * bj_DEGTORAD)
    elseif (deg < -90 - lockDegB and deg > -180) then
        
        distance = w / 2 / math.cos((180 + deg) * bj_DEGTORAD)
    end
    return distance
end
string.char2id = function(idChar)
    if (idChar == nil or type(idChar) ~= "string") then
        print_stack()
        return
    end
    local len = string.len(idChar)
    local id = 0
    for i = 1, len, 1 do
        if (i == 1) then
            id = string.byte(idChar, i)
        else
            id = id * 256 + string.byte(idChar, i)
        end
    end
    return id
end
string.id2char = function(id)
    if (id == nil or type(id) ~= "number") then
        print_stack()
        print(id)
        return
    end
    return string.char(id // 0x1000000)
        .. string.char(id // 0x10000 % 0x100)
        .. string.char(id // 0x100 % 0x100)
        .. string.char(id % 0x100)
end
string.mb_len = function(inputStr)
    local lenInByte = #inputStr
    local width = 0
    local i = 1
    while (i <= lenInByte) do
        local curByte = string.byte(inputStr, i)
        local byteCount = 1
        if curByte > 0 and curByte <= 127 then
            byteCount = 1 
        elseif curByte >= 192 and curByte < 223 then
            byteCount = 2 
        elseif curByte >= 224 and curByte < 239 then
            byteCount = 3 
        elseif curByte >= 240 and curByte <= 247 then
            byteCount = 4 
        end
        i = i + byteCount 
        width = width + 1 
    end
    return width
end
string.md5 = function(t)
    if (type(t) == "string") then
        return md5.sumhexa(t)
    elseif (type(t) == "table") then
        table.sort(t)
        return md5.sumhexa(json.stringify(t))
    end
    print_err("MD5 fail!")
    return
end
string.vkey = function(t)
    if (type(t) == "string") then
        return t
    elseif (type(t) == "table") then
        local j = ""
        if (#t > 0) then
            for _, v in ipairs(t) do
                if (type(v) == "table") then
                    v = "_T_"
                else
                    v = tostring(v)
                end
                j = j .. v
            end
        else
            j = "_"
        end
        return j
    end
end
string.addslashes = function(s)
    local in_char = { "\\", '"', "/", "\b", "\f", "\n", "\r", "\t" }
    local out_char = { "\\", '"', "/", "b", "f", "n", "r", "t" }
    for i, c in ipairs(in_char) do
        s = s:gsub(c, "\\" .. out_char[i])
    end
    return s
end
string.stripslashes = function(s)
    local in_char = { "\\", '"', "/", "b", "f", "n", "r", "t" }
    local out_char = { "\\", '"', "/", "\b", "\f", "\n", "\r", "\t" }
    for i, c in ipairs(in_char) do
        s = s:gsub("\\" .. c, out_char[i])
    end
    return s
end
string.base64Encode = function(source_str)
    local b64chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
    local s64 = ""
    local str = source_str
    while #str > 0 do
        local bytes_num = 0
        local buf = 0
        for byte_cnt = 1, 3 do
            buf = (buf * 256)
            if #str > 0 then
                buf = buf + string.byte(str, 1, 1)
                str = string.sub(str, 2)
                bytes_num = bytes_num + 1
            end
        end
        for group_cnt = 1, (bytes_num + 1) do
            local b64char = math.fmod(math.floor(buf / 262144), 64) + 1
            s64 = s64 .. string.sub(b64chars, b64char, b64char)
            buf = buf * 64
        end
        for fill_cnt = 1, (3 - bytes_num) do
            s64 = s64 .. "="
        end
    end
    return s64
end
string.base64Decode = function(str64)
    local b64chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
    local temp = {}
    for i = 1, 64 do
        temp[string.sub(b64chars, i, i)] = i
    end
    temp["="] = 0
    local str = ""
    for i = 1, #str64, 4 do
        if i > #str64 then
            break
        end
        local data = 0
        local str_count = 0
        for j = 0, 3 do
            local str1 = string.sub(str64, i + j, i + j)
            if not temp[str1] then
                return
            end
            if temp[str1] < 1 then
                data = data * 64
            else
                data = data * 64 + temp[str1] - 1
                str_count = str_count + 1
            end
        end
        for j = 16, 0, -8 do
            if str_count > 0 then
                str = str .. string.char(math.floor(data / math.pow(2, j)))
                data = math.mod(data, math.pow(2, j))
                str_count = str_count - 1
            end
        end
    end
    local last = tonumber(string.byte(str, string.len(str), string.len(str)))
    if last == 0 then
        str = string.sub(str, 1, string.len(str) - 1)
    end
    return str
end
string.explode = function(delimeter, str)
    local res = {}
    local start, start_pos, end_pos = 1, 1, 1
    while true do
        start_pos, end_pos = string.find(str, delimeter, start, true)
        if not start_pos then
            break
        end
        table.insert(res, string.sub(str, start, start_pos - 1))
        start = end_pos + 1
    end
    table.insert(res, string.sub(str, start))
    return res
end
string.implode = function(delimeter, table)
    local str = ""
    for _, v in ipairs(table) do
        if (str == "") then
            str = v
        else
            str = str .. delimeter .. v
        end
    end
    return str
end
string.strpos = function(str, pattern)
    if (str == nil or pattern == nil) then
        return false
    end
    local s = string.find(str, pattern, 0)
    if (type(s) == "number") then
        return s
    else
        return false
    end
end
string.findCount = function(str, pattern)
    if (str == nil or pattern == nil) then
        return
    end
    local s
    local e = 0
    local qty = 0
    while (true) do
        s, e = string.find(str, pattern, e + 1)
        if (s == nil) then
            break
        end
        qty = qty + 1
        if (e == nil) then
            break
        end
    end
    return qty
end
table.len = function(table)
    local len = 0
    for _, _ in pairs(table) do
        len = len + 1
    end
    return len
end
table.random = function(arr)
    local val
    if (#arr > 0) then
        val = arr[math.random(1, #arr)]
    else
        print_err()
    end
    return val
end
table.clone = function(org)
    local function copy(org1, res)
        for _, v in ipairs(org1) do
            if type(v) ~= "table" then
                table.insert(res, v)
            else
                local rl = #res + 1
                res[rl] = {}
                copy(v, res[rl])
            end
        end
    end
    local res = {}
    copy(org, res)
    return res
end
table.merge = function(...)
    local tempTable = {}
    local tables = { ... }
    if (tables == nil) then
        return {}
    end
    for _, tn in ipairs(tables) do
        if (type(tn) == "table") then
            for _, v in ipairs(tn) do
                table.insert(tempTable, v)
            end
        end
    end
    return tempTable
end
table.includes = function(val, arr)
    local isin = false
    if (val == nil or #arr <= 0) then
        return isin
    end
    for _, v in ipairs(arr) do
        if (v == val) then
            isin = true
            break
        end
    end
    return isin
end
table.delete = function(val, arr, qty)
    qty = qty or -1
    local q = 0
    for k, v in ipairs(arr) do
        if (v == val) then
            q = q + 1
            table.remove(arr, k)
            k = k - 1
            if (qty ~= -1 and q >= qty) then
                break
            end
        end
    end
end
table.obj2arr = function(obj, keyMap)
    if (keyMap == nil or type(keyMap) ~= "table" or #keyMap <= 0) then
        return {}
    end
    local arr = {}
    for _, a in ipairs(keyMap) do
        if (obj[a] ~= nil) then
            table.insert(
                arr,
                {
                    key = a,
                    value = obj[a]
                }
            )
        end
    end
    return arr
end
hColor = {
    
    
    
    
    mixed = function(str, color)
        if (str == nil or color == nil) then
            print_stack()
            return str
        end
        return "|cff" .. color .. str .. "|r"
    end
}
hColor.gold = function(str)
    return hColor.mixed(str, "ffcc00")
end
hColor.white = function(str)
    return hColor.mixed(str, "ffffff")
end
hColor.black = function(str)
    return hColor.mixed(str, "000000")
end
hColor.grey = function(str)
    return hColor.mixed(str, "c0c0c0")
end
hColor.greyDeep = function(str)
    return hColor.mixed(str, "969696")
end
hColor.redLight = function(str)
    return hColor.mixed(str, "ff8080")
end
hColor.red = function(str)
    return hColor.mixed(str, "ff3939")
end
hColor.greenLight = function(str)
    return hColor.mixed(str, "ccffcc")
end
hColor.green = function(str)
    return hColor.mixed(str, "80ff00")
end
hColor.yellowLight = function(str)
    return hColor.mixed(str, "ffffcc")
end
hColor.yellow = function(str)
    return hColor.mixed(str, "ffff00")
end
hColor.orangeLight = function(str)
    return hColor.mixed(str, "ffd88c")
end
hColor.orange = function(str)
    return hColor.mixed(str, "ffc24b")
end
hColor.skyLight = function(str)
    return hColor.mixed(str, "ccffff")
end
hColor.sky = function(str)
    return hColor.mixed(str, "80ffff")
end
hColor.seaLight = function(str)
    return hColor.mixed(str, "99ccff")
end
hColor.sea = function(str)
    return hColor.mixed(str, "00ccff")
end
hColor.purpleLight = function(str)
    return hColor.mixed(str, "ee82ee")
end
hColor.purple = function(str)
    return hColor.mixed(str, "ff59ff")
end
local HSLK_KEYS = {
    COMMON = 99,
    UNIT_TOKEN = 101,
    UNIT_TOKEN_LEAP = 102,
    UNIT_TOKEN_ALERT_CIRCLE = 103,
    UNIT_TREE = 104,
    SKILL_BREAK = 106,
    SKILL_SWIM_UNLIMIT = 107,
    SKILL_INVISIBLE = 108,
    SKILL_HERO_TAVERN_SELECTION = 109,
    UNIT_HERO_TAVERN = 110,
    UNIT_HERO_TAVERN_TOKEN = 111,
    UNIT_HERO_DEATH_TOKEN = 112,
    ITEM_FLEETING = 113,
    ATTR_STR_GREEN_ADD = 114,
    ATTR_STR_GREEN_SUB = 115,
    ATTR_AGI_GREEN_ADD = 116,
    ATTR_AGI_GREEN_SUB = 117,
    ATTR_INT_GREEN_ADD = 118,
    ATTR_INT_GREEN_SUB = 119,
    ATTR_ATTACK_GREEN_ADD = 120,
    ATTR_ATTACK_GREEN_SUB = 121,
    ATTR_ATTACK_WHITE_ADD = 122,
    ATTR_ATTACK_WHITE_SUB = 123,
    ATTR_ITEM_ATTACK_WHITE_ADD = 124,
    ATTR_ITEM_ATTACK_WHITE_SUB = 125,
    ATTR_ATTACK_SPEED_ADD = 126,
    ATTR_ATTACK_SPEED_SUB = 127,
    ATTR_DEFEND_ADD = 128,
    ATTR_DEFEND_SUB = 129,
    ATTR_MANA_ADD = 130,
    ATTR_MANA_SUB = 131,
    ATTR_LIFE_ADD = 132,
    ATTR_LIFE_SUB = 133,
    ATTR_AVOID_ADD = 134,
    ATTR_AVOID_SUB = 135,
    ATTR_SIGHT_ADD = 136,
    ATTR_SIGHT_SUB = 137,
    ENV_MODEL_NAME = 138,
    ENV_MODEL = 139,
}
hslk = {
    env_model = {},
    skill_break = {},
    skill_swim_unlimit = 0,
    skill_hero_tavern_selection = 0,
    unit_token = 0,
    unit_token_leap = 0,
    unit_token_alert_circle = 0,
    unit_hero_tavern = 0, 
    unit_hero_tavern_token = 0, 
    unit_hero_death_token = 0,
    id2Value = {
        unit = {},
        item = {},
        ability = {},
        technology = {},
        ring = {},
    },
    name2Value = {
        unit = {},
        item = {},
        ability = {},
        technology = {},
        ring = {},
    },
    class_group = {
        unit = {},
        item = {},
        ability = {},
        technology = {},
    },
    attr = {
        agi_green = {
            add = {},
            sub = {}
        },
        int_green = {
            add = {},
            sub = {}
        },
        str_green = {
            add = {},
            sub = {}
        },
        attack_green = {
            add = {},
            sub = {}
        },
        attack_white = {
            add = {},
            sub = {}
        },
        item_attack_white = {
            add = {},
            sub = {},
            items = {},
        },
        attack_speed = {
            add = {},
            sub = {}
        },
        defend = {
            add = {},
            sub = {}
        },
        life = {
            add = {},
            sub = {}
        },
        mana = {
            add = {},
            sub = {}
        },
        avoid = {
            add = 0,
            sub = 0
        },
        sight = {
            add = {},
            sub = {}
        },
        ablis_gradient = {},
        sight_gradient = {}
    },
    
    item_fleeting = {},
    
    item_cooldown_ids = {},
    
    synthesis = {
        profit = {},
        fragment = {},
    },
}
for dur = 1, 10, 1 do
    local swDur = dur * 0.05
    hslk.skill_break[swDur] = cj.LoadInteger(cg.hash_hslk, HSLK_KEYS.SKILL_BREAK, dur)
end
hslk.skill_swim_unlimit = cj.LoadInteger(cg.hash_hslk, HSLK_KEYS.COMMON, HSLK_KEYS.SKILL_SWIM_UNLIMIT)
hslk.skill_invisible = cj.LoadInteger(cg.hash_hslk, HSLK_KEYS.COMMON, HSLK_KEYS.SKILL_INVISIBLE)
hslk.skill_hero_tavern_selection = cj.LoadInteger(cg.hash_hslk, HSLK_KEYS.COMMON, HSLK_KEYS.SKILL_HERO_TAVERN_SELECTION)
hslk.unit_token = cj.LoadInteger(cg.hash_hslk, HSLK_KEYS.COMMON, HSLK_KEYS.UNIT_TOKEN)
hslk.unit_token_leap = cj.LoadInteger(cg.hash_hslk, HSLK_KEYS.COMMON, HSLK_KEYS.UNIT_TOKEN_LEAP)
hslk.unit_token_alert_circle = cj.LoadInteger(cg.hash_hslk, HSLK_KEYS.COMMON, HSLK_KEYS.UNIT_TOKEN_ALERT_CIRCLE)
hslk.unit_tree = cj.LoadInteger(cg.hash_hslk, HSLK_KEYS.COMMON, HSLK_KEYS.UNIT_TREE)
hslk.unit_hero_tavern = cj.LoadInteger(cg.hash_hslk, HSLK_KEYS.COMMON, HSLK_KEYS.UNIT_HERO_TAVERN)
hslk.unit_hero_tavern_token = cj.LoadInteger(cg.hash_hslk, HSLK_KEYS.COMMON, HSLK_KEYS.UNIT_HERO_TAVERN_TOKEN)
hslk.unit_hero_death_token = cj.LoadInteger(cg.hash_hslk, HSLK_KEYS.COMMON, HSLK_KEYS.UNIT_HERO_DEATH_TOKEN)
qty = cj.LoadInteger(cg.hash_hslk, HSLK_KEYS.ITEM_FLEETING, -1)
for i = 1, qty do
    table.insert(hslk.item_fleeting, cj.LoadInteger(cg.hash_hslk, HSLK_KEYS.ITEM_FLEETING, i))
end
qty = cj.LoadInteger(cg.hash_hslk, HSLK_KEYS.COMMON, HSLK_KEYS.ENV_MODEL)
for i = 1, qty do
    local key = cj.LoadStr(cg.hash_hslk, HSLK_KEYS.ENV_MODEL_NAME, i)
    local val = cj.LoadInteger(cg.hash_hslk, HSLK_KEYS.ENV_MODEL, i)
    hslk.env_model[key] = val
end
for i = 1, 9 do
    local val = math.floor(10 ^ (i - 1))
    table.insert(hslk.attr.ablis_gradient, val)
    hslk.attr.str_green.add[val] = cj.LoadInteger(cg.hash_hslk, HSLK_KEYS.ATTR_STR_GREEN_ADD, val)
    hslk.attr.str_green.sub[val] = cj.LoadInteger(cg.hash_hslk, HSLK_KEYS.ATTR_STR_GREEN_SUB, val)
    hslk.attr.agi_green.add[val] = cj.LoadInteger(cg.hash_hslk, HSLK_KEYS.ATTR_AGI_GREEN_ADD, val)
    hslk.attr.agi_green.sub[val] = cj.LoadInteger(cg.hash_hslk, HSLK_KEYS.ATTR_AGI_GREEN_SUB, val)
    hslk.attr.int_green.add[val] = cj.LoadInteger(cg.hash_hslk, HSLK_KEYS.ATTR_INT_GREEN_ADD, val)
    hslk.attr.int_green.sub[val] = cj.LoadInteger(cg.hash_hslk, HSLK_KEYS.ATTR_INT_GREEN_SUB, val)
    hslk.attr.attack_green.add[val] = cj.LoadInteger(cg.hash_hslk, HSLK_KEYS.ATTR_ATTACK_GREEN_ADD, val)
    hslk.attr.attack_green.sub[val] = cj.LoadInteger(cg.hash_hslk, HSLK_KEYS.ATTR_ATTACK_GREEN_SUB, val)
    hslk.attr.attack_white.add[val] = cj.LoadInteger(cg.hash_hslk, HSLK_KEYS.ATTR_ATTACK_WHITE_ADD, val)
    hslk.attr.attack_white.sub[val] = cj.LoadInteger(cg.hash_hslk, HSLK_KEYS.ATTR_ATTACK_WHITE_SUB, val)
    hslk.attr.item_attack_white.add[val] = cj.LoadInteger(cg.hash_hslk, HSLK_KEYS.ATTR_ITEM_ATTACK_WHITE_ADD, val)
    hslk.attr.item_attack_white.sub[val] = cj.LoadInteger(cg.hash_hslk, HSLK_KEYS.ATTR_ITEM_ATTACK_WHITE_SUB, val)
    table.insert(hslk.attr.item_attack_white.items, hslk.attr.item_attack_white.add[val])
    table.insert(hslk.attr.item_attack_white.items, hslk.attr.item_attack_white.sub[val])
    hslk.attr.attack_speed.add[val] = cj.LoadInteger(cg.hash_hslk, HSLK_KEYS.ATTR_ATTACK_SPEED_ADD, val)
    hslk.attr.attack_speed.sub[val] = cj.LoadInteger(cg.hash_hslk, HSLK_KEYS.ATTR_ATTACK_SPEED_SUB, val)
    hslk.attr.defend.add[val] = cj.LoadInteger(cg.hash_hslk, HSLK_KEYS.ATTR_DEFEND_ADD, val)
    hslk.attr.defend.sub[val] = cj.LoadInteger(cg.hash_hslk, HSLK_KEYS.ATTR_DEFEND_SUB, val)
    hslk.attr.life.add[val] = cj.LoadInteger(cg.hash_hslk, HSLK_KEYS.ATTR_LIFE_ADD, val)
    hslk.attr.life.sub[val] = cj.LoadInteger(cg.hash_hslk, HSLK_KEYS.ATTR_LIFE_SUB, val)
    hslk.attr.mana.add[val] = cj.LoadInteger(cg.hash_hslk, HSLK_KEYS.ATTR_MANA_ADD, val)
    hslk.attr.mana.sub[val] = cj.LoadInteger(cg.hash_hslk, HSLK_KEYS.ATTR_MANA_SUB, val)
end
hslk.attr.avoid.add = cj.LoadInteger(cg.hash_hslk, HSLK_KEYS.ATTR_AVOID_ADD, 0)
hslk.attr.avoid.sub = cj.LoadInteger(cg.hash_hslk, HSLK_KEYS.ATTR_AVOID_SUB, 0)
local sightBase = { 1, 2, 3, 4, 5 }
local si = 1
while (si <= 10000) do
    for _, v in ipairs(sightBase) do
        v = math.floor(v * si)
        table.insert(hslk.attr.sight_gradient, v)
        hslk.attr.sight.add[v] = cj.LoadInteger(cg.hash_hslk, HSLK_KEYS.ATTR_SIGHT_ADD, v)
        hslk.attr.sight.sub[v] = cj.LoadInteger(cg.hash_hslk, HSLK_KEYS.ATTR_SIGHT_SUB, v)
    end
    si = si * 10
end
table.sort(
    hslk.attr.sight_gradient,
    function(a, b)
        return a > b
    end
)
for i = 1, 5 do
    local qty = cj.LoadInteger(cg.hash_hslk_helper, 0, i)
    if (qty > 0) then
        for j = 1, qty do
            local js = cj.LoadStr(cg.hash_hslk_helper, i, j)
            local data = json.parse(js)
            if (data) then
                if (i == 1) then
                    hRuntime.register.item(data)
                elseif (i == 2) then
                    hRuntime.register.unit(data)
                    if (hRuntime.unit_type_ids[data.UNIT_TYPE] == nil) then
                        hRuntime.unit_type_ids[data.UNIT_TYPE] = {}
                    end
                    table.insert(hRuntime.unit_type_ids[data.UNIT_TYPE], data.UNIT_ID)
                elseif (i == 3) then
                    hRuntime.register.ability(data)
                elseif (i == 4) then
                    hRuntime.register.technology(data)
                end
            end
        end
        for j = 1, qty do
            local js = cj.LoadStr(cg.hash_hslk_helper, i, j)
            local data = json.parse(js)
            if (data) then
                if (i == 5) then
                    hRuntime.register.synthesis(data)
                end
            end
        end
    end
end
cj.FlushParentHashtable(cg.hash_hslk)
cj.FlushParentHashtable(cg.hash_hslk_helper)
hLuaF9 = function(allow)
    if (#allow < 1) then
        return
    end
    if (table.includes('all', allow) or table.includes('hlua', allow)) then
        hquest.create({
            side = "right",
            title = "h-lua",
            icon = "ReplaceableTextures\\CommandButtons\\BTNTomeOfRetraining.blp",
            content = {
                "h-lua完全独立，支持使用lua的平台运行，不依赖其他API（如JAPI、DzApi）",
                "包含多样丰富的属性系统，可以轻松做出平时难以甚至不能做出的地图效果",
                "内置多达几十种以上的自定义事件，轻松实现神奇的主动和被动效果",
                "自带物品合成，免去自行编写的困惑。丰富的自定义技能模板",
                "镜头、单位组、过滤器、背景音乐、天气等也应有尽有",
                "想要了解更多，官方QQ群：325338043 官网教程：hlua.book.hunzsig.org",
            },
        })
    end
    
    if (table.includes('all', allow) or table.includes('apm', allow)) then
        hquest.create({
            side = "right",
            title = "查看你的APM数值",
            icon = "ReplaceableTextures\\CommandButtons\\BTNTomeOfRetraining.blp",
            content = "-apm 查看你的APM数值"
        })
    end
    
    if (table.includes('all', allow) or table.includes('sight', allow)) then
        hquest.create({
            side = "right",
            title = "调整你的视距",
            icon = "ReplaceableTextures\\CommandButtons\\BTNTomeOfRetraining.blp",
            content = {
                "+[number] 增加视距",
                "-[number] 减少视距",
                " ! 视距自动设置上下限，请放心设置"
            }
        })
    end
    
    if (table.includes('all', allow) or table.includes('eff', allow)) then
        hquest.create({
            side = "right",
            title = "开关特效[单人]",
            icon = "ReplaceableTextures\\CommandButtons\\BTNTomeOfRetraining.blp",
            content = {
                "-eff 开关特效",
                "这个命令只有在单人时有效，可关闭大部分的特效",
            }
        })
    end
    
    if (table.includes('all', allow) or table.includes('hero', allow)) then
        hquest.create({
            side = "right",
            title = "选择英雄指令",
            icon = "ReplaceableTextures\\CommandButtons\\BTNTomeOfRetraining.blp",
            content = {
                "当地图可以自主选择英雄时：",
                "-random 随机选择",
                "-repick 重新选择",
            }
        })
    end
    
    if (table.includes('all', allow) or table.includes('apc', allow)) then
        hquest.create({
            side = "right",
            title = "设定自动转金为木",
            icon = "ReplaceableTextures\\CommandButtons\\BTNTomeOfRetraining.blp",
            content = {
                "-apc 设定是否自动转换黄金为木头",
                "-获得黄金超过100万时，自动按照比率转换多余的部分为木头",
                "-如果超过时没有开启，会寄存下来，待开启再转换(上限1000万)",
                "-n转换需要额外超过限度才生效",
            }
        })
    end
end
echo = function(msg, whichPlayer, duration, x, y)
    duration = duration or 0
    x = x or 0
    y = y or 0
    if (whichPlayer == nil) then
        for i = 0, bj_MAX_PLAYERS - 1, 1 do
            if (duration == nil or duration < 5) then
                cj.DisplayTextToPlayer(cj.Player(i), x, y, msg)
            else
                cj.DisplayTimedTextToPlayer(cj.Player(i), x, y, duration, msg)
            end
        end
    else
        if (duration < 5) then
            cj.DisplayTextToPlayer(whichPlayer, x, y, msg)
        else
            cj.DisplayTimedTextToPlayer(whichPlayer, x, y, duration, msg)
        end
    end
end
hdzapi = {
    enable = (cg.HLUA_DZAPI_FLAG == true),
    tips_showed = false,
    commandHashCache = {},
    mallItemCheater = {},
    tallocStatus = {
        index = 0,
        queue = {},
    },
    
    commandHash = function(command)
        if (hdzapi.commandHashCache[command] == nil) then
            hdzapi.commandHashCache[command] = cj.StringHash(command)
        end
        return hdzapi.commandHashCache[command]
    end,
    
    talloc = function()
        local index = -1
        local i = hdzapi.tallocStatus.index + 1
        if (i > cg.Hlua_DzAPI_Tgr_count) then
            i = 1
        end
        if (hdzapi.tallocStatus.queue[i] == nil) then
            hdzapi.tallocStatus.queue[i] = {
                status = false,
                result = nil
            }
        end
        if (hdzapi.tallocStatus.queue[i].status == false) then
            index = i
        else
            for j = 1, cg.Hlua_DzAPI_Tgr_count do
                if (hdzapi.tallocStatus.queue[j].status == false) then
                    index = j
                    break
                end
            end
        end
        if (index == -1) then
            print_err("Need more DZapi trigger")
            return
        end
        hdzapi.tallocStatus.queue[index].status = true
        hdzapi.tallocStatus.queue[index].result = nil
        return cg['Hlua_DzAPI_Tgr_' .. index], index
    end,
    
    exec = function(command, ...)
        if (hdzapi.enable ~= true) then
            if (hdzapi.tips_showed == false) then
                print("Copy ./plugin/dzapi.jass For Dzapi.lua")
                hdzapi.tips_showed = true
            end
            return
        end
        local whichPlayer = select("1", ...)
        local key = select("2", ...)
        local data = select("3", ...)
        if (whichPlayer ~= nil and his.playing(whichPlayer) == false) then
            return
        end
        local tgr, tIndex = hdzapi.talloc()
        local tid = cj.GetHandleId(tgr)
        cj.SaveStr(cg.hash_hlua_dzapi, tid, cg.HLDK_COMMAND, command)
        if (whichPlayer ~= nil) then
            cj.SavePlayerHandle(cg.hash_hlua_dzapi, tid, cg.HLDK_PLAYER, whichPlayer)
        end
        if (key ~= nil) then
            cj.SaveStr(cg.hash_hlua_dzapi, tid, cg.HLDK_KEY, key)
        end
        if (data ~= nil) then
            cj.SaveStr(cg.hash_hlua_dzapi, tid, cg.HLDK_DATA, data)
        end
        cj.TriggerExecute(tgr)
        local res = cj.LoadStr(cg.hash_hlua_dzapi, tid, cg.HLDK_RESULT)
        hdzapi.tallocStatus.queue[tIndex].status = false
        hdzapi.tallocStatus.queue[tIndex].command = command
        hdzapi.tallocStatus.queue[tIndex].result = res
        if (type(res) == "string") then
            return res
        end
    end
}
hdzapi.isVipRed = function(whichPlayer)
    return hdzapi.exec("IsRedVIP", whichPlayer) == "1"
end
hdzapi.isVipBlue = function(whichPlayer)
    return hdzapi.exec("IsBlueVIP", whichPlayer) == "1"
end
hdzapi.mapLv = function(whichPlayer)
    local lv = hdzapi.exec("GetMapLevel", whichPlayer)
    if (lv == nil or lv == "") then
        lv = 1
    else
        lv = math.floor(lv)
    end
    if (lv < 1) then
        lv = 1
    end
    return lv
end
hdzapi.hasMallItem = function(whichPlayer, key)
    if (whichPlayer == nil or key == nil) then
        return false
    end
    if (hdzapi.mallItemCheater[whichPlayer] == true) then
        return true
    end
    key = string.upper(key)
    return hdzapi.exec("HasMallItem", whichPlayer, key) == "1"
end
hdzapi.setMallItemCheater = function(whichPlayer)
    if (whichPlayer == nil) then
        return
    end
    hdzapi.mallItemCheater[whichPlayer] = true
end
hdzapi.server = {}
hdzapi.server.ready = function(whichPlayer)
    return hdzapi.exec("GetPlayerServerValueSuccess", whichPlayer) == "1"
end
hdzapi.setRoomStat = function(whichPlayer, key, text)
    if (hdzapi.server.ready(whichPlayer) == true) then
        hdzapi.exec("Stat_SetStat", whichPlayer, tostring(key), tostring(text))
    end
end
hdzapi.server.save = function(whichPlayer, key, data)
    if (data == nil) then
        return
    end
    if (hdzapi.server.ready(whichPlayer) == true) then
        hdzapi.exec("SaveServerValue", whichPlayer, key, tostring(data))
    end
end
hdzapi.server.load = function(whichPlayer, key)
    if (hdzapi.server.ready(whichPlayer) == true) then
        return hdzapi.exec("GetServerValue", whichPlayer, key)
    end
end
hdzapi.server.clear = {
    int = function(whichPlayer, key)
        hdzapi.server.save(whichPlayer, "I" .. key, "")
    end,
    real = function(whichPlayer, key)
        hdzapi.server.save(whichPlayer, "R" .. key, "")
    end,
    bool = function(whichPlayer, key)
        hdzapi.server.save(whichPlayer, "B" .. key, "")
    end,
    str = function(whichPlayer, key)
        hdzapi.server.save(whichPlayer, "S" .. key, "")
    end,
    unit = function(whichPlayer, key)
        hdzapi.server.save(whichPlayer, "S" .. key, "")
    end,
    item = function(whichPlayer, key)
        hdzapi.server.save(whichPlayer, "S" .. key, "")
    end
}
hdzapi.server.set = {
    int = function(whichPlayer, key, data)
        hdzapi.server.save(whichPlayer, "I" .. key, data or 0)
    end,
    real = function(whichPlayer, key, data)
        hdzapi.server.save(whichPlayer, "R" .. key, data or 0)
    end,
    bool = function(whichPlayer, key, data)
        local b = "0"
        if (data == true) then
            b = "1"
        end
        hdzapi.server.save(whichPlayer, "B" .. key, b)
    end,
    str = function(whichPlayer, key, data)
        hdzapi.server.save(whichPlayer, "S" .. key, data)
    end,
    unit = function(whichPlayer, key, data)
        hdzapi.server.save(whichPlayer, "S" .. key, hunit.getId(data))
    end,
    item = function(whichPlayer, key, data)
        hdzapi.server.save(whichPlayer, "S" .. key, hitem.getId(data))
    end
}
hdzapi.server.get = {
    int = function(whichPlayer, key)
        local val = hdzapi.server.load(whichPlayer, "I" .. key) or 0
        if (val == "") then
            val = 0
        end
        return math.floor(val)
    end,
    real = function(whichPlayer, key)
        local val = hdzapi.server.load(whichPlayer, "R" .. key) or 0
        if (val == "") then
            val = 0
        end
        return math.round(val)
    end,
    bool = function(whichPlayer, key)
        local b = hdzapi.server.load(whichPlayer, "B" .. key)
        if (b == "1") then
            return true
        end
        return false
    end,
    str = function(whichPlayer, key)
        return hdzapi.server.load(whichPlayer, "S" .. key) or ""
    end,
    unit = function(whichPlayer, key)
        local id = hdzapi.server.load(whichPlayer, "S" .. key) or ""
        if (string.len(id) > 0) then
            return string.char2id(id)
        end
        return nil
    end,
    item = function(whichPlayer, key)
        local id = hdzapi.server.load(whichPlayer, "S" .. key) or ""
        if (string.len(id) > 0) then
            return string.char2id(id)
        end
        return nil
    end
}
htime = {
    
    count = 0,
    
    hour = 0,
    
    min = 0,
    
    sec = 0,
    
    pool = {},
    
    kernel = {},
    
    reflect = {},
}
htime.clock = function()
    htime.count = htime.count + 1
    htime.sec = htime.sec + 1
    if (htime.sec >= 60) then
        htime.sec = 0
        htime.min = htime.min + 1
        if (htime.min >= 60) then
            htime.hour = htime.hour + 1
            htime.min = 0
        end
    end
end
htime.his = function()
    local str = ""
    if (htime.hour < 10) then
        str = str .. "0" .. htime.hour
    else
        str = str .. htime.hour
    end
    str = str .. ":"
    if (htime.min < 10) then
        str = str .. "0" .. htime.min
    else
        str = str .. htime.min
    end
    str = str .. ":"
    if (htime.sec < 10) then
        str = str .. "0" .. htime.sec
    else
        str = str .. htime.sec
    end
    return str
end
htime.timerInPool = function()
    local t
    local td
    for _, v in ipairs(htime.pool) do
        if (v.free == true) then
            v.free = false
            t = v.timer
            td = v.dialog
            break
        end
    end
    if (t == nil) then
        t = cj.CreateTimer()
        td = cj.CreateTimerDialog(t)
        table.insert(
            htime.pool,
            {
                free = false,
                timer = t,
                dialog = td
            }
        )
    end
    return { t, td }
end
htime.timerInKernel = function(time, yourFunc, isInterval)
    local space = 0
    if (time >= 500) then
        space = 1
    elseif (time >= 100) then
        space = 0.5
    elseif (time >= 10) then
        space = 0.2
    elseif (time >= 1) then
        space = 0.1
    elseif (time >= 0.1) then
        space = 0.05
    else
        space = 0.01
    end
    if (type(isInterval) ~= "boolean") then
        isInterval = false
    end
    if (htime.kernel[space] == nil) then
        htime.kernel[space] = {}
        local t = cj.CreateTimer()
        cj.TimerStart(
            t,
            space,
            true,
            function()
                for k, v in ipairs(htime.kernel[space]) do
                    if (v.running == true) then
                        v.remain = v.remain - space
                        if (v.remain <= 0) then
                            v.yourFunc(string.implode("_", { space, k }))
                            if (v.isInterval == true) then
                                v.remain = v.set
                            else
                                
                                v.running = false
                            end
                        end
                    end
                end
            end
        )
    end
    local kernelClock = -1
    for k, v in ipairs(htime.kernel[space]) do
        if (v.running == false) then
            kernelClock = k
            break
        end
    end
    if (kernelClock == -1) then
        table.insert(
            htime.kernel[space],
            {
                running = true,
                isInterval = isInterval,
                set = time,
                remain = time,
                yourFunc = yourFunc,
            }
        )
        kernelClock = #htime.kernel[space]
    else
        htime.kernel[space][kernelClock] = {
            running = true,
            isInterval = isInterval,
            set = time,
            remain = time,
            yourFunc = yourFunc
        }
    end
    return string.implode("_", { space, kernelClock })
end
htime.kernelInfo = function(t)
    local index = string.explode("_", t)
    local space = tonumber(index[1])
    local k = tonumber(index[2])
    return { space, k }
end
htime.getSetTime = function(t)
    local k = htime.kernelInfo(t)
    return htime.kernel[k[1]][k[2]].set
end
htime.getRemainTime = function(t)
    local k = htime.kernelInfo(t)
    return htime.kernel[k[1]][k[2]].remain
end
htime.getElapsedTime = function(t)
    local k = htime.kernelInfo(t)
    local set = htime.kernel[k[1]][k[2]].set
    local remain = htime.kernel[k[1]][k[2]].remain
    return set - remain
end
htime.delTimer = function(t)
    if (t == nil) then
        return
    end
    
    if (htime.reflect[t] ~= nil) then
        cj.PauseTimer(htime.reflect[t])
        for _, v in ipairs(htime.pool) do
            if (htime.reflect[t] == v.timer) then
                cj.TimerDialogDisplay(v.dialog, false)
                v.free = true
                break
            end
        end
        htime.reflect[t] = nil
    end
    local k = htime.kernelInfo(t)
    if (htime.kernel[k[1]] ~= nil and htime.kernel[k[1]][k[2]] ~= nil) then
        htime.kernel[k[1]][k[2]].running = false
    end
end
htime.setTimeout = function(frequency, yourFunc, title)
    local t = htime.timerInKernel(frequency, yourFunc, false)
    if (title ~= nil) then
        local pool = htime.timerInPool()
        local t2 = pool[1]
        local td = pool[2]
        cj.TimerDialogSetTitle(td, title)
        cj.TimerDialogDisplay(td, true)
        cj.TimerStart(t2, frequency, false, nil)
        htime.reflect[t] = t2
    end
    return t
end
htime.setInterval = function(frequency, yourFunc, title)
    local t = htime.timerInKernel(frequency, yourFunc, true)
    if (title ~= nil) then
        local pool = htime.timerInPool()
        local t2 = pool[1]
        local td = pool[2]
        cj.TimerDialogSetTitle(td, title)
        cj.TimerDialogDisplay(td, true)
        cj.TimerStart(t2, frequency, true, nil)
        htime.reflect[t] = t2
        print_r(htime.reflect)
    end
    return t
end
his = {}
his.night = function()
    return (cj.GetFloatGameState(GAME_STATE_TIME_OF_DAY) <= 6.00 or cj.GetFloatGameState(GAME_STATE_TIME_OF_DAY) >= 18.00)
end
his.day = function()
    return (cj.GetFloatGameState(GAME_STATE_TIME_OF_DAY) > 6.00 and cj.GetFloatGameState(GAME_STATE_TIME_OF_DAY) < 18.00)
end
his.computer = function(whichPlayer)
    return cj.GetPlayerController(whichPlayer) == MAP_CONTROL_COMPUTER
        or cj.GetPlayerSlotState(whichPlayer) ~= PLAYER_SLOT_STATE_PLAYING
end
his.playerSite = function(whichPlayer)
    return cj.GetPlayerController(whichPlayer) == MAP_CONTROL_USER
end
his.playing = function(whichPlayer)
    return cj.GetPlayerSlotState(whichPlayer) == PLAYER_SLOT_STATE_PLAYING
end
his.neutral = function(whichPlayer)
    local flag = false
    if (whichPlayer == nil) then
        flag = false
    elseif (whichPlayer == cj.Player(PLAYER_NEUTRAL_AGGRESSIVE)) then
        flag = true
    elseif (whichPlayer == cj.Player(bj_PLAYER_NEUTRAL_VICTIM)) then
        flag = true
    elseif (whichPlayer == cj.Player(bj_PLAYER_NEUTRAL_EXTRA)) then
        flag = true
    elseif (whichPlayer == cj.Player(PLAYER_NEUTRAL_PASSIVE)) then
        flag = true
    end
    return flag
end
his.detected = function(whichUnit, whichPlayer)
    local flag = false
    if (whichUnit == nil or whichPlayer == nil) then
        flag = false
    elseif (cj.IsUnitDetected(whichUnit, whichPlayer) == true) then
        flag = true
    end
    return flag
end
his.hasSlot = function(whichUnit, slotId)
    if (slotId == nil) then
        slotId = hitem.DEFAULT_SKILL_ITEM_SLOT
    end
    return cj.GetUnitAbilityLevel(whichUnit, slotId) >= 1
end
his.dead = function(whichUnit)
    return cj.GetUnitState(whichUnit, UNIT_STATE_LIFE) <= 0
end
his.alive = function(whichUnit)
    return cj.GetUnitState(whichUnit, UNIT_STATE_LIFE) > 0
end
his.deleted = function(whichUnit)
    return cj.GetUnitName(whichUnit) == nil
end
his.invincible = function(whichUnit)
    return cj.GetUnitAbilityLevel(whichUnit, hskill.BUFF_INVULNERABLE) > 0
end
his.invisible = function(whichUnit)
    return cj.GetUnitAbilityLevel(whichUnit, hskill.SKILL_INVISIBLE) > 0
end
his.hero = function(whichUnit)
    local uid = hunit.getId(whichUnit)
    return cj.IsUnitType(whichUnit, UNIT_TYPE_HERO)
        or table.includes(uid, hRuntime.unit_type_ids.hero) == true
        or table.includes(uid, hRuntime.unit_type_ids.courier_hero) == true
end
his.structure = function(whichUnit)
    return cj.IsUnitType(whichUnit, UNIT_TYPE_STRUCTURE)
end
his.illusion = function(whichUnit)
    return cj.IsUnitIllusion(whichUnit)
end
his.ground = function(whichUnit)
    return cj.IsUnitType(whichUnit, UNIT_TYPE_GROUND)
end
his.air = function(whichUnit)
    return cj.IsUnitType(whichUnit, UNIT_TYPE_FLYING)
end
his.melee = function(whichUnit)
    return cj.IsUnitType(whichUnit, UNIT_TYPE_MELEE_ATTACKER)
end
his.ranged = function(whichUnit)
    return cj.IsUnitType(whichUnit, UNIT_TYPE_MELEE_ATTACKER)
end
his.summoned = function(whichUnit)
    return cj.IsUnitType(whichUnit, UNIT_TYPE_SUMMONED)
end
his.mechanical = function(whichUnit)
    return cj.IsUnitType(whichUnit, UNIT_TYPE_MECHANICAL)
end
his.ancient = function(whichUnit)
    return cj.IsUnitType(whichUnit, UNIT_TYPE_ANCIENT)
end
his.sapper = function(whichUnit)
    return cj.IsUnitType(whichUnit, UNIT_TYPE_SAPPER)
end
his.locust = function(whichUnit)
    return cj.GetUnitAbilityLevel(whichUnit, string.char2id("Aloc")) > 0
end
his.swim = function(whichUnit)
    return hunit.get(whichUnit, "isSwim", false)
end
his.punish = function(whichUnit)
    return hunit.get(whichUnit, "isPunishing", false)
end
his.silent = function(whichUnit)
    return hunit.get(whichUnit, "isSilent", false)
end
his.unarm = function(whichUnit)
    return hunit.get(whichUnit, "isUnArm", false)
end
his.crackFly = function(whichUnit)
    return hunit.get(whichUnit, "isCrackFly", false)
end
his.beDamaging = function(whichUnit)
    return hunit.get(whichUnit, "isBeDamaging", false)
end
his.damaging = function(whichUnit)
    return hunit.get(whichUnit, "isDamaging", false)
end
his.water = function(whichUnit)
    return cj.IsTerrainPathable(hunit.x(whichUnit), hunit.y(whichUnit), PATHING_TYPE_FLOATABILITY) == false
end
his.floor = function(whichUnit)
    return cj.IsTerrainPathable(hunit.x(whichUnit), hunit.y(whichUnit), PATHING_TYPE_FLOATABILITY) == true
end
his.unit = function(whichUnit, otherUnit)
    return cj.IsUnit(whichUnit, otherUnit)
end
his.enemy = function(whichUnit, otherUnit)
    return cj.IsUnitEnemy(whichUnit, hunit.getOwner(otherUnit))
end
his.ally = function(whichUnit, otherUnit)
    return cj.IsUnitAlly(whichUnit, hunit.getOwner(otherUnit))
end
his.behind = function(u1, u2, maxDistance)
    if (his.alive(u1) == false or his.alive(u2) == false) then
        return false
    end
    maxDistance = maxDistance or 99999
    if (math.getDistanceBetweenUnit(u1, u2) > maxDistance) then
        return false
    end
    local fac1 = hunit.getFacing(u1)
    local fac2 = hunit.getFacing(u2)
    return math.abs(fac1 - fac2) <= 50
end
his.face = function(u1, u2, maxDistance)
    if (his.alive(u1) == false or his.alive(u2) == false) then
        return false
    end
    maxDistance = maxDistance or 99999
    if (math.getDistanceBetweenUnit(u1, u2) > maxDistance) then
        return false
    end
    local fac1 = hunit.getFacing(u1)
    local fac2 = hunit.getFacing(u2)
    return math.abs((math.abs(fac1 - fac2) - 180)) <= 50
end
his.enemyPlayer = function(whichUnit, whichPlayer)
    return cj.IsUnitEnemy(whichUnit, whichPlayer)
end
his.allyPlayer = function(whichUnit, whichPlayer)
    return cj.IsUnitAlly(whichUnit, whichPlayer)
end
his.inRect = function(whichRect, x, y)
    return (x < cj.GetRectMaxX(whichRect) and x > cj.GetRectMinX(whichRect) and y < cj.GetRectMaxY(whichRect) and y > cj.GetRectMinY(whichRect))
end
his.borderRect = function(whichRect, x, y)
    local flag = false
    if (x >= cj.GetRectMaxX(whichRect) or x <= cj.GetRectMinX(whichRect)) then
        flag = true
    end
    if (y >= cj.GetRectMaxY(whichRect) or y <= cj.GetRectMinY(whichRect)) then
        return true
    end
    return flag
end
his.borderMap = function(x, y)
    return his.borderRect(hrect.MAP_INITIAL_PLAYABLE_AREA, x, y)
end
his.borderCamera = function(x, y)
    return his.borderRect(his.MAP_CAMERA_AREA, x, y)
end
his.ownItem = function(whichUnit, whichItemId)
    local f = false
    if (type(whichItemId) == "string") then
        whichItemId = string.char2id(whichItemId)
    end
    for i = 0, 5, 1 do
        local it = cj.UnitItemInSlot(whichUnit, i)
        if (it ~= nil and cj.GetItemTypeId(it) == whichItemId) then
            f = true
            break
        end
    end
    return f
end
hsound = {
    BREAK_DELAY = 3
}
hsound.sound = function(s)
    if (s ~= nil) then
        cj.StartSound(s)
    end
end
hsound.sound2Player = function(s, whichPlayer)
    if (s ~= nil and cj.GetLocalPlayer() == whichPlayer) then
        cj.StartSound(s)
    end
end
hsound.sound2Unit = function(s, volumePercent, u)
    if (s ~= nil) then
        cj.AttachSoundToUnit(s, u)
        cj.SetSoundVolume(s, math.floor(volumePercent * 127 * 0.01))
        cj.StartSound(s)
    end
end
hsound.sound2XYZ = function(s, x, y, z)
    if (s ~= nil) then
        cj.SetSoundPosition(s, x, y, z)
    end
end
hsound.sound2Rect = function(s, whichRect, during)
    if (s ~= nil) then
        during = during or 0
        local width = cj.GetRectMaxX(whichRect) - cj.GetRectMinX(whichRect)
        local height = cj.GetRectMaxY(whichRect) - cj.GetRectMinY(whichRect)
        cj.SetSoundPosition(s, cj.GetRectCenterX(whichRect), cj.GetRectCenterY(whichRect), 0)
        cj.RegisterStackedSound(s, true, width, height)
        if (during > 0) then
            htime.setTimeout(during, function(curTimer)
                htime.delTimer(curTimer)
                cj.UnregisterStackedSound(s, true, width, height)
            end)
        end
    end
end
hsound.bgmStop = function(whichPlayer)
    if (whichPlayer == nil) then
        for i = 1, bj_MAX_PLAYERS, 1 do
            hplayer.set(hplayer.players[i], 'bgmCurrent', nil)
        end
        cj.StopMusic(true)
    else
        hplayer.set(whichPlayer, 'bgmCurrent', nil)
        if (cj.GetLocalPlayer() == whichPlayer) then
            cj.StopMusic(true)
        end
    end
end
hsound.bgm = function(musicFileName, whichPlayer)
    if (musicFileName ~= nil and string.len(musicFileName) > 0) then
        if (whichPlayer ~= nil) then
            local bgmCurrent = hplayer.get(whichPlayer, 'bgmCurrent', nil)
            local bgmDelayTimer = hplayer.get(whichPlayer, 'bgmDelayTimer', nil)
            if (bgmCurrent == musicFileName) then
                return
            end
            if (bgmDelayTimer ~= nil) then
                htime.delTimer(bgmDelayTimer)
                hplayer.set(whichPlayer, 'bgmDelayTimer', nil)
            end
            hsound.bgmStop(whichPlayer)
            hplayer.set(whichPlayer, 'bgmCurrent', musicFileName)
            hplayer.set(whichPlayer, 'bgmDelayTimer', htime.setTimeout(
                hsound.BREAK_DELAY,
                function(t)
                    htime.delTimer(t)
                    hplayer.set(whichPlayer, 'bgmDelayTimer', nil)
                    if (cj.GetLocalPlayer() == whichPlayer) then
                        cj.PlayMusic(bgmCurrent)
                    end
                end
            ))
        else
            hsound.bgmStop()
            for i = 1, bj_MAX_PLAYERS, 1 do
                local bgmCurrent = hplayer.get(hplayer.players[i], 'bgmCurrent', nil)
                local bgmDelayTimer = hplayer.get(hplayer.players[i], 'bgmDelayTimer', nil)
                if (bgmCurrent ~= musicFileName) then
                    if (bgmDelayTimer ~= nil) then
                        htime.delTimer(bgmDelayTimer)
                        hplayer.set(hplayer.players[i], 'bgmDelayTimer', nil)
                    end
                    hplayer.set(hplayer.players[i], 'bgmCurrent', musicFileName)
                    hplayer.set(hplayer.players[i], 'bgmDelayTimer', htime.setTimeout(
                        hsound.BREAK_DELAY,
                        function(t)
                            htime.delTimer(t)
                            hplayer.set(hplayer.players[i], 'bgmDelayTimer', nil)
                            if (cj.GetLocalPlayer() == hplayer.players[i]) then
                                cj.PlayMusic(musicFileName)
                            end
                        end
                    ))
                end
            end
        end
    end
end
htexture = {
    
    TEXTURE_ALERT_CIRCLE_TOKEN = hslk.unit_token_alert_circle,
    
    DEFAULT_MARKS = {
        WHITE = "ReplaceableTextures\\CameraMasks\\White_mask.blp", 
        BLACK = "ReplaceableTextures\\CameraMasks\\Black_mask.blp", 
        HAZE = "ReplaceableTextures\\CameraMasks\\HazeFilter_mask.blp", 
        GROUND_FOG = "ReplaceableTextures\\CameraMasks\\GroundFog_mask.blp", 
        HAZE_AND_FOG = "ReplaceableTextures\\CameraMasks\\HazeAndFogFilter_Mask.blp", 
        DIAGONAL_SLASH = "ReplaceableTextures\\CameraMasks\\DiagonalSlash_mask.blp", 
        DREAM = "ReplaceableTextures\\CameraMasks\\DreamFilter_Mask.blp", 
        SCOPE = "ReplaceableTextures\\CameraMasks\\Scope_Mask.blp", 
    },
}
htexture.cinematicFilterGeneric = function(duration, bmode, tex, red0, green0, blue0, trans0, red1, green1, blue1, trans1)
    if cg.bj_cineFadeContinueTimer ~= nil then
        cj.DestroyTimer(cg.bj_cineFadeContinueTimer)
    end
    if cg.bj_cineFadeFinishTimer ~= nil then
        cj.DestroyTimer(cg.bj_cineFadeFinishTimer)
    end
    cj.SetCineFilterTexture(tex)
    cj.SetCineFilterBlendMode(bmode)
    cj.SetCineFilterTexMapFlags(TEXMAP_FLAG_NONE)
    cj.SetCineFilterStartUV(0, 0, 1, 1)
    cj.SetCineFilterEndUV(0, 0, 1, 1)
    cj.SetCineFilterStartColor(
        red0,
        green0,
        blue0,
        255 - trans0
    )
    cj.SetCineFilterEndColor(
        red1,
        green1,
        blue1,
        255 - trans1
    )
    cj.SetCineFilterDuration(duration)
    cj.DisplayCineFilter(true)
end
htexture.mark = function(path, during, whichPlayer, red, green, blue)
    red = red or 255
    green = green or 255
    blue = blue or 255
    during = during or 3
    if (whichPlayer == nil) then
        htexture.cinematicFilterGeneric(
            0.50,
            BLEND_MODE_ADDITIVE,
            path,
            red, green, blue, 255,
            red, green, blue, 0
        )
        htime.setTimeout(
            during,
            function(t)
                htime.delTimer(t)
                htexture.cinematicFilterGeneric(
                    0.50,
                    BLEND_MODE_ADDITIVE,
                    path,
                    red, green, blue, 0,
                    red, green, blue, 255
                )
            end
        )
    elseif (whichPlayer ~= nil) then
        if (hplayer.get(whichPlayer, 'marking', false) ~= true) then
            hplayer.set(whichPlayer, 'marking', true)
            if (whichPlayer == cj.GetLocalPlayer()) then
                htexture.cinematicFilterGeneric(
                    0.50,
                    BLEND_MODE_ADDITIVE,
                    path,
                    red, green, blue, 255,
                    red, green, blue, 0
                )
            end
            htime.setTimeout(
                during,
                function(t)
                    htime.delTimer(t)
                    hplayer.set(whichPlayer, 'marking', false)
                    if (whichPlayer == cj.GetLocalPlayer()) then
                        htexture.cinematicFilterGeneric(
                            0.50,
                            BLEND_MODE_ADDITIVE,
                            path,
                            red, green, blue, 0,
                            red, green, blue, 255
                        )
                    end
                end
            )
        end
    end
end
htexture.alertCircle = function(diameter, x, y, during)
    if (diameter == nil or diameter < 64) then
        return
    end
    during = during or 3
    if (during <= 0) then
        during = 3
    end
    local modelScale = math.round(diameter / 64)
    local u = cj.CreateUnit(hplayer.player_passive, htexture.TEXTURE_ALERT_CIRCLE_TOKEN, x, y, bj_UNIT_FACING)
    cj.SetUnitScale(u, modelScale, modelScale, modelScale)
    cj.SetUnitTimeScale(u, 1 / during)
    hunit.del(u, during)
end
heffect = {
    enable = true
}
heffect.del = function(e)
    if (e ~= nil) then
        cj.DestroyEffect(e)
    end
end
heffect.toXY = function(effectModel, x, y, during)
    if (heffect.enable ~= true) then
        return
    end
    during = during or 0
    if (effectModel == nil or during < 0) then
        return
    end
    local eff
    if (during > 0) then
        eff = cj.AddSpecialEffect(effectModel, x, y)
        htime.setTimeout(
            during,
            function(t)
                htime.delTimer(t)
                cj.DestroyEffect(eff)
            end
        )
    else
        eff = cj.AddSpecialEffect(effectModel, x, y)
        cj.DestroyEffect(eff)
    end
    return eff
end
heffect.toLoc = function(effectModel, loc, during)
    if (heffect.enable ~= true) then
        return
    end
    during = during or 0
    if (effectModel == nil or loc == nil or during < 0) then
        return
    end
    local eff
    if (during > 0) then
        eff = cj.AddSpecialEffectLoc(effectModel, loc)
        htime.setTimeout(
            during,
            function(t)
                htime.delTimer(t)
                cj.DestroyEffect(eff)
            end
        )
    else
        eff = cj.AddSpecialEffectLoc(effectModel, x, y)
        cj.DestroyEffect(eff)
    end
    return eff
end
heffect.toUnit = function(effectModel, targetUnit, during)
    if (heffect.enable ~= true) then
        return
    end
    during = during or 0
    if (effectModel == nil or targetUnit == nil or during < 0) then
        return
    end
    local eff
    local x = hunit.x(targetUnit)
    local y = hunit.y(targetUnit)
    if (during > 0) then
        eff = cj.AddSpecialEffect(effectModel, x, y)
        htime.setTimeout(
            during,
            function(t)
                htime.delTimer(t)
                cj.DestroyEffect(eff)
            end
        )
    else
        eff = cj.AddSpecialEffect(effectModel, x, y)
        cj.DestroyEffect(eff)
    end
    return eff
end
heffect.bindUnit = function(effectModel, targetUnit, attach, during)
    if (heffect.enable ~= true) then
        return
    end
    if (effectModel == nil or targetUnit == nil or attach == nil) then
        return
    end
    local eff
    during = during or 0
    if (during > 0) then
        eff = cj.AddSpecialEffectTarget(effectModel, targetUnit, attach)
        htime.setTimeout(
            during,
            function(t)
                htime.delTimer(t)
                cj.DestroyEffect(eff)
            end
        )
    elseif (during == -1) then
        eff = cj.AddSpecialEffectTarget(effectModel, targetUnit, attach)
    else
        eff = cj.AddSpecialEffectTarget(effectModel, targetUnit, attach)
        cj.DestroyEffect(eff)
    end
    return eff
end
hlightning = {
    enable = true,
    type = {
        shan_dian_lian_zhu = "CLPB", 
        shan_dian_lian_ci = "CLSB", 
        ji_qu = "DRAB", 
        sheng_ming_ji_qu = "DRAL", 
        mo_fa_ji_qu = "DRAM", 
        si_wang_zhi_zhi = "AFOD", 
        cha_zhuang_shan_dian = "FORK", 
        yi_liao_bo_zhu = "HWPB", 
        yi_liao_bo_ci = "HWSB", 
        shan_dian_gong_ji = "CHIM", 
        ma_fa_liao_kao = "LEAS", 
        fa_li_ran_shao = "MBUR", 
        mo_li_zhi_yan = "MFPB", 
        ling_hun_suo_lian = "SPLK" 
    }
}
hlightning.del = function(lightning, delay)
    delay = delay or 0
    if (delay > 0) then
        htime.setTimeout(
            delay,
            function(t)
                htime.delTimer(t)
                hlightning.del(lightning)
            end
        )
    else
        cj.DestroyLightning(lightning)
    end
end
hlightning.xyz2xyz = function(lightningType, x1, y1, z1, x2, y2, z2, during)
    if (hlightning.enable ~= true) then
        return
    end
    local lightning = cj.AddLightningEx(lightningType, true, x1, y1, z1, x2, y2, z2)
    if (during > 0) then
        hlightning.del(lightning, during)
    end
    return lightning
end
hlightning.loc2loc = function(lightningType, loc1, loc2, during)
    return hlightning.xyz2xyz(
        lightningType,
        cj.GetLocationX(loc1),
        cj.GetLocationY(loc1),
        cj.GetLocationZ(loc1),
        cj.GetLocationX(loc2),
        cj.GetLocationY(loc2),
        cj.GetLocationZ(loc2),
        during
    )
end
hlightning.unit2unit = function(lightningType, unit1, unit2, during)
    local loc1 = cj.GetUnitLoc(unit1)
    local loc2 = cj.GetUnitLoc(unit2)
    local l = hlightning.loc2loc(lightningType, loc1, loc2, during)
    cj.RemoveLocation(loc1)
    cj.RemoveLocation(loc2)
    return l
end
hweather = {
    
    sun = string.char2id("LRaa"), 
    moon = string.char2id("LRma"), 
    shield = string.char2id("MEds"), 
    rain = string.char2id("RAlr"), 
    rainstorm = string.char2id("RAhr"), 
    snow = string.char2id("SNls"), 
    snowstorm = string.char2id("SNhs"), 
    wind = string.char2id("WOlw"), 
    windstorm = string.char2id("WNcw"), 
    mistwhite = string.char2id("FDwh"), 
    mistgreen = string.char2id("FDgh"), 
    mistblue = string.char2id("FDbh"), 
    mistred = string.char2id("FDrh") 
}
hweather.del = function(w, delay)
    delay = delay or 0
    if (delay <= 0) then
        cj.EnableWeatherEffect(w, false)
        cj.RemoveWeatherEffect(w)
    else
        htime.setTimeout(
            delay,
            function(t)
                htime.delTimer(t)
                cj.EnableWeatherEffect(w, false)
                cj.RemoveWeatherEffect(w)
            end
        )
    end
end
hweather.create = function(bean)
    
    if (bean.whichRect == nil) then
        if (bean.w == nil or bean.h == nil or bean.w <= 0 or bean.h <= 0) then
            print_err("hweather.create -w-h")
            return nil
        end
        if (bean.x == nil or bean.y == nil) then
            print_err("hweather.create -x-y")
            return nil
        end
    end
    if (bean.type == nil) then
        print_err("hweather.create -type")
        return nil
    end
    bean.during = bean.during or 0
    local w
    if (bean.whichRect ~= nil) then
        w = cj.AddWeatherEffect(bean.whichRect, bean.type)
    else
        local r = hrect.create(bean.x, bean.y, bean.w, bean.h)
        w = cj.AddWeatherEffect(r, bean.type)
        if (bean.during > 0) then
            hrect.del(r, bean.during)
        end
    end
    cj.EnableWeatherEffect(w, true)
    if (bean.during > 0) then
        hweather.del(w, bean.during)
    end
end
henvData = {
    
    doodad = {
        block = {
            string.char2id("LTba")
        },
        cage = {
            string.char2id("LOcg")
        },
        bucket = {
            string.char2id("LTbr"),
            string.char2id("LTbx"),
            string.char2id("LTbs")
        },
        bucketBrust = {
            string.char2id("LTex")
        },
        box = {
            string.char2id("LTcr")
        },
        supportColumn = {
            string.char2id("BTsc")
        },
        stone = {
            string.char2id("LTrc")
        },
        stoneRed = {
            string.char2id("DTrc")
        },
        stoneIce = {
            string.char2id("ITcr")
        },
        ice = {
            string.char2id("ITf1"),
            string.char2id("ITf2"),
            string.char2id("ITf3"),
            string.char2id("ITf4"),
        },
        spiderEggs = {
            string.char2id("DTes")
        },
        volcano = {
            
            string.char2id("Volc")
        },
        treeSummer = {
            string.char2id("LTlt")
        },
        treeAutumn = {
            string.char2id("FTtw")
        },
        treeWinter = {
            string.char2id("WTtw")
        },
        treeWinterShow = {
            string.char2id("WTst")
        },
        treeDark = {
            
            string.char2id("NTtw")
        },
        treeDarkUmbrella = {
            
            string.char2id("NTtc")
        },
        treePoor = {
            
            string.char2id("BTtw")
        },
        treePoorUmbrella = {
            
            string.char2id("BTtc")
        },
        treeRuins = {
            
            string.char2id("ZTtw")
        },
        treeRuinsUmbrella = {
            
            string.char2id("ZTtc")
        },
        treeUnderground = {
            
            string.char2id("DTsh"),
            string.char2id("GTsh")
        }
    },
    
    ground = {
        summer = string.char2id("Lgrs"), 
        autumn = string.char2id("LTlt"), 
        winter = string.char2id("Iice"), 
        winterDeep = string.char2id("Iice"), 
        poor = string.char2id("Ldrt"), 
        ruins = string.char2id("Ldro"), 
        fire = string.char2id("Dlvc"), 
        underground = string.char2id("Clvg"), 
        sea = nil, 
        dark = nil, 
        river = nil, 
    },
}
henv = {
    
    
    delDestructable = function(whichDestructable, delay)
        delay = delay or 0.5
        if (delay == nil or delay <= 0) then
            hRuntime.clear(whichDestructable)
            cj.RemoveDestructable(whichDestructable)
            whichDestructable = nil
        else
            htime.setTimeout(
                delay,
                function(t)
                    htime.delTimer(t)
                    hRuntime.clear(whichDestructable)
                    cj.RemoveDestructable(whichDestructable)
                    whichDestructable = nil
                end
            )
        end
    end,
    
    _clearDestructable = function()
        cj.RemoveDestructable(cj.GetEnumDestructable())
    end
}
henv.setFogStatus = function(enable, enableMark)
    cj.FogEnable(enable)
    cj.FogMaskEnable(enableMark)
end
henv.setDoodad = function(doodads)
    henvData.doodad = doodads
end
henv.setGround = function(grounds)
    henvData.ground = grounds
end
henv.clearDestructable = function(whichRect)
    cj.EnumDestructablesInRect(whichRect, nil, henv._clearDestructable)
end
henv.build = function(whichRect, typeStr, isInvulnerable, isDestroyRect, ground, doodad, units)
    if (whichRect == nil or typeStr == nil) then
        return
    end
    if (doodad == nil or units == nil) then
        return
    end
    if (hRuntime.env[whichRect] == nil) then
        hRuntime.env[whichRect] = {}
    else
        
        for _, v in ipairs(hRuntime.env[whichRect]) do
            hunit.del(v)
        end
        hRuntime.env[whichRect] = {}
    end
    
    henv.clearDestructable(whichRect)
    local rectStartX = hrect.getStartX(whichRect)
    local rectStartY = hrect.getStartY(whichRect)
    local rectEndX = hrect.getEndX(whichRect)
    local rectEndY = hrect.getEndY(whichRect)
    local indexX = 0
    local indexY = 0
    local doodads = {}
    for _, v in ipairs(doodad) do
        for _, vv in ipairs(v) do
            table.insert(doodads, vv)
        end
    end
    local randomM = 2
    htime.setInterval(
        0.01,
        function(t)
            local x = rectStartX + indexX * 80
            local y = rectStartY + indexY * 80
            local buildType = math.random(1, randomM)
            if (indexX == -1 or indexY == -1) then
                htime.delTimer(t)
                if (isDestroyRect) then
                    hrect.del(whichRect)
                end
                return
            end
            randomM = randomM + math.random(1, 3)
            if (randomM > 180) then
                randomM = 2
            end
            if (x > rectEndX) then
                indexY = 1 + indexY
                indexX = -1
            end
            if (y > rectEndY) then
                indexY = -1
            end
            indexX = 1 + indexX
            
            if (typeStr == "sea") then
                
                if (cj.IsTerrainPathable(x, y, PATHING_TYPE_WALKABILITY) == true) then
                    return
                end
            end
            if (#units > 0 and (buildType == 1 or buildType == 40 or (#doodads <= 0 and buildType == 51))) then
                local tempUnit = cj.CreateUnit(
                    cj.Player(PLAYER_NEUTRAL_PASSIVE),
                    units[math.random(1, #units)],
                    x,
                    y,
                    bj_UNIT_FACING
                )
                table.insert(hRuntime.env[whichRect], tempUnit)
                if (ground ~= nil and math.random(1, 3) == 2) then
                    cj.SetTerrainType(x, y, ground, -1, 1, 0)
                end
            elseif (#doodads > 0 and buildType == 16) then
                local dest = cj.CreateDestructable(
                    doodads[math.random(1, #doodads)],
                    x,
                    y,
                    math.random(0, 360),
                    math.random(0.5, 1.1),
                    0
                )
                if (isInvulnerable == true) then
                    cj.SetDestructableInvulnerable(dest, true)
                end
                if (ground ~= nil) then
                    cj.SetTerrainType(x, y, ground, -1, 1, 0)
                end
            end
        end
    )
end
henv.random = function(whichRect, typeStr, isInvulnerable, isDestroyRect)
    local ground
    local doodad = {}
    local unit = {}
    if (whichRect == nil or typeStr == nil) then
        return
    end
    if (typeStr == "summer") then
        ground = henvData.ground.summer
        doodad = {
            henvData.doodad.treeSummer,
            henvData.doodad.block,
            henvData.doodad.stone,
            henvData.doodad.bucket
        }
        unit = {
            hslk.env_model.flower0,
            hslk.env_model.flower1,
            hslk.env_model.flower2,
            hslk.env_model.flower3,
            hslk.env_model.flower4,
            hslk.env_model.bird
        }
    elseif (typeStr == "autumn") then
        ground = henvData.ground.autumn
        doodad = {
            henvData.doodad.treeAutumn,
            henvData.doodad.box,
            henvData.doodad.stoneRed,
            henvData.doodad.bucket,
            henvData.doodad.cage,
            henvData.doodad.supportColumn
        }
        unit = {
            hslk.env_model.flower0,
            hslk.env_model.typha0,
            hslk.env_model.typha1
        }
    elseif (typeStr == "winter") then
        ground = henvData.ground.winter
        doodad = {
            henvData.doodad.treeWinter,
            henvData.doodad.treeWinterShow,
            henvData.doodad.stoneIce
        }
        unit = {
            hslk.env_model.stone0,
            hslk.env_model.stone1,
            hslk.env_model.stone2,
            hslk.env_model.stone3,
            hslk.env_model.stone_show0,
            hslk.env_model.stone_show1,
            hslk.env_model.stone_show2,
            hslk.env_model.stone_show3,
            hslk.env_model.stone_show4
        }
    elseif (typeStr == "winterDeep") then
        ground = henvData.ground.winterDeep
        doodad = {
            henvData.doodad.treeWinterShow,
            henvData.doodad.stoneIce
        }
        unit = {
            hslk.env_model.stone_show5,
            hslk.env_model.stone_show6,
            hslk.env_model.stone_show7,
            hslk.env_model.stone_show8,
            hslk.env_model.stone_show9,
            hslk.env_model.ice0,
            hslk.env_model.ice1,
            hslk.env_model.ice2,
            hslk.env_model.ice3,
            hslk.env_model.bubble_geyser_steam,
            hslk.env_model.snowman
        }
    elseif (typeStr == "dark") then
        ground = henvData.ground.dark
        doodad = {
            henvData.doodad.treeDark,
            henvData.doodad.treeDarkUmbrella,
            henvData.doodad.cage
        }
        unit = {
            hslk.env_model.rune0,
            hslk.env_model.rune1,
            hslk.env_model.rune2,
            hslk.env_model.rune3,
            hslk.env_model.rune4,
            hslk.env_model.rune5,
            hslk.env_model.rune6,
            hslk.env_model.impaled_body0,
            hslk.env_model.impaled_body1
        }
    elseif (typeStr == "poor") then
        ground = henvData.ground.poor
        doodad = {
            henvData.doodad.treePoor,
            henvData.doodad.treePoorUmbrella,
            henvData.doodad.cage,
            henvData.doodad.box
        }
        unit = {
            hslk.env_model.bone0,
            hslk.env_model.bone1,
            hslk.env_model.bone2,
            hslk.env_model.bone3,
            hslk.env_model.bone4,
            hslk.env_model.bone5,
            hslk.env_model.bone6,
            hslk.env_model.bone7,
            hslk.env_model.bone8,
            hslk.env_model.bone9,
            hslk.env_model.flies,
            hslk.env_model.burn_body0,
            hslk.env_model.burn_body1,
            hslk.env_model.burn_body3,
            hslk.env_model.bats
        }
    elseif (typeStr == "ruins") then
        ground = henvData.ground.ruins
        doodad = {
            henvData.doodad.treeRuins,
            henvData.doodad.treeRuinsUmbrella,
            henvData.doodad.cage
        }
        unit = {
            hslk.env_model.break_column0,
            hslk.env_model.break_column1,
            hslk.env_model.break_column2,
            hslk.env_model.break_column3,
            hslk.env_model.skull_pile0,
            hslk.env_model.skull_pile1,
            hslk.env_model.skull_pile2,
            hslk.env_model.skull_pile3
        }
    elseif (typeStr == "fire") then
        ground = henvData.ground.fire
        doodad = {
            henvData.doodad.volcano,
            henvData.doodad.stoneRed
        }
        unit = {
            hslk.env_model.fire_hole,
            hslk.env_model.burn_body0,
            hslk.env_model.burn_body1,
            hslk.env_model.burn_body2,
            hslk.env_model.firetrap,
            hslk.env_model.fire,
            hslk.env_model.burn_build
        }
    elseif (typeStr == "underground") then
        ground = henvData.ground.underground
        doodad = {
            henvData.doodad.treeUnderground,
            henvData.doodad.spiderEggs
        }
        unit = {
            hslk.env_model.mushroom0,
            hslk.env_model.mushroom1,
            hslk.env_model.mushroom2,
            hslk.env_model.mushroom3,
            hslk.env_model.mushroom4,
            hslk.env_model.mushroom5,
            hslk.env_model.mushroom6,
            hslk.env_model.mushroom7,
            hslk.env_model.mushroom8,
            hslk.env_model.mushroom9,
            hslk.env_model.mushroom10,
            hslk.env_model.mushroom11
        }
    elseif (typeStr == "sea") then
        ground = henvData.ground.sea
        doodad = {}
        unit = {
            hslk.env_model.seaweed0,
            hslk.env_model.seaweed1,
            hslk.env_model.seaweed2,
            hslk.env_model.seaweed3,
            hslk.env_model.seaweed4,
            hslk.env_model.fish,
            hslk.env_model.fish_school,
            hslk.env_model.fish_green,
            hslk.env_model.bubble_geyser,
            hslk.env_model.bubble_geyser_steam,
            hslk.env_model.coral0,
            hslk.env_model.coral1,
            hslk.env_model.coral2,
            hslk.env_model.coral3,
            hslk.env_model.coral4,
            hslk.env_model.coral5,
            hslk.env_model.coral6,
            hslk.env_model.coral7,
            hslk.env_model.coral8,
            hslk.env_model.coral9,
            hslk.env_model.shells0,
            hslk.env_model.shells1,
            hslk.env_model.shells2,
            hslk.env_model.shells3,
            hslk.env_model.shells4,
            hslk.env_model.shells5,
            hslk.env_model.shells6,
            hslk.env_model.shells7,
            hslk.env_model.shells8,
            hslk.env_model.shells9
        }
    elseif (typeStr == "river") then
        ground = henvData.ground.river
        doodad = {
            henvData.doodad.stone
        }
        unit = {
            hslk.env_model.fish,
            hslk.env_model.fish_school,
            hslk.env_model.fish_green,
            hslk.env_model.lilypad0,
            hslk.env_model.lilypad1,
            hslk.env_model.lilypad2,
            hslk.env_model.river_rushes0,
            hslk.env_model.river_rushes1,
            hslk.env_model.river_rushes2,
            hslk.env_model.river_rushes3
        }
    else
        return
    end
    henv.build(whichRect, typeStr, isInvulnerable, isDestroyRect, ground, doodad, unit)
end
hcamera = {}
hcamera.reset = function(whichPlayer, during)
    if (whichPlayer == nil or cj.GetLocalPlayer() == whichPlayer) then
        cj.ResetToGameCamera(during)
    end
end
hcamera.apply = function(whichPlayer, during, camerasetup)
    if (whichPlayer == nil or cj.GetLocalPlayer() == whichPlayer) then
        cj.CameraSetupApplyForceDuration(camerasetup, true, during)
    end
end
hcamera.toXY = function(whichPlayer, during, x, y)
    if (whichPlayer == nil or cj.GetLocalPlayer() == whichPlayer) then
        cj.PanCameraToTimed(x, y, during)
    end
end
hcamera.toLoc = function(whichPlayer, during, loc)
    hcamera.toXY(whichPlayer, during, cj.GetLocationX(loc), cj.GetLocationY(loc))
end
hcamera.toUnit = function(whichPlayer, during, whichUnit)
    if (whichUnit == nil) then
        return
    end
    if (whichPlayer == nil or cj.GetLocalPlayer() == whichPlayer) then
        cj.PanCameraToTimed(hunit.x(whichUnit), hunit.y(whichUnit), during)
    end
end
hcamera.lock = function(whichPlayer, whichUnit)
    if (whichPlayer ~= nil or cj.GetLocalPlayer() == whichPlayer) then
        if (his.alive(whichUnit) == true) then
            cj.SetCameraTargetController(whichUnit, 0, 0, false)
        else
            hcamera.reset(whichPlayer, 0)
        end
    end
end
hcamera.changeDistance = function(whichPlayer, diffDistance)
    if (type(diffDistance) ~= "number") then
        diffDistance = 0
    end
    if (diffDistance ~= 0 and whichPlayer ~= nil and cj.GetLocalPlayer() == whichPlayer) then
        local oldDistance = cj.GetCameraField(CAMERA_FIELD_TARGET_DISTANCE)
        local toDistance = math.floor(oldDistance + diffDistance)
        if (toDistance < 500) then
            toDistance = 500
        elseif (toDistance > 5000) then
            toDistance = 5000
        end
        echo("视距已设定为：" .. toDistance, whichPlayer)
        if (oldDistance == toDistance) then
            return
        else
            cj.SetCameraField(CAMERA_FIELD_TARGET_DISTANCE, toDistance, 0)
        end
    end
end
hcamera.shock = function(whichPlayer, whichType, during, scale)
    if (whichPlayer == nil) then
        return
    end
    if (whichType ~= "shake" or whichType ~= "quake") then
        return
    end
    if (during == nil) then
        during = 0.10 
    end
    if (scale == nil) then
        scale = 5.00 
    end
    
    if (hplayer.getIsShocking(whichPlayer) == true) then
        return
    end
    hplayer.setIsShocking(whichPlayer, true)
    if (whichType == "shake") then
        cj.CameraSetTargetNoiseForPlayer(whichPlayer, scale, 1.00)
        htime.setTimeout(
            during,
            function(t)
                htime.delTimer(t)
                hplayer.setIsShocking(whichPlayer, false)
                if (cj.GetLocalPlayer() == whichPlayer) then
                    cj.CameraSetTargetNoise(0, 0)
                end
            end
        )
    elseif (whichType == "quake") then
        cj.CameraSetEQNoiseForPlayer(whichPlayer, scale)
        htime.setTimeout(
            during,
            function(t)
                htime.delTimer(t)
                hplayer.setIsShocking(whichPlayer, false)
                if (cj.GetLocalPlayer() == whichPlayer) then
                    cj.CameraClearNoiseForPlayer(0, 0)
                end
            end
        )
    end
end
hcamera.getModel = function(whichPlayer)
    return hplayer.get(whichPlayer, 'cameraModel', 'normal')
end
hcamera.setModel = function(bean)
    if (bean.model == nil) then
        return
    end
    if (bean.model == "normal") then
        hcamera.reset(bean.whichPlayer, 0)
    elseif (bean.model == "lock") then
        if (bean.lockUnit == nil or bean.whichPlayer == nil) then
            return
        end
        htime.setInterval(
            0.1,
            function()
                hcamera.lock(bean.whichPlayer, bean.lockUnit)
            end
        )
    elseif (bean.model == "zoomin") then
        
        htime.setInterval(
            0.1,
            function()
                hcamera.distance(bean.whichPlayer, 825)
            end
        )
    elseif (bean.model == "zoomout") then
        htime.setInterval(
            0.1,
            function()
                hcamera.distance(bean.whichPlayer, 3000)
            end
        )
    else
        return
    end
    if (bean.whichPlayer ~= nil) then
        hplayer.set(bean.whichPlayer, 'cameraModel', bean.model)
    else
        for i = 1, bj_MAX_PLAYERS, 1 do
            hplayer.set(hplayer.players[i], 'cameraModel', bean.model)
        end
    end
end
hevent = {
    POOL = {},
    POOL_RED_LINE = 1000,
}
hevent.set = function(handle, key, value)
    if (handle == nil) then
        print_stack()
        return
    end
    if (hRuntime.event[handle] == nil) then
        hRuntime.event[handle] = {}
    end
    hRuntime.event[handle][key] = value
end
hevent.get = function(handle, key)
    if (handle == nil) then
        print_stack()
        return
    end
    if (hRuntime.event[handle] == nil) then
        hRuntime.event[handle] = {}
    end
    return hRuntime.event[handle][key]
end
hevent.pool = function(handle, conditionAction, regEvent)
    if (type(regEvent) ~= 'function') then
        return
    end
    local key = cj.GetHandleId(conditionAction)
    
    if (hRuntime.event.pool[handle] ~= nil) then
        local isInPool = false
        for _, p in ipairs(hRuntime.event.pool[handle]) do
            if p.key == key then
                isInPool = true
                break
            end
        end
        if (isInPool) then
            return
        end
    end
    if (hevent.POOL[key] == nil) then
        hevent.POOL[key] = {}
    end
    local poolIndex = #hevent.POOL[key]
    if (poolIndex <= 0 or hevent.POOL[key][poolIndex].count >= hevent.POOL_RED_LINE) then
        local tgr = cj.CreateTrigger()
        table.insert(hevent.POOL[key], {
            stock = 0,
            count = 0,
            trigger = tgr
        })
        cj.TriggerAddCondition(tgr, conditionAction)
        poolIndex = #hevent.POOL[key]
    end
    if (hRuntime.event.pool[handle] == nil) then
        hRuntime.event.pool[handle] = {}
    end
    table.insert(hRuntime.event.pool[handle], {
        key = key,
        poolIndex = poolIndex,
    })
    hevent.POOL[key][poolIndex].count = hevent.POOL[key][poolIndex].count + 1
    hevent.POOL[key][poolIndex].stock = hevent.POOL[key][poolIndex].stock + 1
    regEvent(hevent.POOL[key][poolIndex].trigger)
end
hevent.setLastDamageUnit = function(whichUnit, lastUnit)
    if (whichUnit == nil and lastUnit == nil) then
        return
    end
    hevent.set(whichUnit, "lastDamageUnit", lastUnit)
end
hevent.getLastDamageUnit = function(whichUnit)
    return hevent.get(whichUnit, "lastDamageUnit")
end
hevent.registerEvent = function(handle, key, callFunc)
    if (hRuntime.event.register[handle] == nil) then
        hRuntime.event.register[handle] = {}
    end
    if (hRuntime.event.register[handle][key] == nil) then
        hRuntime.event.register[handle][key] = {}
    end
    table.insert(hRuntime.event.register[handle][key], callFunc)
    return #hRuntime.event.register[handle][key]
end
hevent.triggerEvent = function(handle, key, triggerData)
    if (handle == nil) then
        return
    end
    if (hRuntime.event.register[handle] == nil or hRuntime.event.register[handle][key] == nil) then
        return
    end
    if (#hRuntime.event.register[handle][key] <= 0) then
        return
    end
    
    triggerData = triggerData or {}
    if (triggerData.triggerSkill ~= nil and type(triggerData.triggerSkill) == "number") then
        triggerData.triggerSkill = string.id2char(triggerData.triggerSkill)
    end
    if (triggerData.targetLoc ~= nil) then
        triggerData.targetX = cj.GetLocationX(triggerData.targetLoc)
        triggerData.targetY = cj.GetLocationY(triggerData.targetLoc)
        triggerData.targetZ = cj.GetLocationZ(triggerData.targetLoc)
        cj.RemoveLocation(triggerData.targetLoc)
        triggerData.targetLoc = nil
    end
    for _, callFunc in ipairs(hRuntime.event.register[handle][key]) do
        callFunc(triggerData)
    end
end
hevent.deleteEvent = function(handle, key, eventId)
    if (handle == nil or key == nil or eventId == nil) then
        print_stack()
        return
    end
    if (hRuntime.event.register[handle] == nil or hRuntime.event.register[handle][key] == nil) then
        return
    end
    table.remove(hRuntime.event.register[handle][key], eventId)
end
hevent.onAttackDetect = function(whichUnit, callFunc)
    hevent.pool(whichUnit, hevent_default_actions.unit.attackDetect, function(tgr)
        cj.TriggerRegisterUnitEvent(tgr, whichUnit, EVENT_UNIT_ACQUIRED_TARGET)
    end)
    return hevent.registerEvent(whichUnit, CONST_EVENT.attackDetect, callFunc)
end
hevent.onAttackGetTarget = function(whichUnit, callFunc)
    hevent.pool(whichUnit, hevent_default_actions.unit.attackGetTarget, function(tgr)
        cj.TriggerRegisterUnitEvent(tgr, whichUnit, EVENT_UNIT_TARGET_IN_RANGE)
    end)
    return hevent.registerEvent(whichUnit, CONST_EVENT.attackGetTarget, callFunc)
end
hevent.onBeAttackReady = function(whichUnit, callFunc)
    hevent.pool(whichUnit, hevent_default_actions.unit.beAttackReady, function(tgr)
        cj.TriggerRegisterUnitEvent(tgr, whichUnit, EVENT_UNIT_ATTACKED)
    end)
    return hevent.registerEvent(whichUnit, CONST_EVENT.beAttackReady, callFunc)
end
hevent.onAttack = function(whichUnit, callFunc)
    return hevent.registerEvent(whichUnit, CONST_EVENT.attack, callFunc)
end
hevent.onBeAttack = function(whichUnit, callFunc)
    return hevent.registerEvent(whichUnit, CONST_EVENT.beAttack, callFunc)
end
hevent.onSkillStudy = function(whichUnit, callFunc)
    hevent.pool(whichUnit, hevent_default_actions.unit.skillStudy, function(tgr)
        cj.TriggerRegisterUnitEvent(tgr, whichUnit, EVENT_UNIT_HERO_SKILL)
    end)
    return hevent.registerEvent(whichUnit, CONST_EVENT.skillStudy, callFunc)
end
hevent.onSkillReady = function(whichUnit, callFunc)
    hevent.pool(whichUnit, hevent_default_actions.unit.skillReady, function(tgr)
        cj.TriggerRegisterUnitEvent(tgr, whichUnit, EVENT_UNIT_SPELL_CHANNEL)
    end)
    return hevent.registerEvent(whichUnit, CONST_EVENT.skillReady, callFunc)
end
hevent.onSkillCast = function(whichUnit, callFunc)
    hevent.pool(whichUnit, hevent_default_actions.unit.skillCast, function(tgr)
        cj.TriggerRegisterUnitEvent(tgr, whichUnit, EVENT_UNIT_SPELL_CAST)
    end)
    return hevent.registerEvent(whichUnit, CONST_EVENT.skillCast, callFunc)
end
hevent.onSkillStop = function(whichUnit, callFunc)
    hevent.pool(whichUnit, hevent_default_actions.unit.skillStop, function(tgr)
        cj.TriggerRegisterUnitEvent(tgr, whichUnit, EVENT_UNIT_SPELL_ENDCAST)
    end)
    return hevent.registerEvent(whichUnit, CONST_EVENT.skillStop, callFunc)
end
hevent.onSkillEffect = function(whichUnit, callFunc)
    hevent.pool(whichUnit, hevent_default_actions.unit.skillEffect, function(tgr)
        cj.TriggerRegisterUnitEvent(tgr, whichUnit, EVENT_UNIT_SPELL_EFFECT)
    end)
    return hevent.registerEvent(whichUnit, CONST_EVENT.skillEffect, callFunc)
end
hevent.onSkillFinish = function(whichUnit, callFunc)
    hevent.pool(whichUnit, hevent_default_actions.unit.skillFinish, function(tgr)
        cj.TriggerRegisterUnitEvent(tgr, whichUnit, EVENT_UNIT_SPELL_FINISH)
    end)
    return hevent.registerEvent(whichUnit, CONST_EVENT.skillFinish, callFunc)
end
hevent.onItemUsed = function(whichUnit, callFunc)
    return hevent.registerEvent(whichUnit, CONST_EVENT.itemUsed, callFunc)
end
hevent.onItemDrop = function(whichUnit, callFunc)
    return hevent.registerEvent(whichUnit, CONST_EVENT.itemDrop, callFunc)
end
hevent.onItemGet = function(whichUnit, callFunc)
    return hevent.registerEvent(whichUnit, CONST_EVENT.itemGet, callFunc)
end
hevent.onItemPawn = function(whichUnit, callFunc)
    return hevent.registerEvent(whichUnit, CONST_EVENT.itemPawn, callFunc)
end
hevent.onItemSell = function(whichUnit, callFunc)
    hevent.pool(whichUnit, hevent_default_actions.item.sell, function(tgr)
        cj.TriggerRegisterUnitEvent(tgr, whichUnit, EVENT_UNIT_SELL_ITEM)
    end)
    return hevent.registerEvent(whichUnit, CONST_EVENT.itemSell, callFunc)
end
hevent.onUnitSell = function(whichUnit, callFunc)
    hevent.pool(whichUnit, hevent_default_actions.unit.sell, function(tgr)
        cj.TriggerRegisterUnitEvent(tgr, whichUnit, EVENT_UNIT_SELL)
    end)
    return hevent.registerEvent(whichUnit, CONST_EVENT.unitSell, callFunc)
end
hevent.onItemDestroy = function(whichItem, callFunc)
    hevent.pool(whichItem, hevent_default_actions.item.destroy, function(tgr)
        cj.TriggerRegisterDeathEvent(tgr, whichItem)
    end)
    return hevent.registerEvent(whichItem, CONST_EVENT.itemDestroy, callFunc)
end
hevent.onItemSeparate = function(whichItem, callFunc)
    return hevent.registerEvent(whichItem, CONST_EVENT.itemSeparate, callFunc)
end
hevent.onItemSynthesis = function(whichUnit, callFunc)
    return hevent.registerEvent(whichUnit, CONST_EVENT.itemSynthesis, callFunc)
end
hevent.onItemOverWeight = function(whichUnit, callFunc)
    return hevent.registerEvent(whichUnit, CONST_EVENT.itemOverWeight, callFunc)
end
hevent.onItemOverSlot = function(whichUnit, callFunc)
    return hevent.registerEvent(whichUnit, CONST_EVENT.itemOverSlot, callFunc)
end
hevent.onDamage = function(whichUnit, callFunc)
    return hevent.registerEvent(whichUnit, CONST_EVENT.damage, callFunc)
end
hevent.onBeDamage = function(whichUnit, callFunc)
    return hevent.registerEvent(whichUnit, CONST_EVENT.beDamage, callFunc)
end
hevent.onAvoid = function(whichUnit, callFunc)
    return hevent.registerEvent(whichUnit, CONST_EVENT.avoid, callFunc)
end
hevent.onBeAvoid = function(whichUnit, callFunc)
    return hevent.registerEvent(whichUnit, CONST_EVENT.beAvoid, callFunc)
end
hevent.onBreakArmor = function(whichUnit, callFunc)
    return hevent.registerEvent(whichUnit, CONST_EVENT.breakArmor, callFunc)
end
hevent.onBeBreakArmor = function(whichUnit, callFunc)
    return hevent.registerEvent(whichUnit, CONST_EVENT.beBreakArmor, callFunc)
end
hevent.onSwim = function(whichUnit, callFunc)
    return hevent.registerEvent(whichUnit, CONST_EVENT.swim, callFunc)
end
hevent.onBeSwim = function(whichUnit, callFunc)
    return hevent.registerEvent(whichUnit, CONST_EVENT.beSwim, callFunc)
end
hevent.onBroken = function(whichUnit, callFunc)
    return hevent.registerEvent(whichUnit, CONST_EVENT.broken, callFunc)
end
hevent.onBeBroken = function(whichUnit, callFunc)
    return hevent.registerEvent(whichUnit, CONST_EVENT.beBroken, callFunc)
end
hevent.onSilent = function(whichUnit, callFunc)
    return hevent.registerEvent(whichUnit, CONST_EVENT.silent, callFunc)
end
hevent.onBeSilent = function(whichUnit, callFunc)
    return hevent.registerEvent(whichUnit, CONST_EVENT.beSilent, callFunc)
end
hevent.onUnarm = function(whichUnit, callFunc)
    return hevent.registerEvent(whichUnit, CONST_EVENT.unarm, callFunc)
end
hevent.onBeUnarm = function(whichUnit, callFunc)
    return hevent.registerEvent(whichUnit, CONST_EVENT.beUnarm, callFunc)
end
hevent.onFetter = function(whichUnit, callFunc)
    return hevent.registerEvent(whichUnit, CONST_EVENT.fetter, callFunc)
end
hevent.onBeFetter = function(whichUnit, callFunc)
    return hevent.registerEvent(whichUnit, CONST_EVENT.beFetter, callFunc)
end
hevent.onBomb = function(whichUnit, callFunc)
    return hevent.registerEvent(whichUnit, CONST_EVENT.bomb, callFunc)
end
hevent.onBeBomb = function(whichUnit, callFunc)
    return hevent.registerEvent(whichUnit, CONST_EVENT.beBomb, callFunc)
end
hevent.onLightningChain = function(whichUnit, callFunc)
    return hevent.registerEvent(whichUnit, CONST_EVENT.lightningChain, callFunc)
end
hevent.onBeLightningChain = function(whichUnit, callFunc)
    return hevent.registerEvent(whichUnit, CONST_EVENT.beLightningChain, callFunc)
end
hevent.onCrackFly = function(whichUnit, callFunc)
    return hevent.registerEvent(whichUnit, CONST_EVENT.crackFly, callFunc)
end
hevent.onBeCrackFly = function(whichUnit, callFunc)
    return hevent.registerEvent(whichUnit, CONST_EVENT.beCrackFly, callFunc)
end
hevent.onRebound = function(whichUnit, callFunc)
    return hevent.registerEvent(whichUnit, CONST_EVENT.rebound, callFunc)
end
hevent.onBeRebound = function(whichUnit, callFunc)
    return hevent.registerEvent(whichUnit, CONST_EVENT.beRebound, callFunc)
end
hevent.onNoAvoid = function(whichUnit, callFunc)
    return hevent.registerEvent(whichUnit, CONST_EVENT.noAvoid, callFunc)
end
hevent.onBeNoAvoid = function(whichUnit, callFunc)
    return hevent.registerEvent(whichUnit, CONST_EVENT.beNoAvoid, callFunc)
end
hevent.onKnocking = function(whichUnit, callFunc)
    return hevent.registerEvent(whichUnit, CONST_EVENT.knocking, callFunc)
end
hevent.onBeKnocking = function(whichUnit, callFunc)
    return hevent.registerEvent(whichUnit, CONST_EVENT.beKnocking, callFunc)
end
hevent.onViolence = function(whichUnit, callFunc)
    return hevent.registerEvent(whichUnit, CONST_EVENT.violence, callFunc)
end
hevent.onBeViolence = function(whichUnit, callFunc)
    return hevent.registerEvent(whichUnit, CONST_EVENT.beViolence, callFunc)
end
hevent.onSpilt = function(whichUnit, callFunc)
    return hevent.registerEvent(whichUnit, CONST_EVENT.spilt, callFunc)
end
hevent.onBeSpilt = function(whichUnit, callFunc)
    return hevent.registerEvent(whichUnit, CONST_EVENT.beSpilt, callFunc)
end
hevent.onLimitToughness = function(whichUnit, callFunc)
    return hevent.registerEvent(whichUnit, CONST_EVENT.limitToughness, callFunc)
end
hevent.onHemophagia = function(whichUnit, callFunc)
    return hevent.registerEvent(whichUnit, CONST_EVENT.hemophagia, callFunc)
end
hevent.onBeHemophagia = function(whichUnit, callFunc)
    return hevent.registerEvent(whichUnit, CONST_EVENT.beHemophagia, callFunc)
end
hevent.onSkillHemophagia = function(whichUnit, callFunc)
    return hevent.registerEvent(whichUnit, CONST_EVENT.skillHemophagia, callFunc)
end
hevent.onBeSkillHemophagia = function(whichUnit, callFunc)
    return hevent.registerEvent(whichUnit, CONST_EVENT.beSkillHemophagia, callFunc)
end
hevent.onPunish = function(whichUnit, callFunc)
    return hevent.registerEvent(whichUnit, ONST_EVENT.punish, callFunc)
end
hevent.onDead = function(whichUnit, callFunc)
    return hevent.registerEvent(whichUnit, CONST_EVENT.dead, callFunc)
end
hevent.onKill = function(whichUnit, callFunc)
    return hevent.registerEvent(whichUnit, CONST_EVENT.kill, callFunc)
end
hevent.onReborn = function(whichUnit, callFunc)
    return hevent.registerEvent(whichUnit, CONST_EVENT.reborn, callFunc)
end
hevent.onLevelUp = function(whichUnit, callFunc)
    return hevent.registerEvent(whichUnit, CONST_EVENT.levelUp, callFunc)
end
hevent.onUpgradeStart = function(whichUnit, callFunc)
    hevent.pool(whichUnit, hevent_default_actions.unit.upgradeStart, function(tgr)
        cj.TriggerRegisterUnitEvent(tgr, whichUnit, EVENT_UNIT_UPGRADE_START)
    end)
    return hevent.registerEvent(whichUnit, CONST_EVENT.upgradeStart, callFunc)
end
hevent.onUpgradeCancel = function(whichUnit, callFunc)
    hevent.pool(whichUnit, hevent_default_actions.unit.upgradeCancel, function(tgr)
        cj.TriggerRegisterUnitEvent(tgr, whichUnit, EVENT_UNIT_UPGRADE_CANCEL)
    end)
    return hevent.registerEvent(whichUnit, CONST_EVENT.upgradeCancel, callFunc)
end
hevent.onUpgradeFinish = function(whichUnit, callFunc)
    hevent.pool(whichUnit, hevent_default_actions.unit.upgradeFinish, function(tgr)
        cj.TriggerRegisterUnitEvent(tgr, whichUnit, EVENT_UNIT_UPGRADE_FINISH)
    end)
    return hevent.registerEvent(whichUnit, CONST_EVENT.upgradeFinish, callFunc)
end
hevent.onEnterUnitRange = function(whichUnit, radius, callFunc)
    local key = CONST_EVENT.enterUnitRange
    if (hRuntime.unit[whichUnit] == nil) then
        hRuntime.unit[whichUnit] = {}
    end
    if (hRuntime.unit[whichUnit]["onEnterUnitRangeAction" .. radius] == nil) then
        hRuntime.unit[whichUnit]["onEnterUnitRangeAction" .. radius] = function()
            hevent.triggerEvent(
                whichUnit,
                key,
                {
                    centerUnit = whichUnit,
                    enterUnit = cj.GetTriggerUnit(),
                    radius = radius
                }
            )
        end
    end
    hevent.pool(
        whichUnit,
        cj.Condition(hRuntime.unit[whichUnit]["onEnterUnitRangeAction" .. radius]),
        function(tgr)
            cj.TriggerRegisterUnitInRange(tgr, whichUnit, radius, nil)
        end
    )
    return hevent.registerEvent(whichUnit, key, callFunc)
end
hevent.onEnterRect = function(whichRect, callFunc)
    local key = CONST_EVENT.enterRect
    if (hRuntime.rect[whichRect] == nil) then
        hRuntime.rect[whichRect] = {}
    end
    if (hRuntime.rect[whichRect].onEnterRectAction == nil) then
        hRuntime.rect[whichRect].onEnterRectAction = function()
            hevent.triggerEvent(
                whichRect,
                key,
                {
                    triggerRect = whichRect,
                    triggerUnit = cj.GetTriggerUnit()
                }
            )
        end
    end
    hevent.pool(
        whichRect,
        cj.Condition(hRuntime.rect[whichRect].onEnterRectAction),
        function(tgr)
            local rectRegion = cj.CreateRegion()
            cj.RegionAddRect(rectRegion, whichRect)
            cj.TriggerRegisterEnterRegion(tgr, rectRegion, nil)
        end
    )
    return hevent.registerEvent(whichRect, key, callFunc)
end
hevent.onLeaveRect = function(whichRect, callFunc)
    local key = CONST_EVENT.leaveRect
    if (hRuntime.rect[whichRect] == nil) then
        hRuntime.rect[whichRect] = {}
    end
    if (hRuntime.rect[whichRect].onLeaveRectAction == nil) then
        hRuntime.rect[whichRect].onLeaveRectAction = function()
            hevent.triggerEvent(
                whichRect,
                key,
                {
                    triggerRect = whichRect,
                    triggerUnit = cj.GetTriggerUnit()
                }
            )
        end
    end
    hevent.pool(
        whichRect,
        cj.Condition(hRuntime.rect[whichRect].onLeaveRectAction),
        function(tgr)
            local rectRegion = cj.CreateRegion()
            cj.RegionAddRect(rectRegion, whichRect)
            cj.TriggerRegisterLeaveRegion(tgr, rectRegion, nil)
        end
    )
    return hevent.registerEvent(whichRect, key, callFunc)
end
hevent.onConstructStart = function(whichPlayer, callFunc)
    hevent.pool(whichPlayer, hevent_default_actions.player.constructStart, function(tgr)
        cj.TriggerRegisterPlayerUnitEvent(tgr, whichPlayer, EVENT_PLAYER_UNIT_CONSTRUCT_START, nil)
    end)
    return hevent.registerEvent(whichPlayer, CONST_EVENT.constructStart, callFunc)
end
hevent.onConstructCancel = function(whichPlayer, callFunc)
    hevent.pool(whichPlayer, hevent_default_actions.player.constructCancel, function(tgr)
        cj.TriggerRegisterPlayerUnitEvent(tgr, whichPlayer, EVENT_PLAYER_UNIT_CONSTRUCT_CANCEL, nil)
    end)
    return hevent.registerEvent(whichPlayer, CONST_EVENT.constructCancel, callFunc)
end
hevent.onConstructFinish = function(whichPlayer, callFunc)
    hevent.pool(whichPlayer, hevent_default_actions.player.constructFinish, function(tgr)
        cj.TriggerRegisterPlayerUnitEvent(tgr, whichPlayer, EVENT_PLAYER_UNIT_CONSTRUCT_FINISH, nil)
    end)
    return hevent.registerEvent(whichPlayer, CONST_EVENT.constructFinish, callFunc)
end
hevent.onChat = function(whichPlayer, chatStr, matchAll, callFunc)
    local key = CONST_EVENT.chat .. chatStr .. '|F'
    if (matchAll) then
        key = CONST_EVENT.chat .. chatStr .. '|T'
    end
    local condition = hplayer.get(whichPlayer, key, nil)
    if (condition == nil) then
        condition = function()
            hevent.triggerEvent(
                cj.GetTriggerPlayer(),
                key,
                {
                    triggerPlayer = cj.GetTriggerPlayer(),
                    chatString = cj.GetEventPlayerChatString(),
                    matchedString = cj.GetEventPlayerChatStringMatched()
                }
            )
        end
        hplayer.set(whichPlayer, key, condition)
    end
    hevent.pool(whichPlayer, cj.Condition(condition), function(tgr)
        cj.TriggerRegisterPlayerChatEvent(tgr, whichPlayer, chatStr, matchAll)
    end)
    return hevent.registerEvent(whichPlayer, key, callFunc)
end
hevent.onEsc = function(whichPlayer, callFunc)
    hevent.pool(whichPlayer, hevent_default_actions.player.esc, function(tgr)
        cj.TriggerRegisterPlayerEvent(tgr, whichPlayer, EVENT_PLAYER_END_CINEMATIC)
    end)
    return hevent.registerEvent(whichPlayer, CONST_EVENT.esc, callFunc)
end
hevent.onSelection = function(whichPlayer, qty, callFunc)
    return hevent.registerEvent(whichPlayer, CONST_EVENT.selection .. "#" .. qty, callFunc)
end
hevent.onDeSelection = function(whichPlayer, callFunc)
    hevent.pool(whichPlayer, hevent_default_actions.player.deSelection, function(tgr)
        cj.TriggerRegisterPlayerUnitEvent(tgr, whichPlayer, EVENT_PLAYER_UNIT_DESELECTED, nil)
    end)
    return hevent.registerEvent(whichPlayer, CONST_EVENT.deSelection, callFunc)
end
hevent.onPlayerLeave = function(callFunc)
    return hevent.registerEvent("global", CONST_EVENT.playerLeave, callFunc)
end
hevent.onPickHero = function(callFunc)
    return hevent.registerEvent("global", CONST_EVENT.pickHero, callFunc)
end
hevent.onDestructableDestroy = function(whichDestructable, callFunc)
    hevent.pool(whichDestructable, hevent_default_actions.destructable.destroy, function(tgr)
        cj.TriggerRegisterDeathEvent(tgr, whichDestructable)
    end)
    return hevent.registerEvent(whichDestructable, CONST_EVENT.destructableDestroy, callFunc)
end
hevent.onMapDestructableDestroy = function(callFunc)
    local tgr = cj.CreateTrigger()
    cj.TriggerAddCondition(tgr, cj.Condition(function()
        callFunc({ triggerDestructable = cj.GetTriggerDestructable() })
    end))
    cj.EnumDestructablesInRect(hrect.MAP_INITIAL_PLAYABLE_AREA, nil, function()
        cj.TriggerRegisterDeathEvent(tgr, cj.GetEnumDestructable())
    end)
end
hevent.onCourierBlink = function(whichUnit, callFunc)
    return hevent.registerEvent(whichUnit, CONST_EVENT.courierBlink, callFunc)
end
hevent.onCourierRangePickUp = function(whichUnit, callFunc)
    return hevent.registerEvent(whichUnit, CONST_EVENT.courierRangePickUp, callFunc)
end
hevent.onCourierSeparate = function(whichUnit, callFunc)
    return hevent.registerEvent(whichUnit, CONST_EVENT.courierSeparate, callFunc)
end
hevent.onCourierDeliver = function(whichUnit, callFunc)
    return hevent.registerEvent(whichUnit, CONST_EVENT.courierDeliver, callFunc)
end
hevent.onMoveStart = function(whichUnit, callFunc)
    return hevent.registerEvent(whichUnit, CONST_EVENT.moveStart, callFunc)
end
hevent.onMoving = function(whichUnit, callFunc)
    return hevent.registerEvent(whichUnit, CONST_EVENT.moving, callFunc)
end
hevent.onMoveStop = function(whichUnit, callFunc)
    return hevent.registerEvent(whichUnit, CONST_EVENT.moveStop, callFunc)
end
hevent.onHoldOn = function(whichUnit, callFunc)
    return hevent.registerEvent(whichUnit, CONST_EVENT.holdOn, callFunc)
end
hevent.onStop = function(whichUnit, callFunc)
    return hevent.registerEvent(whichUnit, CONST_EVENT.stop, callFunc)
end
hevent_default_actions = {
    player = {
        esc = cj.Condition(function()
            hevent.triggerEvent(
                cj.GetTriggerPlayer(),
                CONST_EVENT.esc,
                {
                    triggerPlayer = cj.GetTriggerPlayer()
                }
            )
        end),
        deSelection = cj.Condition(function()
            hevent.triggerEvent(
                cj.GetTriggerPlayer(),
                CONST_EVENT.deSelection,
                {
                    triggerPlayer = cj.GetTriggerPlayer(),
                    triggerUnit = cj.GetTriggerUnit()
                }
            )
        end),
        constructStart = cj.Condition(function()
            hevent.triggerEvent(
                hunit.getOwner(cj.GetTriggerUnit()),
                CONST_EVENT.constructStart,
                {
                    triggerUnit = cj.GetTriggerUnit()
                }
            )
        end),
        constructCancel = cj.Condition(function()
            hevent.triggerEvent(
                hunit.getOwner(cj.GetTriggerUnit()),
                CONST_EVENT.constructCancel,
                {
                    triggerUnit = cj.GetCancelledStructure()
                }
            )
        end),
        constructFinish = cj.Condition(function()
            hevent.triggerEvent(
                hunit.getOwner(cj.GetTriggerUnit()),
                CONST_EVENT.constructFinish,
                {
                    triggerUnit = cj.GetConstructedStructure()
                }
            )
        end),
        apm = cj.Condition(function()
            local p = hunit.getOwner(cj.GetTriggerUnit())
            if (his.playing(p) == true and his.playerSite(p) == true and his.computer(p) == false) then
                hplayer.set(p, "apm", hplayer.get(p, "apm", 0) + 1)
            end
        end),
        command = function()
            local p = cj.GetTriggerPlayer()
            local str = string.lower(cj.GetEventPlayerChatString())
            if (str == "-apc") then
                if (hplayer.getIsAutoConvert(p) == true) then
                    hplayer.setIsAutoConvert(p, false)
                    echo("|cffffcc00已关闭|r自动换算", p)
                else
                    hplayer.setIsAutoConvert(p, true)
                    echo("|cffffcc00已开启|r自动换算", p)
                end
            elseif (str == "-apm") then
                echo("您的apm为:" .. hplayer.getApm(p), p)
            elseif (str == "-eff") then
                if (hplayer.qty_current == 1) then
                    if (heffect.enable == true) then
                        heffect.enable = false
                        hlightning.enable = false
                        echo("|cffffcc00已关闭|r大部分特效", p)
                    else
                        heffect.enable = true
                        hlightning.enable = true
                        echo("|cffffcc00已开启|r大部分特效", p)
                    end
                else
                    echo("此命令仅在单人时有效", p)
                end
            elseif (str == "-gg") then
                hplayer.defeat(p, "GG")
            elseif (str == "-random") then
                if (#hhero.selectorPool <= 0 or hplayer.getAllowCommandPick(p) ~= true) then
                    echo("-random命令被禁用", p)
                    return
                end
                local pIndex = hplayer.index(p)
                if (#hhero.player_heroes[pIndex] >= hhero.player_allow_qty[pIndex]) then
                    echo("|cffffff80你已经选够了|r", p)
                    return
                end
                local txt = ""
                local qty = 0
                while (true) do
                    local one = table.random(hhero.selectorPool)
                    table.delete(one, hhero.selectorPool)
                    local u = one
                    if (type(one) == 'string') then
                        u = hunit.create(
                            {
                                whichPlayer = p,
                                unitId = one,
                                x = hhero.bornX,
                                y = hhero.bornY
                            }
                        )
                        hRuntime.hero[u] = {
                            selector = hRuntime.hero[one],
                        }
                        cj.RemoveUnitFromStock(hRuntime.hero[one], string.char2id(one))
                    else
                        table.delete(one, hhero.selectorClearPool)
                        hunit.setInvulnerable(u, false)
                        cj.SetUnitOwner(u, p, true)
                        hunit.portal(u, hhero.bornX, hhero.bornY)
                        cj.PauseUnit(u, false)
                    end
                    table.insert(hhero.player_heroes[pIndex], u)
                    
                    hevent.triggerEvent(
                        "global",
                        CONST_EVENT.pickHero,
                        {
                            triggerPlayer = p,
                            triggerUnit = u
                        }
                    )
                    txt = txt .. " " .. cj.GetUnitName(u)
                    qty = qty + 1
                    if (#hhero.player_heroes[pIndex] >= hhero.player_allow_qty[pIndex]) then
                        break
                    end
                end
                echo("已为您 |cffffff80random|r 挑选了 " .. "|cffffff80" .. math.floor(qty) .. "|r 个：|cffffff80" .. txt .. "|r", p)
            elseif (str == "-repick") then
                if (#hhero.selectorPool <= 0 or hplayer.getAllowCommandPick(p) ~= true) then
                    echo("-repick命令被禁用", p)
                    return
                end
                local pIndex = hplayer.index(p)
                if (#hhero.player_heroes[pIndex] <= 0) then
                    echo("|cffffff80你还没有选过任何单位|r", p)
                    return
                end
                local qty = #hhero.player_heroes[pIndex]
                for _, u in ipairs(hhero.player_heroes[pIndex]) do
                    if (type(hRuntime.hero[u].selector) == "userdata") then
                        table.insert(hhero.selectorPool, hunit.getId(u))
                        cj.AddUnitToStock(hRuntime.hero[u].selector, cj.GetUnitTypeId(u), 1, 1)
                    else
                        local new = hunit.create(
                            {
                                whichPlayer = cj.Player(PLAYER_NEUTRAL_PASSIVE),
                                unitId = cj.GetUnitTypeId(u),
                                x = hRuntime.hero[u].selector[1],
                                y = hRuntime.hero[u].selector[2],
                                isInvulnerable = true,
                                isPause = true
                            }
                        )
                        hRuntime.hero[new] = {
                            selector = { hRuntime.hero[u].selector[1], hRuntime.hero[u].selector[2] },
                        }
                        table.insert(hhero.selectorClearPool, new)
                        table.insert(hhero.selectorPool, new)
                    end
                    hunit.del(u, 0)
                end
                hhero.player_heroes[pIndex] = {}
                echo("已为您 |cffffff80repick|r 了 " .. "|cffffff80" .. qty .. "|r 个单位", p)
            else
                local first = string.sub(str, 1, 1)
                if (first == "+" or first == "-") then
                    
                    local v = string.sub(str, 2, string.len(str))
                    v = tonumber(v)
                    if (v == nil) then
                        return
                    else
                        local val = math.abs(v)
                        if (first == "+") then
                            hcamera.changeDistance(p, val)
                        elseif (first == "-") then
                            hcamera.changeDistance(p, -val)
                        end
                    end
                end
            end
        end,
        leave = cj.Condition(function()
            local p = cj.GetTriggerPlayer()
            hplayer.set(p, "status", hplayer.player_status.leave)
            echo(cj.GetPlayerName(p) .. "离开了游戏～")
            hplayer.clearUnit(p)
            hplayer.qty_current = hplayer.qty_current - 1
            
            hevent.triggerEvent(
                "global",
                CONST_EVENT.playerLeave,
                {
                    triggerPlayer = p
                }
            )
        end),
        selection = cj.Condition(function()
            local triggerPlayer = cj.GetTriggerPlayer()
            local triggerUnit = cj.GetTriggerUnit()
            local click = hplayer.get(triggerPlayer, 'click', nil)
            if (click == nil) then
                click = 0
            end
            hplayer.set(triggerPlayer, 'click', click + 1)
            htime.setTimeout(
                0.3,
                function(ct)
                    htime.delTimer(ct)
                    hplayer.set(triggerPlayer, 'click', hplayer.get(triggerPlayer, 'click') - 1)
                end
            )
            for qty = 1, 10 do
                if (hplayer.get(triggerPlayer, 'click') >= qty) then
                    hevent.triggerEvent(
                        triggerPlayer,
                        CONST_EVENT.selection .. "#" .. qty,
                        {
                            triggerPlayer = triggerPlayer,
                            triggerUnit = triggerUnit,
                            qty = qty
                        }
                    )
                end
            end
        end),
    },
    unit = {
        attackDetect = cj.Condition(function()
            hevent.triggerEvent(
                cj.GetTriggerUnit(),
                CONST_EVENT.attackDetect,
                {
                    triggerUnit = cj.GetTriggerUnit(),
                    targetUnit = cj.GetEventTargetUnit()
                }
            )
        end),
        attackGetTarget = cj.Condition(function()
            hevent.triggerEvent(
                cj.GetTriggerUnit(),
                CONST_EVENT.attackGetTarget,
                {
                    triggerUnit = cj.GetTriggerUnit(),
                    targetUnit = cj.GetEventTargetUnit()
                }
            )
        end),
        beAttackReady = cj.Condition(function()
            hevent.triggerEvent(
                cj.GetTriggerUnit(),
                CONST_EVENT.beAttackReady,
                {
                    triggerUnit = cj.GetTriggerUnit(),
                    targetUnit = cj.GetAttacker(),
                    attacker = cj.GetAttacker()
                }
            )
        end),
        skillStudy = cj.Condition(function()
            hevent.triggerEvent(
                cj.GetTriggerUnit(),
                CONST_EVENT.skillStudy,
                {
                    triggerUnit = cj.GetTriggerUnit(),
                    triggerSkill = cj.GetLearnedSkill()
                }
            )
        end),
        skillReady = cj.Condition(function()
            hevent.triggerEvent(
                cj.GetTriggerUnit(),
                CONST_EVENT.skillReady,
                {
                    triggerUnit = cj.GetTriggerUnit(),
                    triggerSkill = cj.GetSpellAbilityId(),
                    targetUnit = cj.GetSpellTargetUnit(),
                    targetLoc = cj.GetSpellTargetLoc()
                }
            )
        end),
        skillCast = cj.Condition(function()
            hevent.triggerEvent(
                cj.GetTriggerUnit(),
                CONST_EVENT.skillCast,
                {
                    triggerUnit = cj.GetTriggerUnit(),
                    triggerSkill = cj.GetSpellAbilityId(),
                    targetUnit = cj.GetSpellTargetUnit(),
                    targetLoc = cj.GetSpellTargetLoc()
                }
            )
        end),
        skillStop = cj.Condition(function()
            hevent.triggerEvent(
                cj.GetTriggerUnit(),
                CONST_EVENT.skillStop,
                {
                    triggerUnit = cj.GetTriggerUnit(),
                    triggerSkill = cj.GetSpellAbilityId()
                }
            )
        end),
        skillEffect = cj.Condition(function()
            hevent.triggerEvent(
                cj.GetTriggerUnit(),
                CONST_EVENT.skillEffect,
                {
                    triggerUnit = cj.GetTriggerUnit(),
                    triggerSkill = cj.GetSpellAbilityId(),
                    targetUnit = cj.GetSpellTargetUnit(),
                    targetLoc = cj.GetSpellTargetLoc()
                }
            )
        end),
        skillFinish = cj.Condition(function()
            hevent.triggerEvent(
                cj.GetTriggerUnit(),
                CONST_EVENT.skillFinish,
                {
                    triggerUnit = cj.GetTriggerUnit(),
                    triggerSkill = cj.GetSpellAbilityId()
                }
            )
        end),
        upgradeStart = cj.Condition(function()
            hevent.triggerEvent(
                cj.GetTriggerUnit(),
                CONST_EVENT.upgradeStart,
                {
                    triggerUnit = cj.GetTriggerUnit(),
                }
            )
        end),
        upgradeCancel = cj.Condition(function()
            hevent.triggerEvent(
                cj.GetTriggerUnit(),
                CONST_EVENT.upgradeCancel,
                {
                    triggerUnit = cj.GetTriggerUnit(),
                }
            )
        end),
        upgradeFinish = cj.Condition(function()
            hevent.triggerEvent(
                cj.GetTriggerUnit(),
                CONST_EVENT.upgradeFinish,
                {
                    triggerUnit = cj.GetTriggerUnit(),
                }
            )
        end),
        damaged = cj.Condition(function()
            local sourceUnit = cj.GetEventDamageSource()
            local targetUnit = cj.GetTriggerUnit()
            local damage = cj.GetEventDamage()
            local curLife = hunit.getCurLife(targetUnit)
            local isLethal = curLife <= damage
            if (damage > 0.125) then
                local changeLife = math.floor(damage) + 1
                if (isLethal == true) then
                    cj.SetUnitInvulnerable(targetUnit, true)
                else
                    hattr.set(targetUnit, 0, { life = "+" .. changeLife })
                end
                htime.setTimeout(
                    0,
                    function(t)
                        htime.delTimer(t)
                        if (isLethal == true) then
                            cj.SetUnitInvulnerable(targetUnit, false)
                        else
                            hattr.set(targetUnit, 0, { life = "-" .. changeLife })
                            hunit.setCurLife(targetUnit, curLife)
                        end
                        hskill.damage(
                            {
                                sourceUnit = sourceUnit,
                                targetUnit = targetUnit,
                                damage = damage,
                                damageKind = "attack"
                            }
                        )
                    end
                )
            end
        end),
        death = cj.Condition(function()
            local u = cj.GetTriggerUnit()
            local killer = hevent.getLastDamageUnit(u)
            if (killer ~= nil) then
                hplayer.addKill(hunit.getOwner(killer), 1)
            end
            
            hevent.triggerEvent(
                u,
                CONST_EVENT.dead,
                {
                    triggerUnit = u,
                    killer = killer
                }
            )
            
            hevent.triggerEvent(
                killer,
                CONST_EVENT.kill,
                {
                    triggerUnit = killer,
                    killer = killer,
                    targetUnit = u
                }
            )
        end),
        order = cj.Condition(function()
            
            local triggerUnit = cj.GetTriggerUnit()
            local orderId = cj.GetIssuedOrderId()
            local orderTargetUnit = cj.GetOrderTargetUnit()
            local orderTargetItem = cj.GetOrderTargetItem()
            local loc = cj.GetOrderPointLoc()
            local lx = 1.11
            local ly = 2.22
            local lz = 3.33
            if (loc ~= nil) then
                lx = cj.GetLocationX(loc)
                ly = cj.GetLocationY(loc)
                lz = cj.GetLocationZ(loc)
                cj.RemoveLocation(loc)
                loc = nil
            elseif (orderTargetUnit ~= nil) then
                loc = cj.GetUnitLoc(orderTargetUnit)
                lx = cj.GetLocationX(loc)
                ly = cj.GetLocationY(loc)
                lz = cj.GetLocationZ(loc)
                cj.RemoveLocation(loc)
                loc = nil
            elseif (orderTargetItem ~= nil and orderId ~= 852003) then
                loc = cj.Location(cj.GetItemX(orderTargetItem), cj.GetItemY(orderTargetItem))
                lx = cj.GetLocationX(loc)
                ly = cj.GetLocationY(loc)
                lz = cj.GetLocationZ(loc)
                cj.RemoveLocation(loc)
                loc = nil
            end
            if (orderId == 851983 or orderId == 851971 or orderId == 851986
                or (lx ~= 1.11 and ly ~= 2.22 and lz ~= 3.33)) then
                local mov1 = hunit.get(triggerUnit, 'moving', 0)
                if (mov1 == 0) then
                    hunit.set(triggerUnit, 'moving', 1)
                    local x = math.floor(cj.GetUnitX(triggerUnit))
                    local y = math.floor(cj.GetUnitY(triggerUnit))
                    local step = 0
                    htime.setInterval(0.25, function(curTimer)
                        local mov2 = hunit.get(triggerUnit, 'moving', 0)
                        if (mov2 == 0) then
                            htime.delTimer(curTimer)
                            return
                        end
                        local tx = math.floor(cj.GetUnitX(triggerUnit))
                        local ty = math.floor(cj.GetUnitY(triggerUnit))
                        if (mov2 == 1) then
                            
                            if (tx ~= x or ty ~= y) then
                                hunit.set(triggerUnit, 'moving', 2)
                                hevent.triggerEvent(
                                    triggerUnit,
                                    CONST_EVENT.moveStart,
                                    {
                                        triggerUnit = triggerUnit,
                                        targetLoc = cj.GetOrderPointLoc(),
                                    }
                                )
                            else
                                hunit.set(triggerUnit, 'moving', 0)
                            end
                        elseif (mov2 == 2) then
                            
                            step = step + 1
                            hevent.triggerEvent(
                                triggerUnit,
                                CONST_EVENT.moving,
                                {
                                    triggerUnit = triggerUnit,
                                    step = step,
                                }
                            )
                            if (tx == x and ty == y) then
                                
                                hunit.set(triggerUnit, 'moving', 0)
                                hevent.triggerEvent(
                                    triggerUnit,
                                    CONST_EVENT.moveStop,
                                    {
                                        triggerUnit = triggerUnit,
                                    }
                                )
                            end
                        end
                        x = tx
                        y = ty
                    end)
                end
            elseif (orderId == 851993) then
                hunit.set(triggerUnit, 'moving', 0)
                hevent.triggerEvent(
                    triggerUnit,
                    CONST_EVENT.holdOn,
                    {
                        triggerUnit = triggerUnit,
                    }
                )
            elseif (orderId == 851972) then
                hunit.set(triggerUnit, 'moving', 0)
                hevent.triggerEvent(
                    triggerUnit,
                    CONST_EVENT.stop,
                    {
                        triggerUnit = triggerUnit,
                    }
                )
            end
        end),
        sell = cj.Condition(function()
            local u = cj.GetSoldUnit()
            hunit.embed(u)
            hevent.triggerEvent(
                cj.GetSellingUnit(),
                CONST_EVENT.unitSell,
                {
                    triggerUnit = cj.GetSellingUnit(),
                    soldUnit = u,
                    buyingUnit = cj.GetBuyingUnit(),
                }
            )
        end),
    },
    hero = {
        levelUp = cj.Condition(function()
            local u = cj.GetTriggerUnit()
            local diffLv = cj.GetHeroLevel(u) - hhero.getPrevLevel(u)
            if (diffLv < 1) then
                return
            end
            hhero.setPrevLevel(u, cj.GetHeroLevel(u))
            hattr.set(u, 0, {
                str_white = "=" .. cj.GetHeroStr(u, false),
                agi_white = "=" .. cj.GetHeroAgi(u, false),
                int_white = "=" .. cj.GetHeroInt(u, false)
            })
            
            hevent.triggerEvent(
                u,
                CONST_EVENT.levelUp,
                {
                    triggerUnit = u,
                    value = diffLv
                }
            )
        end)
    },
    courier = {
        defaultSkills = cj.Condition(function()
            local abilityId = cj.GetSpellAbilityId()
            if (abilityId == nil) then
                return
            end
            abilityId = string.id2char(abilityId)
            local slk = hslk.id2Value.ability[abilityId]
            if (slk == nil) then
                return
            end
            local triggerUnit = cj.GetTriggerUnit()
            local p = hunit.getOwner(triggerUnit)
            if (slk.Name == "信使-闪烁") then
                hevent.triggerEvent(
                    triggerUnit,
                    CONST_EVENT.courierBlink,
                    {
                        triggerUnit = triggerUnit,
                        triggerSkill = abilityId,
                        targetLoc = cj.GetSpellTargetLoc()
                    }
                )
            elseif (slk.Name == "信使-拾取") then
                local radius = 500 
                hitem.pickRound(triggerUnit, hunit.x(triggerUnit), hunit.y(triggerUnit), radius)
                hevent.triggerEvent(
                    triggerUnit,
                    CONST_EVENT.courierRangePickUp,
                    {
                        triggerUnit = triggerUnit,
                        triggerSkill = abilityId,
                        radius = radius
                    }
                )
            elseif (slk.Name == "信使-拆分物品") then
                local it = cj.GetSpellTargetItem()
                if (it == nil) then
                    echo("物品不存在", p)
                    return
                end
                local id = hitem.getId(it)
                local name = hitem.getName(it)
                local originSlk = hslk.id2Value.item[id]
                if (originSlk ~= nil and originSlk.SHADOW == true) then
                    id = hslk.id2Value.item[originSlk.SHADOW_ID].ITEM_ID
                end
                local charges = hitem.getCharges(it)
                local formulas = hslk.synthesis.profit[id]
                local allowFormulaIndex = {}
                if (formulas ~= nil) then
                    for fi, f in ipairs(formulas) do
                        if (charges >= f.qty) then
                            table.insert(allowFormulaIndex, fi)
                        end
                    end
                end
                local buttons = {}
                if (charges > 1) then
                    table.insert(buttons, { value = 0, label = name .. "x" .. charges })
                end
                if (#allowFormulaIndex > 0) then
                    for ai, a in ipairs(allowFormulaIndex) do
                        local txt = {}
                        for _, frag in ipairs(formulas[a].fragment) do
                            local fragName = hitem.getName(it)
                            table.insert(txt, fragName .. 'x' .. frag[2] * charges)
                        end
                        table.insert(buttons, { value = ai, label = string.implode('+', txt) })
                    end
                end
                if (#buttons < 1) then
                    echo("物品无法拆分", p)
                    return
                end
                if (#buttons == 1) then
                    local err
                    local btnValue = buttons[1].value
                    if (btnValue == 0) then
                        err = hitem.separate(it, 'single', 0, triggerUnit)
                    else
                        err = hitem.separate(it, 'formula', btnValue, triggerUnit)
                    end
                    if (err ~= nil) then
                        echo(err, p)
                        return
                    end
                    hevent.triggerEvent(
                        triggerUnit,
                        CONST_EVENT.courierSeparate,
                        {
                            triggerUnit = triggerUnit,
                            triggerSkill = abilityId,
                            triggerItemId = id,
                        }
                    )
                else
                    hdialog.create(p, {
                        title = "拆分成",
                        buttons = buttons,
                    }, function(btnValue)
                        local err
                        if (btnValue == 0) then
                            err = hitem.separate(it, 'single', 0, triggerUnit)
                        else
                            err = hitem.separate(it, 'formula', btnValue, triggerUnit)
                        end
                        if (err ~= nil) then
                            echo(err, p)
                            return
                        end
                        hevent.triggerEvent(
                            triggerUnit,
                            CONST_EVENT.courierSeparate,
                            {
                                triggerUnit = triggerUnit,
                                triggerSkill = abilityId,
                                triggerItemId = id,
                            }
                        )
                    end)
                end
            elseif (slk.Name == "信使-传递") then
                local pIndex = hplayer.index(p)
                if (hhero.player_heroes[pIndex] == nil or #hhero.player_heroes[pIndex] <= 0) then
                    echo("你没有英雄", p)
                    return
                end
                local items = {}
                hitem.slotLoop(triggerUnit, function(slotItem)
                    table.insert(items, slotItem)
                end)
                if (#items <= 0) then
                    echo("没有物品可传递", p)
                    return
                end
                local x = hunit.x(triggerUnit)
                local y = hunit.y(triggerUnit)
                if (#hhero.player_heroes[pIndex] == 1) then
                    local hero = hhero.player_heroes[pIndex][1] or nil
                    if (hero == nil or false == his.alive(hero) or true == his.deleted(hero)) then
                        echo("英雄不存在", p)
                        return
                    end
                    local itemIds = hitem.synthesis(hero, items)
                    if (#itemIds > 0) then
                        for _, vi in ipairs(itemIds) do
                            local tmpIt = cj.CreateItem(string.char2id(vi.id), x, y)
                            hitem.pick(tmpIt, triggerUnit)
                        end
                    end
                    hevent.triggerEvent(
                        triggerUnit,
                        CONST_EVENT.courierDeliver,
                        {
                            triggerUnit = triggerUnit,
                            triggerSkill = abilityId,
                            targetUnit = hero,
                        }
                    )
                else
                    local buttons = {}
                    for hi, h in ipairs(hhero.player_heroes[pIndex]) do
                        table.insert(buttons, { value = hi, label = hunit.getName(h) })
                    end
                    hdialog.create(p, {
                        title = "要给谁",
                        buttons = buttons,
                    }, function(btnValue)
                        local hero = hhero.player_heroes[pIndex][btnValue] or nil
                        if (hero == nil or false == his.alive(hero) or true == his.deleted(hero)) then
                            echo("英雄不存在", p)
                            return
                        end
                        local itemIds = hitem.synthesis(hero, items)
                        if (#itemIds > 0) then
                            for _, vi in ipairs(itemIds) do
                                local tmpIt = cj.CreateItem(string.char2id(vi.id), x, y)
                                hitem.pick(tmpIt, triggerUnit)
                            end
                        end
                        hevent.triggerEvent(
                            triggerUnit,
                            CONST_EVENT.courierDeliver,
                            {
                                triggerUnit = triggerUnit,
                                triggerSkill = abilityId,
                                targetUnit = hero,
                            }
                        )
                    end)
                end
            end
        end),
    },
    dialog = {
        click = cj.Condition(function()
            local clickedDialog = cj.GetClickedDialog()
            local clickedButton = cj.GetClickedButton()
            local val
            for _, b in ipairs(hRuntime.dialog[clickedDialog].buttons) do
                if (b.button == clickedButton) then
                    val = b.value
                end
            end
            if (type(hRuntime.dialog[clickedDialog].action) == 'function') then
                hRuntime.dialog[clickedDialog].action(val)
            end
            hdialog.del(clickedDialog)
        end)
    },
    item = {
        pickup = cj.Condition(function()
            local it = cj.GetManipulatedItem()
            local itId = cj.GetItemTypeId(it)
            if (table.includes(itId, hslk.attr.item_attack_white.items)) then
                
                return
            end
            itId = string.id2char(itId)
            local itSlk = hitem.getSlk(itId)
            if (itSlk == nil) then
                return
            end
            if (hRuntime.item[it] ~= nil and hRuntime.item[it].positionType == hitem.POSITION_TYPE.UNIT) then
                
                return
            end
            local u = cj.GetTriggerUnit()
            local charges = cj.GetItemCharges(it)
            hitem.del(it, 0)
            it = hitem.create(
                {
                    itemId = itId,
                    whichUnit = u,
                    charges = charges,
                    during = 0
                }
            )
        end),
        drop = cj.Condition(function()
            local it = cj.GetManipulatedItem()
            local itId = cj.GetItemTypeId(it)
            if (table.includes(itId, hslk.attr.item_attack_white.items)) then
                
                return
            end
            itId = string.id2char(itId)
            local u = cj.GetTriggerUnit()
            local charges = cj.GetItemCharges(it)
            if (cj.GetUnitCurrentOrder(u) == 852001) then
                
                
                hevent.triggerEvent(
                    u,
                    CONST_EVENT.itemDrop,
                    {
                        triggerUnit = u,
                        triggerItem = it,
                        targetUnit = cj.GetOrderTargetUnit(),
                    }
                )
                hitem.subProperty(u, itId, charges)
                hitem.setPositionType(it, hitem.POSITION_TYPE.COORDINATE)
                htime.setTimeout(0.05, function(t)
                    htime.delTimer(t)
                    local n = cj.GetItemName(it)
                    if (n ~= nil) then
                        local slk = hitem.getSlk(it)
                        if (slk ~= nil and slk.SHADOW ~= true and slk.SHADOW_ID ~= nil) then
                            local x = cj.GetItemX(it)
                            local y = cj.GetItemY(it)
                            hitem.del(it, 0)
                            hitem.create(
                                {
                                    itemId = slk.SHADOW_ID,
                                    x = x,
                                    y = y,
                                    charges = charges,
                                    during = 0
                                }
                            )
                        end
                    end
                end)
            end
        end),
        pawn = cj.Condition(function()
            
            local u = cj.GetTriggerUnit()
            local it = cj.GetSoldItem()
            local goldcost = hitem.getGoldCost(it)
            local lumbercost = hitem.getLumberCost(it)
            local soldGold = 0
            local soldLumber = 0
            hRuntime.clear(it)
            if (goldcost ~= 0 or lumbercost ~= 0) then
                local p = hunit.getOwner(u)
                local sellRatio = hplayer.getSellRatio(u)
                if (sellRatio ~= 50) then
                    if (sellRatio < 0) then
                        sellRatio = 0
                    elseif (sellRatio > 1000) then
                        sellRatio = 1000
                    end
                    local tempRatio = sellRatio - 50.0
                    soldGold = math.floor(goldcost * tempRatio * 0.01)
                    soldLumber = math.floor(lumbercost * tempRatio * 0.01)
                    if (goldcost ~= 0 and soldGold ~= 0) then
                        hplayer.addGold(p, soldGold)
                    end
                    if (lumbercost ~= 0 and soldLumber ~= 0) then
                        hplayer.addLumber(p, soldLumber)
                    end
                end
            end
            
            hevent.triggerEvent(
                u,
                CONST_EVENT.itemPawn,
                {
                    triggerUnit = u,
                    soldItem = it,
                    buyingUnit = cj.GetBuyingUnit(),
                    soldGold = soldGold,
                    soldLumber = soldLumber,
                }
            )
        end),
        use = cj.Condition(function()
            local u = cj.GetTriggerUnit()
            local it = cj.GetManipulatedItem()
            local itId = hitem.getId(it)
            local perishable = hitem.getIsPerishable(itId)
            
            if (perishable == false) then
                hitem.setCharges(it, hitem.getCharges(it) + 1)
            else
                hitem.subProperty(u, itId, 1)
            end
            
            local triggerData = hunit.get(u, "item-use-" .. itId, {})
            hunit.set(u, "item-use-" .. itId, nil)
            hitem.used(u, it, triggerData)
            
            if (perishable == true and hitem.getCharges(it) <= 0) then
                hitem.del(it)
            end
        end),
        use_s = cj.Condition(function()
            local skillId = string.id2char(cj.GetSpellAbilityId())
            local itId = hslk.item_cooldown_ids[skillId] or nil
            if (itId == nil) then
                return
            end
            hunit.set(cj.GetTriggerUnit(), "item-use-" .. itId, {
                triggerSkill = skillId,
                targetUnit = cj.GetSpellTargetUnit(),
                targetLoc = cj.GetSpellTargetLoc()
            })
        end),
        sell = cj.Condition(function()
            hevent.triggerEvent(
                cj.GetSellingUnit(),
                CONST_EVENT.itemSell,
                {
                    triggerUnit = cj.GetSellingUnit(),
                    soldItem = cj.GetSoldItem(),
                    buyingUnit = cj.GetBuyingUnit()
                }
            )
        end),
        destroy = cj.Condition(function()
            hevent.triggerEvent(
                cj.GetManipulatedItem(),
                CONST_EVENT.itemDestroy,
                {
                    triggerItem = cj.GetManipulatedItem(),
                    triggerUnit = cj.GetKillingUnit()
                }
            )
        end),
    },
    destructable = {
        destroy = cj.Condition(function()
            hevent.triggerEvent(
                cj.GetTriggerDestructable(),
                CONST_EVENT.destructableDestroy,
                {
                    triggerDestructable = cj.GetTriggerDestructable()
                }
            )
        end)
    }
}
htextTag = {
    qty = 0,
    limit = 90
}
htextTag.del = function(ttg, delay)
    if (delay == nil or delay <= 0) then
        htextTag.qty = htextTag.qty - 1
        hRuntime.clear(ttg)
        cj.DestroyTextTag(ttg)
    else
        htime.setTimeout(
            delay,
            function(t)
                htime.delTimer(t)
                htextTag.qty = htextTag.qty - 1
                hRuntime.clear(ttg)
                cj.DestroyTextTag(ttg)
            end
        )
    end
end
htextTag.create = function(msg, size, color, opacity, during)
    if (string.len(msg) <= 0 or during < 0) then
        return
    end
    if (htextTag.qty >= htextTag.limit) then
        return
    end
    if (opacity >= 1) then
        opacity = 1
    elseif (opacity < 0) then
        opacity = 0
    end
    local ttg = cj.CreateTextTag()
    if (ttg == nil) then
        
        print_mb("ttg == nil=" .. msg)
        return
    end
    htextTag.qty = htextTag.qty + 1
    if (color ~= nil and string.len(color) == 6) then
        msg = "|cff" .. color .. msg .. "|r"
    end
    hRuntime.textTag[ttg] = {
        msg = msg,
        size = size,
        color = color,
        opacity = opacity,
        during = during
    }
    cj.SetTextTagText(ttg, msg, size * 0.023 / 10)
    cj.SetTextTagColor(ttg, 255, 255, 255, math.floor(255 * opacity))
    if (during == 0) then
        cj.SetTextTagPermanent(ttg, true)
    else
        cj.SetTextTagPermanent(ttg, false)
        htextTag.del(ttg, during)
    end
    return ttg
end
htextTag.create2XY = function(x, y, msg, size, color, opacity, during, zOffset)
    local ttg = htextTag.create(msg, size, color, opacity, during)
    cj.SetTextTagPos(ttg, x - cj.StringLength(msg) * size * 0.5, y, zOffset)
    return ttg
end
htextTag.create2Unit = function(u, msg, size, color, opacity, during, zOffset)
    return htextTag.create2XY(hunit.x(u), hunit.y(u), msg, size, color, opacity, during, zOffset)
end
htextTag.create2Loc = function(loc, msg, size, color, opacity, during, zOffset)
    return htextTag.create2XY(cj.GetLocationX(loc), cj.GetLocationY(loc), msg, size, color, opacity, during, zOffset)
end
htextTag.createFollowUnit = function(u, msg, size, color, opacity, during, zOffset)
    local ttg = htextTag.create2Unit(u, msg, size, color, opacity, during, zOffset)
    if (ttg == nil) then
        htime.setTimeout(
            0.1,
            function(t)
                htime.delTimer(t)
                htextTag.createFollowUnit(u, msg, size, color, opacity, during, zOffset)
            end
        )
        return
    end
    local txt = htextTag.getMsg(ttg)
    local scale = 0.5
    htime.setInterval(
        0.03,
        function(t)
            if (txt == nil) then
                htime.delTimer(t)
                return
            end
            if (hcamera.model == "zoomin") then
                scale = 0.25
            elseif (hcamera.model == "zoomout") then
                scale = 1
            end
            cj.SetTextTagPos(ttg, hunit.x(u) - cj.StringLength(txt) * size * scale, hunit.y(u), zOffset)
            if (his.alive(u) == true) then
                cj.SetTextTagVisibility(ttg, true)
            else
                cj.SetTextTagVisibility(ttg, false)
            end
        end
    )
    return ttg
end
htextTag.getSize = function(ttg)
    if (hRuntime.textTag[ttg] == nil) then
        return
    end
    return hRuntime.textTag[ttg].size
end
htextTag.getColor = function(ttg)
    if (hRuntime.textTag[ttg] == nil) then
        return
    end
    return hRuntime.textTag[ttg].color
end
htextTag.getMsg = function(ttg)
    if (hRuntime.textTag[ttg] == nil) then
        return
    end
    return hRuntime.textTag[ttg].msg
end
htextTag.getOpacity = function(ttg)
    if (hRuntime.textTag[ttg] == nil) then
        return
    end
    return hRuntime.textTag[ttg].opacity
end
htextTag.getDuring = function(ttg)
    if (hRuntime.textTag[ttg] == nil) then
        return
    end
    return hRuntime.textTag[ttg].during
end
htextTag.style = function(ttg, showType, xSpeed, ySpeed)
    if (ttg == nil) then
        return
    end
    cj.SetTextTagVelocity(ttg, xSpeed, ySpeed)
    local size = htextTag.getSize(ttg)
    local tend = htextTag.getDuring(ttg)
    if (tend <= 0) then
        tend = 0.5
    end
    if (showType == "scale") then
        
        local tnow = 0
        htime.setInterval(
            0.03,
            function(t)
                tnow = tnow + htime.getSetTime(t)
                local msg = htextTag.getMsg(ttg)
                if (msg == nil or tnow >= tend) then
                    htime.delTimer(t)
                    return
                end
                cj.SetTextTagText(ttg, msg, (size * (1 + tnow * 0.5 / tend)) * 0.023 / 10)
            end
        )
    elseif (showType == "shrink") then
        
        local tnow = 0
        htime.setInterval(
            0.03,
            function(t)
                tnow = tnow + htime.getSetTime(t)
                local msg = htextTag.getMsg(ttg)
                if (msg == nil or tnow >= tend) then
                    htime.delTimer(t)
                    return
                end
                cj.SetTextTagText(ttg, msg, (size * (1 - tnow * 0.5 / tend)) * 0.023 / 10)
            end
        )
    elseif (showType == "toggle") then
        
        local tnow = 0
        local tend1 = tend * 0.1
        local tend2 = tend * 0.25
        local tend3 = tend - tend1 - tend2
        local scale = tend * 0.002
        htime.setInterval(
            0.03,
            function(t)
                tnow = tnow + htime.getSetTime(t)
                local msg = htextTag.getMsg(ttg)
                if (msg == nil or tnow >= tend1 + tend2 + tend3) then
                    htime.delTimer(t)
                    return
                end
                if (tnow <= tend1) then
                    cj.SetTextTagText(ttg, msg, (size * (1 + tnow / tend1)) * scale)
                elseif (tnow > tend1 + tend3) then
                    cj.SetTextTagText(ttg, msg, (size * 2 - (5 * (tnow - tend1 - tend3) / tend2)) * scale)
                end
            end
        )
    end
end
hrect = {
    WORLD_BOUND = cj.GetWorldBounds(),
    MAP_INITIAL_PLAYABLE_AREA = cj.Rect(
        cj.GetCameraBoundMinX() - cj.GetCameraMargin(CAMERA_MARGIN_LEFT),
        cj.GetCameraBoundMinY() - cj.GetCameraMargin(CAMERA_MARGIN_BOTTOM),
        cj.GetCameraBoundMaxX() + cj.GetCameraMargin(CAMERA_MARGIN_RIGHT),
        cj.GetCameraBoundMaxY() + cj.GetCameraMargin(CAMERA_MARGIN_TOP)
    ),
    MAP_CAMERA_AREA = cj.Rect(
        cj.GetCameraBoundMinX(),
        cj.GetCameraBoundMinY(),
        cj.GetCameraBoundMaxX(),
        cj.GetCameraBoundMaxY()
    )
}
hrect.create = function(x, y, w, h, name)
    local startX = x - (w * 0.5)
    local startY = y - (h * 0.5)
    local endX = x + (w * 0.5)
    local endY = y + (h * 0.5)
    local r = cj.Rect(startX, startY, endX, endY)
    hRuntime.rect[r] = {
        name = name,
        x = x,
        y = y,
        width = w,
        height = h,
        startX = startX,
        startY = startY,
        endX = endX,
        endY = endY
    }
    return r
end
hrect.getName = function(whichRect)
    if (hRuntime.rect[whichRect]) then
        return hRuntime.rect[whichRect].name
    end
    return ""
end
hrect.getX = function(whichRect)
    if (hRuntime.rect[whichRect]) then
        return hRuntime.rect[whichRect].x
    end
    return 0
end
hrect.getY = function(whichRect)
    if (hRuntime.rect[whichRect]) then
        return hRuntime.rect[whichRect].y
    end
    return 0
end
hrect.getWidth = function(whichRect)
    if (hRuntime.rect[whichRect]) then
        return hRuntime.rect[whichRect].width
    end
    return 0
end
hrect.getHeight = function(whichRect)
    if (hRuntime.rect[whichRect]) then
        return hRuntime.rect[whichRect].height
    end
    return 0
end
hrect.getStartX = function(whichRect)
    if (hRuntime.rect[whichRect]) then
        return hRuntime.rect[whichRect].startX
    end
    return 0
end
hrect.getStartY = function(whichRect)
    if (hRuntime.rect[whichRect]) then
        return hRuntime.rect[whichRect].startY
    end
    return 0
end
hrect.getEndX = function(whichRect)
    if (hRuntime.rect[whichRect]) then
        return hRuntime.rect[whichRect].endX
    end
    return 0
end
hrect.getEndY = function(whichRect)
    if (hRuntime.rect[whichRect]) then
        return hRuntime.rect[whichRect].endY
    end
    return 0
end
hrect.del = function(whichRect, delay)
    delay = delay or 0
    if (delay == nil or delay <= 0) then
        hRuntime.clear(whichRect)
        cj.RemoveRect(whichRect)
    else
        htime.setTimeout(
            delay,
            function(t)
                htime.delTimer(t)
                hRuntime.clear(whichRect)
                cj.RemoveRect(whichRect)
            end
        )
    end
end
hrect.lock = function(bean)
    
    bean.during = bean.during or 0
    if (bean.during <= 0 or (bean.whichRect == nil and (bean.width <= 0 or bean.height <= 0))) then
        return
    end
    if (bean.whichRect == nil and bean.whichUnit == nil and bean.whichLoc == nil
        and (bean.whichX == nil or bean.whichY == nil)) then
        return
    end
    if (bean.type == nil) then
        bean.type = "square"
    end
    if (bean.type ~= "square" and bean.type ~= "circle") then
        return
    end
    local inc = 0
    local lockGroup = {}
    htime.setInterval(
        0.1,
        function(t)
            inc = inc + 1
            if (inc > (bean.during / 0.10)) then
                htime.delTimer(t)
                hgroup.clear(lockGroup, true, false)
                return
            end
            local x = bean.whichX
            local y = bean.whichY
            local w = bean.width
            local h = bean.height
            
            if (bean.whichLoc) then
                x = cj.GetLocationX(bean.whichLoc)
                y = cj.GetLocationY(bean.whichLoc)
            end
            
            if (bean.whichUnit) then
                if (his.dead(bean.whichUnit)) then
                    htime.delTimer(t)
                    return
                end
                x = hunit.x(bean.whichUnit)
                y = hunit.y(bean.whichUnit)
            end
            
            if (bean.whichRect) then
                x = cj.GetRectCenterX(bean.whichRect)
                y = cj.GetRectCenterY(bean.whichRect)
                if (w == nil) then
                    w = hrect.getWidth(bean.whichRect)
                end
                if (h == nil) then
                    h = hrect.getHeight(bean.whichRect)
                end
            end
            local lockRect
            local tempGroup
            if (bean.type == "square") then
                lockRect = cj.Rect(x - (w * 0.5), y - (h * 0.5), x + (w * 0.5), y + (h * 0.5))
                tempGroup = hgroup.createByRect(lockRect)
            elseif (bean.type == "circle") then
                tempGroup = hgroup.createByXY(x, y, math.min(w / 2, h / 2))
            end
            hgroup.loop(
                tempGroup,
                function(u)
                    hgroup.addUnit(lockGroup, u)
                end,
                true
            )
            hgroup.loop(
                lockGroup,
                function(u)
                    print_mb(hunit.getName(u))
                    local distance = 0.000
                    local deg = 0
                    local xx = hunit.x(u)
                    local yy = hunit.y(u)
                    if (bean.type == "square") then
                        if (his.borderRect(lockRect, xx, yy) == true) then
                            deg = math.getDegBetweenXY(x, y, xx, yy)
                            distance = math.getMaxDistanceInRect(w, h, deg)
                        end
                    elseif (bean.type == "circle") then
                        if (math.getDistanceBetweenXY(x, y, xx, yy) > math.min(w / 2, h / 2)) then
                            deg = math.getDegBetweenXY(x, y, xx, yy)
                            distance = math.min(w / 2, h / 2)
                        end
                    end
                    if (distance > 0.0) then
                        local polar = math.polarProjection(x, y, distance, deg)
                        hunit.portal(u, polar.x, polar.y)
                        heffect.bindUnit("Abilities\\Spells\\Human\\Defend\\DefendCaster.mdl", u, "origin", 0.2)
                    end
                end,
                false
            )
            if (lockRect ~= nil) then
                hrect.del(lockRect)
            end
        end
    )
end
hplayer = {
    
    players = {},
    
    player_aggressive = cj.Player(PLAYER_NEUTRAL_AGGRESSIVE),
    
    player_victim = cj.Player(bj_PLAYER_NEUTRAL_VICTIM),
    
    player_extra = cj.Player(bj_PLAYER_NEUTRAL_EXTRA),
    
    player_passive = cj.Player(PLAYER_NEUTRAL_PASSIVE),
    
    player_status = {
        none = "无参与",
        gaming = "游戏中",
        leave = "已离开"
    },
    
    qty_max = 12,
    
    qty_current = 0,
    
    convert_ratio = 1000000
}
hplayer.set = function(whichPlayer, key, value)
    if (whichPlayer == nil) then
        print_stack()
        return
    end
    local index = hplayer.index(whichPlayer)
    if (hRuntime.player[index] == nil) then
        hRuntime.player[index] = {}
    end
    hRuntime.player[index][key] = value
end
hplayer.get = function(whichPlayer, key, default)
    if (whichPlayer == nil) then
        print_stack()
        return
    end
    local index = hplayer.index(whichPlayer)
    if (hRuntime.player[index] == nil) then
        hRuntime.player[index] = {}
    end
    return hRuntime.player[index][key] or default
end
hplayer.adjustPlayerState = function(delta, whichPlayer, whichPlayerState)
    if delta > 0 then
        if whichPlayerState == PLAYER_STATE_RESOURCE_GOLD then
            cj.SetPlayerState(
                whichPlayer,
                PLAYER_STATE_GOLD_GATHERED,
                cj.GetPlayerState(whichPlayer, PLAYER_STATE_GOLD_GATHERED) + delta
            )
        elseif whichPlayerState == PLAYER_STATE_RESOURCE_LUMBER then
            cj.SetPlayerState(
                whichPlayer,
                PLAYER_STATE_LUMBER_GATHERED,
                cj.GetPlayerState(whichPlayer, PLAYER_STATE_LUMBER_GATHERED) + delta
            )
        end
    end
    cj.SetPlayerState(whichPlayer, whichPlayerState, cj.GetPlayerState(whichPlayer, whichPlayerState) + delta)
end
hplayer.setPlayerState = function(whichPlayer, whichPlayerState, value)
    local oldValue = cj.GetPlayerState(whichPlayer, whichPlayerState)
    hplayer.adjustPlayerState(value - oldValue, whichPlayer, whichPlayerState)
end
hplayer.loop = function(call)
    if (call == nil) then
        return
    end
    for i = 1, hplayer.qty_max, 1 do
        call(hplayer.players[i], i)
    end
end
hplayer.setConvertRatio = function(ratio)
    hplayer.convert_ratio = ratio
end
hplayer.getConvertRatio = function()
    return hplayer.convert_ratio
end
hplayer.index = function(whichPlayer)
    return cj.GetPlayerId(whichPlayer) + 1
end
hplayer.getName = function(whichPlayer)
    return cj.GetPlayerName(whichPlayer)
end
hplayer.setName = function(whichPlayer, name)
    cj.SetPlayerName(whichPlayer, name)
end
hplayer.getSelection = function(whichPlayer)
    return hplayer.get(whichPlayer, "selection", nil)
end
hplayer.getStatus = function(whichPlayer)
    return hplayer.get(whichPlayer, "status", hplayer.player_status.none)
end
hplayer.setStatus = function(whichPlayer, status)
    hplayer.set(whichPlayer, "status", status)
end
hplayer.getPrestige = function(whichPlayer)
    return hplayer.get(whichPlayer, "prestige", "无称号")
end
hplayer.setPrestige = function(whichPlayer, prestige)
    hplayer.set(whichPlayer, "prestige", prestige)
end
hplayer.getAllowCommandPick = function(whichPlayer)
    return hplayer.get(whichPlayer, "allowCommandPick", false)
end
hplayer.setAllowCommandPick = function(whichPlayer, flag)
    hplayer.set(whichPlayer, "allowCommandPick", flag)
end
hplayer.getApm = function(whichPlayer)
    return hplayer.get(whichPlayer, "apm", 0)
end
hplayer.setAllowCameraDistance = function(whichPlayer, flag)
    if (whichPlayer == nil) then
        return
    end
    if (type(flag) ~= "boolean") then
        flag = false
    end
    hplayer.set(whichPlayer, "allowCameraDistance", flag)
end
hplayer.getAllowCameraDistance = function(whichPlayer)
    return hplayer.get(whichPlayer, "allowCameraDistance")
end
hplayer.getRandomHero = function()
    local pi = {}
    for k, v in ipairs(hplayer.players) do
        if (hplayer.setStatus(v) == hplayer.status.gaming) then
            table.insert(pi, k)
        end
    end
    if (#pi <= 0) then
        return nil
    end
    local ri = math.random(1, #pi)
    return hhero.getPlayerUnit(
        hplayer.players[pi[ri]],
        math.random(1, hhero.getPlayerAllowQty(hplayer.players[pi[ri]]))
    )
end
hplayer.hideUnit = function(whichPlayer)
    if (whichPlayer == nil) then
        return
    end
    local g = hgroup.createByRect(
        hrect.WORLD_BOUND,
        function(filterUnit)
            return hunit.getOwner(filterUnit) == whichPlayer
        end
    )
    hgroup.loop(g, function(enumUnit)
        cj.ShowUnit(enumUnit, false)
    end, true)
end
hplayer.clearUnit = function(whichPlayer)
    if (whichPlayer == nil) then
        return
    end
    local g = hgroup.createByRect(
        hrect.WORLD_BOUND,
        function(filterUnit)
            return hunit.getOwner(filterUnit) == whichPlayer
        end
    )
    hgroup.clear(g, true, true)
end
hplayer.defeat = function(whichPlayer, tips)
    if (whichPlayer == nil) then
        return
    end
    if (tips == "" or tips == nil) then
        tips = "失败"
    end
    hplayer.clearUnit(whichPlayer)
    cj.RemovePlayer(whichPlayer, PLAYER_GAME_RESULT_DEFEAT)
    if hplayer.qty_current > 1 then
        cj.DisplayTimedTextFromPlayer(whichPlayer, 0, 0, 60, cj.GetLocalizedString("PLAYER_DEFEATED"))
    end
    if (cj.GetPlayerController(whichPlayer) == MAP_CONTROL_USER) then
        hdialog.create(whichPlayer, {
            title = tips,
            buttons = { cj.GetLocalizedString("GAMEOVER_QUIT_MISSION") }
        }, function()
            cj.EndGame(true)
        end)
    end
end
hplayer.victory = function(whichPlayer, tips)
    if (whichPlayer == nil) then
        return
    end
    if (tips == "" or tips == nil) then
        tips = "胜利"
    end
    cj.RemovePlayer(whichPlayer, PLAYER_GAME_RESULT_VICTORY)
    if hplayer.qty_current > 1 then
        cj.DisplayTimedTextFromPlayer(whichPlayer, 0, 0, 60, cj.GetLocalizedString("PLAYER_VICTORIOUS"))
    end
    if (cj.GetPlayerController(whichPlayer) == MAP_CONTROL_USER) then
        cg.bj_changeLevelShowScores = true
        hdialog.create(whichPlayer, {
            title = tips,
            buttons = { cj.GetLocalizedString("GAMEOVER_QUIT_MISSION") }
        }, function()
            cj.EndGame(true)
        end)
    end
end
hplayer.setIsAutoConvert = function(whichPlayer, b)
    hplayer.set(whichPlayer, "isAutoConvert", b)
end
hplayer.getIsAutoConvert = function(whichPlayer)
    return hplayer.get(whichPlayer, "isAutoConvert", false)
end
hplayer.setIsShocking = function(whichPlayer, b)
    hplayer.set(whichPlayer, "isShocking", b)
end
hplayer.getIsShocking = function(whichPlayer)
    return hplayer.get(whichPlayer, "isShocking", false)
end
hplayer.getExceedLumber = function(whichPlayer, exceedGold)
    local current = hplayer.get(whichPlayer, "exceed_gold", 0)
    local l = 0
    if (current < 0) then
        current = 0
    end
    current = current + exceedGold
    if (current > 10000000) then
        current = 10000000
    end
    
    if (hplayer.getIsAutoConvert(whichPlayer) == true and current >= hplayer.getConvertRatio()) then
        l = math.floor(current / player_convert_ratio)
        current = math.floor(current - l * player_convert_ratio)
    end
    hplayer.set(whichPlayer, "exceed_gold", current)
    return l
end
hplayer.getDamage = function(whichPlayer)
    return hplayer.get(whichPlayer, "damage", 0)
end
hplayer.addDamage = function(whichPlayer, val)
    if (whichPlayer == nil) then
        return
    end
    val = val or 0
    hplayer.set(whichPlayer, "damage", hplayer.getDamage(whichPlayer) + val)
end
hplayer.getBeDamage = function(whichPlayer)
    return hplayer.get(whichPlayer, "beDamage", 0)
end
hplayer.addBeDamage = function(whichPlayer, val)
    if (whichPlayer == nil) then
        return
    end
    val = val or 0
    hplayer.set(whichPlayer, "beDamage", hplayer.getBeDamage(whichPlayer) + val)
end
hplayer.getKill = function(whichPlayer)
    return hplayer.get(whichPlayer, "kill", 0)
end
hplayer.addKill = function(whichPlayer, val)
    if (whichPlayer == nil) then
        return
    end
    val = val or 1
    hplayer.set(whichPlayer, "kill", hplayer.getKill(whichPlayer) + val)
end
hplayer.diffGoldRatio = function(whichPlayer, diff, during)
    if (diff ~= 0) then
        hplayer.set(whichPlayer, "goldRatio", hplayer.get(whichPlayer, "goldRatio") + diff)
        if (during > 0) then
            htime.setTimeout(
                during,
                function(t)
                    htime.delTimer(t)
                    hplayer.set(whichPlayer, "goldRatio", hplayer.get(whichPlayer, "goldRatio") - diff)
                end
            )
        end
    end
end
hplayer.setGoldRatio = function(whichPlayer, val, during)
    hplayer.diffGoldRatio(whichPlayer, val - hplayer.get(whichPlayer, "goldRatio"), during)
end
hplayer.addGoldRatio = function(whichPlayer, val, during)
    hplayer.diffGoldRatio(whichPlayer, val, during)
end
hplayer.subGoldRatio = function(whichPlayer, val, during)
    hplayer.diffGoldRatio(whichPlayer, -val, during)
end
hplayer.getGoldRatio = function(whichPlayer)
    return hplayer.get(whichPlayer, "goldRatio") or 100
end
hplayer.diffLumberRatio = function(whichPlayer, diff, during)
    if (diff ~= 0) then
        hplayer.set(whichPlayer, "lumberRatio", hplayer.get(whichPlayer, "lumberRatio") + diff)
        if (during > 0) then
            htime.setTimeout(
                during,
                function(t)
                    htime.delTimer(t)
                    hplayer.set(whichPlayer, "lumberRatio", hplayer.get(whichPlayer, "lumberRatio") - diff)
                end
            )
        end
    end
end
hplayer.setLumberRatio = function(whichPlayer, val, during)
    local index = hplayer.index(whichPlayer)
    hplayer.diffLumberRatio(whichPlayer, val - hplayer.get(whichPlayer, "lumberRatio"), during)
end
hplayer.addLumberRatio = function(whichPlayer, val, during)
    hplayer.diffLumberRatio(whichPlayer, val, during)
end
hplayer.subLumberRatio = function(whichPlayer, val, during)
    hplayer.diffLumberRatio(whichPlayer, -val, during)
end
hplayer.getLumberRatio = function(whichPlayer)
    return hplayer.get(whichPlayer, "lumberRatio")
end
hplayer.diffExpRatio = function(whichPlayer, diff, during)
    if (diff ~= 0) then
        hplayer.set(whichPlayer, "expRatio", hplayer.get(whichPlayer, "expRatio") + diff)
        if (during > 0) then
            htime.setTimeout(
                during,
                function(t)
                    htime.delTimer(t)
                    hplayer.set(whichPlayer, "expRatio", hplayer.get(whichPlayer, "expRatio") - diff)
                end
            )
        end
    end
end
hplayer.setExpRatio = function(whichPlayer, val, during)
    local index = hplayer.index(whichPlayer)
    hplayer.diffExpRatio(whichPlayer, val - hplayer.get(whichPlayer, "expRatio"), during)
end
hplayer.addExpRatio = function(whichPlayer, val, during)
    hplayer.diffExpRatio(whichPlayer, val, during)
end
hplayer.subExpRatio = function(whichPlayer, val, during)
    hplayer.diffExpRatio(whichPlayer, -val, during)
end
hplayer.getExpRatio = function(whichPlayer)
    return hplayer.get(whichPlayer, "expRatio")
end
hplayer.diffSellRatio = function(whichPlayer, diff, during)
    if (diff ~= 0) then
        hplayer.set(whichPlayer, "sellRatio", hplayer.get(whichPlayer, "sellRatio") + diff)
        if (during > 0) then
            htime.setTimeout(
                during,
                function(t)
                    htime.delTimer(t)
                    hplayer.set(whichPlayer, "sellRatio", hplayer.get(whichPlayer, "sellRatio") - diff)
                end
            )
        end
    end
end
hplayer.setSellRatio = function(whichPlayer, val, during)
    local index = hplayer.index(whichPlayer)
    hplayer.diffSellRatio(whichPlayer, val - hplayer.get(whichPlayer, "sellRatio"), during)
end
hplayer.addSellRatio = function(whichPlayer, val, during)
    hplayer.diffSellRatio(whichPlayer, val, during)
end
hplayer.subSellRatio = function(whichPlayer, val, during)
    hplayer.diffSellRatio(whichPlayer, -val, during)
end
hplayer.getSellRatio = function(whichPlayer)
    return hplayer.get(whichPlayer, "sellRatio", 50)
end
hplayer.getTotalGold = function(whichPlayer)
    return hplayer.get(whichPlayer, "totalGold")
end
hplayer.addTotalGold = function(whichPlayer, val)
    return hplayer.set(whichPlayer, "totalGold", hplayer.getTotalGold(whichPlayer) + val)
end
hplayer.getTotalGoldCost = function(whichPlayer)
    return hplayer.get(whichPlayer, "totalGoldCost")
end
hplayer.addTotalGoldCost = function(whichPlayer, val)
    return hplayer.set(whichPlayer, "totalGoldCost", hplayer.getTotalGoldCost(whichPlayer) + val)
end
hplayer.getTotalLumber = function(whichPlayer)
    return hplayer.get(whichPlayer, "totalLumber")
end
hplayer.addTotalLumber = function(whichPlayer, val)
    return hplayer.set(whichPlayer, "totalLumber", hplayer.getTotalLumber(whichPlayer) + val)
end
hplayer.getTotalLumberCost = function(whichPlayer)
    return hplayer.get(whichPlayer, "totalLumberCost")
end
hplayer.addTotalLumberCost = function(whichPlayer, val)
    return hplayer.set(whichPlayer, "totalLumberCost", hplayer.getTotalLumberCost(whichPlayer) + val)
end
hplayer.adjustGold = function(whichPlayer)
    local prvSys = hplayer.get(whichPlayer, "prevGold")
    local relSys = cj.GetPlayerState(whichPlayer, PLAYER_STATE_RESOURCE_GOLD)
    if (prvSys > relSys) then
        hplayer.addTotalGoldCost(whichPlayer, prvSys - relSys)
    elseif (prvSys < relSys) then
        hplayer.addTotalGold(whichPlayer, relSys - prvSys)
    end
    hplayer.set(whichPlayer, "prevGold", relSys)
end
hplayer.adjustLumber = function(whichPlayer)
    local prvSys = hplayer.get(whichPlayer, "prevLumber")
    local relSys = cj.GetPlayerState(whichPlayer, PLAYER_STATE_RESOURCE_LUMBER)
    if (prvSys > relSys) then
        hplayer.addTotalLumberCost(whichPlayer, prvSys - relSys)
    elseif (prvSys < relSys) then
        hplayer.addTotalLumber(whichPlayer, relSys - prvSys)
    end
    hplayer.set(whichPlayer, "prevLumber", relSys)
end
hplayer.getGold = function(whichPlayer)
    return cj.GetPlayerState(whichPlayer, PLAYER_STATE_RESOURCE_GOLD)
end
hplayer.setGold = function(whichPlayer, gold)
    if (whichPlayer == nil) then
        return
    end
    local exceedLumber = 0
    
    if (gold > 1000000) then
        exceedLumber = hplayer.getExceedLumber(whichPlayer, gold - 1000000)
        if (hplayer.getIsAutoConvert(whichPlayer) == true) then
            if (exceedLumber > 0) then
                hplayer.adjustPlayerState(exceedLumber, whichPlayer, PLAYER_STATE_RESOURCE_LUMBER)
                hplayer.adjustLumber(whichPlayer)
            end
        end
        gold = 1000000
    end
    hplayer.setPlayerState(whichPlayer, PLAYER_STATE_RESOURCE_GOLD, gold)
    hplayer.adjustGold(whichPlayer)
end
hplayer.addGold = function(whichPlayer, gold, u)
    if (whichPlayer == nil) then
        return
    end
    gold = cj.R2I(gold * hplayer.getGoldRatio(whichPlayer) / 100)
    hplayer.setGold(whichPlayer, hplayer.getGold(whichPlayer) + gold)
    if (u ~= nil) then
        htextTag.style(htextTag.create2Unit(u, "+" .. gold .. " Gold", 7, "ffcc00", 1, 1.70, 60.00), "toggle", 0, 0.20)
        hsound.sound2Unit(cg.gg_snd_ReceiveGold, 100, u)
    end
end
hplayer.subGold = function(whichPlayer, gold)
    if (whichPlayer == nil) then
        return
    end
    hplayer.setGold(whichPlayer, hplayer.getGold(whichPlayer) - gold)
end
hplayer.getLumber = function(whichPlayer)
    return cj.GetPlayerState(whichPlayer, PLAYER_STATE_RESOURCE_LUMBER)
end
hplayer.setLumber = function(whichPlayer, lumber)
    if (whichPlayer == nil) then
        return
    end
    hplayer.setPlayerState(whichPlayer, PLAYER_STATE_RESOURCE_LUMBER, lumber)
    hplayer.adjustLumber(whichPlayer)
end
hplayer.addLumber = function(whichPlayer, lumber, u)
    if (whichPlayer == nil) then
        return
    end
    lumber = cj.R2I(lumber * hplayer.getLumberRatio(whichPlayer) / 100)
    hplayer.setLumber(whichPlayer, hplayer.getLumber(whichPlayer) + lumber)
    if (u ~= nil) then
        htextTag.style(
            htextTag.create2Unit(u, "+" .. lumber .. " Lumber", 7, "80ff80", 1, 1.70, 60.00),
            "toggle",
            0,
            0.20
        )
        hsound.sound2Unit(cg.gg_snd_BundleOfLumber, 100, u)
    end
end
hplayer.subLumber = function(whichPlayer, lumber)
    if (whichPlayer == nil) then
        return
    end
    hplayer.setLumber(whichPlayer, hplayer.getLumber(whichPlayer) - lumber)
end
haward = {
    shareRange = 1000.00
}
haward.setShareRange = function(range)
    haward.shareRange = math.round(range)
end
haward.forUnit = function(whichUnit, exp, gold, lumber)
    if (whichUnit == nil) then
        return
    end
    local p = hunit.getOwner(whichUnit)
    local index = hplayer.index(p)
    local realGold = cj.R2I(gold)
    local realLumber = cj.R2I(lumber)
    local realExp = cj.R2I(exp)
    if (realExp >= 1 and his.hero(whichUnit)) then
        hunit.addExp(whichUnit, realExp, true)
    end
    local floatStr = ""
    local ttgColorLen = 0
    if (realGold >= 1) then
        hplayer.addGold(p, realGold, whichUnit)
    end
    if (realLumber >= 1) then
        hplayer.addLumber(p, realLumber, whichUnit)
    end
    if (floatStr ~= "") then
        local ttg = htextTag.create2Unit(whichUnit, floatStr, 7, "", 1, 1.70, 60.00)
        cj.SetTextTagPos(
            ttg,
            hunit.x(whichUnit) - (string.len(floatStr) - ttgColorLen) * 7 * 0.5,
            hunit.y(whichUnit),
            50
        )
        htextTag.style(ttg, "toggle", 0, 0.25)
    end
end
haward.forUnitExp = function(whichUnit, exp)
    return haward.forUnit(whichUnit, exp, 0, 0)
end
haward.forUnitGold = function(whichUnit, gold)
    return haward.forUnit(whichUnit, 0, gold, 0)
end
haward.forUnitLumber = function(whichUnit, lumber)
    return haward.forUnit(whichUnit, 0, 0, lumber)
end
haward.forGroup = function(whichUnit, exp, gold, lumber)
    local g = hgroup.createByUnit(
        whichUnit,
        haward.shareRange,
        function(filterUnit)
            local flag = true
            if (his.hero(filterUnit) == false) then
                flag = false
            end
            if (his.ally(whichUnit, filterUnit) == false) then
                flag = false
            end
            if (his.alive(filterUnit) == false) then
                flag = false
            end
            if (his.structure(filterUnit) == true) then
                flag = false
            end
            return flag
        end
    )
    local gCount = hgroup.count(g)
    if (gCount <= 0) then
        return
    end
    local cutExp = cj.R2I(exp / gCount)
    local cutGold = cj.R2I(gold / gCount)
    local cutLumber = cj.R2I(lumber / gCount)
    if (exp > 0 and cutExp < 1) then
        cutExp = 1
    end
    hgroup.loop(
        g,
        function(u)
            haward.forUnit(u, cutExp, cutGold, cutLumber)
        end,
        true
    )
end
haward.forGroupExp = function(whichUnit, exp)
    haward.forGroup(whichUnit, exp, 0, 0)
end
haward.forGroupGold = function(whichUnit, gold)
    haward.forGroup(whichUnit, 0, gold, 0)
end
haward.forGroupLumber = function(whichUnit, lumber)
    haward.forGroup(whichUnit, 0, 0, lumber)
end
haward.forPlayer = function(gold, lumber)
    if (hplayer.qty_current <= 0) then
        return
    end
    local cutGold = math.floor(gold / hplayer.qty_current)
    local cutLumber = math.floor(lumber / hplayer.qty_current)
    for i = 1, hplayer.qty_max, 1 do
        if (hplayer.getStatus(hplayer.players[i]) == hplayer.player_status.gaming) then
            if (cutGold > 0) then
                hplayer.addGold(hplayer.players[i], cutGold)
            end
            if (cutLumber > 0) then
                hplayer.addLumber(hplayer.players[i], cutLumber)
            end
        end
    end
end
haward.forPlayerGold = function(gold)
    haward.forPlayer(gold, 0)
end
haward.forPlayerLumber = function(lumber)
    haward.forPlayer(0, lumber)
end
hunit = {}
hunit.set = function(whichUnit, key, value)
    if (whichUnit == nil) then
        print_stack()
        return
    end
    if (hRuntime.unit[whichUnit] ~= nil) then
        hRuntime.unit[whichUnit][key] = value
    end
end
hunit.get = function(whichUnit, key, default)
    if (whichUnit == nil) then
        print_stack()
        return
    end
    if (hRuntime.unit[whichUnit] == nil) then
        return default
    end
    return hRuntime.unit[whichUnit][key] or default
end
hunit.getSlk = function(whichUnit)
    local default = {
        
        UNIT_ID = nil,
        UNIT_TYPE = "normal",
        CUSTOM_DATA = {},
        Art = nil,
        file = nil,
        goldcost = 0,
        lumbercost = 0,
        cool1 = 1.50,
        def = 0,
        rangeN1 = 100,
        sight = 1800,
        nsight = 800,
    }
    if (whichUnit ~= nil) then
        default.Name = cj.GetUnitName(whichUnit)
    else
        default.Name = ""
    end
    if (whichUnit == nil) then
        return default
    elseif (his.deleted(whichUnit)) then
        return default
    end
    if (his.hero(whichUnit)) then
        default.UNIT_TYPE = "hero"
        default.Primary = nil
        default.STR = cj.GetHeroStr(whichUnit, false)
        default.AGI = cj.GetHeroStr(whichUnit, false)
        default.INT = cj.GetHeroStr(whichUnit, false)
        default.STRplus = nil
        default.AGIplus = nil
        default.INTplus = nil
    end
    return hslk.id2Value.unit[hunit.getId(whichUnit)] or default
end
hunit.getAvatar = function(whichUnit)
    local slk = hunit.getSlk(whichUnit)
    return slk.Art or "ReplaceableTextures\\CommandButtons\\BTNSelectHeroOn.blp"
end
hunit.getMaxLife = function(u)
    return cj.GetUnitState(u, UNIT_STATE_MAX_LIFE)
end
hunit.getCurLife = function(u)
    return cj.GetUnitState(u, UNIT_STATE_LIFE)
end
hunit.setCurLife = function(u, val)
    cj.SetUnitState(u, UNIT_STATE_LIFE, val)
end
hunit.addCurLife = function(u, val)
    cj.SetUnitState(u, UNIT_STATE_LIFE, hunit.getCurLife(u) + val)
end
hunit.subCurLife = function(u, val)
    cj.SetUnitState(u, UNIT_STATE_LIFE, hunit.getCurLife(u) - val)
end
hunit.getMaxMana = function(u)
    return cj.GetUnitState(u, UNIT_STATE_MAX_MANA)
end
hunit.getCurMana = function(u)
    return cj.GetUnitState(u, UNIT_STATE_MANA)
end
hunit.setCurMana = function(u, val)
    cj.SetUnitState(u, UNIT_STATE_MANA, val)
end
hunit.addCurMana = function(u, val)
    cj.SetUnitState(u, UNIT_STATE_MANA, hunit.getCurMana(u) + val)
end
hunit.subCurMana = function(u, val)
    cj.SetUnitState(u, UNIT_STATE_MANA, hunit.getCurMana(u) - val)
end
hunit.getCurLifePercent = function(u)
    return math.round(100 * (hunit.getCurLife(u) / hunit.getMaxLife(u)))
end
hunit.setCurLifePercent = function(u, val)
    local max = hunit.getMaxLife(u)
    local life = math.floor(max * val * 0.01)
    if (life < 0) then
        life = 0
    end
    hunit.setCurLife(u, life)
end
hunit.getCurManaPercent = function(u)
    return math.round(100 * (hunit.getCurMana(u) / hunit.getMaxMana(u)))
end
hunit.setCurManaPercent = function(u, val)
    local max = hunit.getMaxMana(u)
    local mana = math.floor(max * val * 0.01)
    if (mana < 0) then
        mana = 0
    end
    hunit.setCurMana(u, mana)
end
hunit.addExp = function(u, val, showEffect)
    if (u == nil or val == nil or val <= 0) then
        return
    end
    if (type(showEffect) ~= "boolean") then
        showEffect = false
    end
    val = cj.R2I(val * hplayer.getExpRatio(hunit.getOwner(u)) / 100)
    cj.AddHeroXP(u, val, showEffect)
    htextTag.style(htextTag.create2Unit(u, "+" .. val .. " Exp", 7, "c4c4ff", 1, 1.70, 60.00), "toggle", 0, 0.20)
end
hunit.setPeriod = function(u, life)
    cj.UnitApplyTimedLife(u, string.char2id("BTLF"), life)
end
hunit.setFacing = function(u, facing)
    cj.SetUnitFacing(u, facing)
end
hunit.getFacing = function(u)
    return cj.GetUnitFacing(u)
end
hunit.show = function(u)
    cj.ShowUnit(u, true)
end
hunit.hide = function(u)
    cj.ShowUnit(u, false)
end
hunit.pause = function(u)
    cj.PauseUnit(u, true)
end
hunit.resume = function(u)
    cj.PauseUnit(u, false)
end
hunit.x = function(u)
    return cj.GetUnitX(u)
end
hunit.y = function(u)
    return cj.GetUnitY(u)
end
hunit.isOpenPunish = function(u)
    return table.includes(u, hRuntime.attributeGroup.punish)
end
hunit.openPunish = function(u)
    if (table.includes(u, hRuntime.attributeGroup.punish) == false) then
        table.insert(hRuntime.attributeGroup.punish, u)
    end
end
hunit.closePunish = function(u)
    if (table.includes(u, hRuntime.attributeGroup.punish)) then
        table.delete(u, hRuntime.attributeGroup.punish)
    end
end
hunit.setInvulnerable = function(u, flag)
    if (flag == nil) then
        flag = true
    end
    if (flag == true and cj.GetUnitAbilityLevel(u, hskill.BUFF_INVULNERABLE) < 1) then
        cj.UnitAddAbility(u, hskill.BUFF_INVULNERABLE)
    else
        cj.UnitRemoveAbility(u, hskill.BUFF_INVULNERABLE)
    end
end
hunit.setAnimateSpeed = function(u, speed, during)
    if (hRuntime.unit[u] == nil) then
        hRuntime.unit[u] = {}
    end
    cj.SetUnitTimeScale(u, speed)
    during = during or 0
    if (during > 0) then
        local prevSpeed = hRuntime.unit[u].animateSpeed or 1.00
        hRuntime.unit[u].animateSpeed = speed
        htime.setTimeout(
            during,
            function(t)
                htime.delTimer(t)
                cj.SetUnitTimeScale(u, prevSpeed)
            end
        )
    end
end
hunit.setRGB = function(whichUnit, red, green, blue, opacity)
    cj.SetUnitVertexColor(
        whichUnit,
        red,
        green,
        blue,
        255 * opacity
    )
end
hunit.getOwner = function(whichUnit)
    if (whichUnit == nil) then
        return
    end
    return cj.GetOwningPlayer(whichUnit)
end
hunit.portal = function(whichUnit, x, y, facing)
    if (whichUnit == nil or x == nil or y == nil) then
        return
    end
    cj.SetUnitPosition(whichUnit, x, y)
    if (facing ~= nil) then
        cj.SetUnitFacing(facing)
    end
end
hunit.animate = function(whichUnit, animate)
    if (whichUnit == nil or animate == nil) then
        return
    end
    if (type(animate) == "string") then
        cj.SetUnitAnimation(whichUnit, animate)
    elseif (type(animate) == "number") then
        animate = math.floor(animate)
        cj.SetUnitAnimationByIndex(whichUnit, animate)
    end
end
hunit.embed = function(u, options)
    options = options or {}
    if (type(options.registerOrderEvent ~= 'boolean')) then
        options.registerOrderEvent = false
    end
    
    table.insert(hRuntime.group, u)
    
    local id = options.unitId
    if (type(id) == 'number') then
        id = string.id2char(id)
    end
    hRuntime.unit[u] = {
        id = id,
        life = options.life or nil,
        during = options.during or nil,
        isShadow = options.isShadow or false,
        animateSpeed = options.timeScale or 1.00,
        attribute = -1,
    }
    
    hevent.pool(u, hevent_default_actions.unit.damaged, function(tgr)
        cj.TriggerRegisterUnitEvent(tgr, u, EVENT_UNIT_DAMAGED)
    end)
    
    hevent.pool(u, hevent_default_actions.unit.death, function(tgr)
        cj.TriggerRegisterUnitEvent(tgr, u, EVENT_UNIT_DEATH)
    end)
    
    if (his.computer(hunit.getOwner(u)) == false or options.registerOrderEvent == true) then
        hevent.pool(u, hevent_default_actions.unit.order, function(tgr)
            cj.TriggerRegisterUnitEvent(tgr, u, EVENT_UNIT_ISSUED_ORDER)
            cj.TriggerRegisterUnitEvent(tgr, u, EVENT_UNIT_ISSUED_POINT_ORDER)
            cj.TriggerRegisterUnitEvent(tgr, u, EVENT_UNIT_ISSUED_TARGET_ORDER)
        end)
    end
    
    local slk = hslk.id2Value.unit[id]
    if (slk ~= nil) then
        if (slk.UNIT_TYPE == "courier_hero" or slk.UNIT_TYPE == "courier") then
            if (slk.COURIER_AUTO_SKILL == true) then
                hcourier.embed(u)
            end
        end
    end
    
    if (his.hasSlot(u)) then
        hitem.embed(u)
    elseif (options.isOpenSlot == true) then
        hskill.add(u, hitem.DEFAULT_SKILL_ITEM_SLOT, 0)
        hitem.embed(u)
    end
    
    if (his.hero(u) == true) then
        hhero.setPrevLevel(u, 1)
        hevent.pool(u, hevent_default_actions.hero.levelUp, function(tgr)
            cj.TriggerRegisterUnitEvent(tgr, u, EVENT_UNIT_HERO_LEVEL)
        end)
        hattribute.set(u, 0, {
            str_white = "=" .. cj.GetHeroStr(u, false),
            agi_white = "=" .. cj.GetHeroAgi(u, false),
            int_white = "=" .. cj.GetHeroInt(u, false),
        })
    end
end
hunit.create = function(options)
    
    if (options.qty == nil) then
        options.qty = 1
    end
    if (options.whichPlayer == nil) then
        print_err("create unit fail -pl")
        return
    end
    if (options.unitId == nil) then
        print_err("create unit fail -id")
        return
    end
    if (options.qty <= 0) then
        print_err("create unit fail -qty")
        return
    end
    if (options.x == nil and options.y == nil and options.loc == nil) then
        print_err("create unit fail -place")
        return
    end
    if (options.unitId == nil) then
        print_err("create unit id")
        return
    end
    if (type(options.unitId) == "string") then
        options.unitId = string.char2id(options.unitId)
    end
    local u
    local facing
    local x
    local y
    local g
    if (options.x ~= nil and options.y ~= nil) then
        x = options.x
        y = options.y
    elseif (options.loc ~= nil) then
        x = cj.GetLocationX(options.loc)
        y = cj.GetLocationY(options.loc)
    end
    if (options.facing ~= nil) then
        facing = options.facing
    elseif (options.facingX ~= nil and options.facingY ~= nil) then
        facing = math.getDegBetweenXY(x, y, options.facingX, options.facingY)
    elseif (options.facingLoc ~= nil) then
        facing = math.getDegBetweenXY(x, y, cj.GetLocationX(options.facingLoc), cj.GetLocationY(options.facingLoc))
    elseif (options.facingUnit ~= nil) then
        facing = math.getDegBetweenXY(x, y, hunit.x(options.facingUnit), hunit.y(options.facingUnit))
    else
        facing = bj_UNIT_FACING
    end
    if (options.qty > 1) then
        g = {}
    end
    for _ = 1, options.qty, 1 do
        if (options.x ~= nil and options.y ~= nil) then
            u = cj.CreateUnit(options.whichPlayer, options.unitId, options.x, options.y, facing)
        elseif (options.loc ~= nil) then
            u = cj.CreateUnitAtLoc(options.whichPlayer, options.unitId, options.loc, facing)
        end
        
        if (options.height ~= nil and options.height ~= 0) then
            options.height = math.round(options.height)
            hunit.setCanFly(u)
            cj.SetUnitFlyHeight(u, options.height, 10000)
        end
        
        if (options.timeScale ~= nil and options.timeScale > 0) then
            options.timeScale = math.round(options.timeScale * 0.01)
            cj.SetUnitTimeScale(u, options.timeScale)
        end
        
        if (options.modelScale ~= nil and options.modelScale > 0) then
            options.modelScale = math.round(options.modelScale)
            cj.SetUnitScale(u, options.modelScale, options.modelScale, options.modelScale)
        end
        
        if (options.opacity ~= nil and options.opacity <= 1 and options.opacity >= 0) then
            options.opacity = math.round(options.opacity)
            cj.SetUnitVertexColor(u, 255, 255, 255, 255 * options.opacity)
        end
        if (options.attackX ~= nil and options.attackY ~= nil) then
            cj.IssuePointOrder(u, "attack", options.attackX, options.attackY)
        elseif (options.attackLoc ~= nil) then
            cj.IssuePointOrderLoc(u, "attack", options.attackLoc)
        elseif (options.attackUnit ~= nil) then
            cj.IssueTargetOrder(u, "attack", options.attackUnit)
        end
        if (options.qty > 1) then
            hgroup.addUnit(g, u)
        end
        
        if (options.isUnSelectable ~= nil and options.isUnSelectable == true) then
            cj.UnitAddAbility(u, string.char2id("Aloc"))
        end
        
        if (options.isPause ~= nil and options.isPause == true) then
            cj.PauseUnit(u, true)
        end
        
        if (options.isInvulnerable ~= nil and options.isInvulnerable == true) then
            hunit.setInvulnerable(u, true)
        end
        
        if (options.isOpenPunish ~= nil and options.isOpenPunish == true) then
            hunit.openPunish(u)
        end
        
        if (options.isShadow ~= nil and options.isShadow == true) then
            cj.UnitAddAbility(u, "Aloc")
            cj.PauseUnit(u, true)
            hunit.setInvulnerable(u, true)
            options.register = false
        end
        
        if (options.isShareSight ~= nil and options.isShareSight == true) then
            for pi = 0, bj_MAX_PLAYERS - 1, 1 do
                cj.SetPlayerAlliance(options.whichPlayer, cj.Player(pi), ALLIANCE_SHARED_VISION, true)
            end
        end
        
        if (type(options.register) ~= "boolean") then
            options.register = true
        end
        if (options.register == true) then
            hunit.embed(u, options)
        end
        
        if (options.life ~= nil and options.life > 0) then
            hunit.setPeriod(u, options.life)
            hunit.del(u, options.life + 1)
        end
        
        if (options.during ~= nil and options.during >= 0) then
            hunit.del(u, options.during)
        end
        
        if (options.attr ~= nil and type(options.attr) == "table") then
            hattr.set(u, 0, options.attr)
        end
    end
    if (g ~= nil) then
        return g
    else
        return u
    end
end
hunit.getId = function(u)
    return string.id2char(cj.GetUnitTypeId(u))
end
hunit.getName = function(u)
    return cj.GetUnitName(u)
end
hunit.getUserData = function(u)
    return cj.GetUnitUserData(u)
end
hunit.setUserData = function(u, val, during)
    local oldData = hunit.getUserData(u)
    val = math.ceil(val)
    cj.SetUnitUserData(u, val)
    during = during or 0
    if (during > 0) then
        htime.setTimeout(
            during,
            function(t)
                htime.delTimer(t)
                cj.SetUnitUserData(u, oldData)
            end
        )
    end
end
hunit.setColor = function(u, color)
    if (type(color) == "string") then
        color = string.upper(color)
        if (CONST_PLAYER_COLOR[color] ~= nil) then
            cj.SetUnitColor(u, CONST_PLAYER_COLOR[color])
        end
    else
        cj.SetUnitColor(u, cj.ConvertPlayerColor(color - 1))
    end
end
hunit.del = function(targetUnit, delay)
    if (delay == nil or delay <= 0) then
        hitem.clearUnitCache(targetUnit)
        hRuntime.clear(targetUnit)
        cj.RemoveUnit(targetUnit)
    else
        htime.setTimeout(
            delay,
            function(t)
                htime.delTimer(t)
                hitem.clearUnitCache(targetUnit)
                hRuntime.clear(targetUnit)
                cj.RemoveUnit(targetUnit)
            end
        )
    end
end
hunit.kill = function(targetUnit, delay)
    if (delay == nil or delay <= 0) then
        cj.KillUnit(targetUnit)
    else
        htime.setTimeout(
            delay,
            function(t)
                htime.delTimer(t)
                cj.KillUnit(targetUnit)
            end
        )
    end
end
hunit.exploded = function(targetUnit, delay)
    if (delay == nil or delay <= 0) then
        cj.SetUnitExploded(targetUnit, true)
        cj.KillUnit(targetUnit)
    else
        htime.setTimeout(
            delay,
            function(t)
                htime.delTimer(t)
                cj.SetUnitExploded(targetUnit, true)
                cj.KillUnit(targetUnit)
            end
        )
    end
end
hunit.setCanFly = function(u)
    cj.UnitAddAbility(u, string.char2id("Arav"))
    cj.UnitRemoveAbility(u, string.char2id("Arav"))
end
hunit.setFlyHeight = function(u, height, speed)
    cj.SetUnitFlyHeight(u, height, speed)
end
henemy = {
    
    players = {},
    
    numbers = {},
    
    numberLimit = 100,
    
    name = "敌军",
    
    color = cj.ConvertPlayerColor(12),
    
    shareSight = false,
}
henemy.setName = function(name)
    henemy.name = name
end
henemy.getName = function()
    return henemy.name
end
henemy.setColor = function(color)
    henemy.color = color
end
henemy.getColor = function()
    return henemy.color
end
henemy.setShareSight = function(b)
    henemy.shareSight = b
end
henemy.isShareSight = function()
    if (type(henemy.shareSight) == 'boolean') then
        return henemy.shareSight
    end
    return false
end
henemy.setPlayer = function(whichPlayer)
    if (table.includes(whichPlayer, henemy.players)) then
        return
    end
    table.insert(henemy.players, whichPlayer)
    local index = hplayer.index(whichPlayer)
    if (henemy.numbers[#henemy.players] == nil) then
        henemy.numbers[#henemy.players] = 0
    end
    cj.SetPlayerName(whichPlayer, henemy.name)
    cj.SetPlayerColor(whichPlayer, henemy.getColor())
end
henemy.setPlayers = function(playerArray)
    if (#playerArray < 1) then
        return
    end
    for _, whichPlayer in ipairs(playerArray) do
        henemy.setPlayer(whichPlayer)
    end
end
henemy.getPlayer = function(createQty)
    local p
    if (createQty == nil) then
        createQty = 1
    else
        createQty = math.floor(createQty)
    end
    local tagI = 0
    for i = 1, #henemy.players, 1 do
        if (tagI == 0) then
            tagI = i
        elseif (henemy.numbers[i] < henemy.numbers[tagI]) then
            tagI = i
        end
    end
    henemy.numbers[tagI] = henemy.numbers[tagI] + createQty
    if (henemy.numbers[tagI] > henemy.numberLimit) then
        for i = 1, #henemy.players, 1 do
            henemy.numbers[i] = 0
        end
    end
    return henemy.players[tagI]
end
henemy.create = function(options)
    options.whichPlayer = henemy.getPlayer(options.qty or 1)
    options.isShareSight = henemy.isShareSight()
    return hunit.create(options)
end
hgroup = {}
hgroup.loop = function(whichGroup, actions, autoDel)
    if (whichGroup == nil) then
        return
    end
    if (#whichGroup > 0) then
        if (type(autoDel) ~= "boolean") then
            autoDel = false
        end
        for idx, eu in ipairs(whichGroup) do
            if (his.deleted(eu) == false) then
                if (type(actions) == "function") then
                    actions(eu)
                end
            else
                table.remove(whichGroup, idx)
                idx = idx - 1
            end
        end
    end
    if (autoDel == true) then
        whichGroup = nil
    end
end
hgroup.count = function(whichGroup)
    if (whichGroup == nil) then
        return 0
    end
    return #whichGroup
end
hgroup.includes = function(whichGroup, whichUnit)
    if (whichGroup == nil or whichUnit == nil) then
        return false
    end
    return table.includes(whichUnit, whichGroup)
end
hgroup.isEmpty = function(whichGroup)
    if (whichGroup == nil or #whichGroup == 0) then
        return true
    end
    return false
end
hgroup.addUnit = function(whichGroup, whichUnit)
    if (hgroup.includes(whichGroup, whichUnit) == false) then
        table.insert(whichGroup, whichUnit)
    end
end
hgroup.removeUnit = function(whichGroup, whichUnit)
    if (hgroup.includes(whichGroup, whichUnit) == true) then
        table.delete(whichUnit, whichGroup)
    end
end
hgroup.createByXY = function(x, y, radius, filterFunc)
    if (#hRuntime.group == 0) then
        return {}
    end
    
    if (hcamera.model == "zoomin") then
        radius = radius * 0.5
    end
    local g = {}
    for idx, filterUnit in ipairs(hRuntime.group) do
        if (his.deleted(filterUnit)) then
            table.remove(hRuntime.group, idx)
            idx = idx - 1
        end
        
        if (radius >= math.getDistanceBetweenXY(x, y, hunit.x(filterUnit), hunit.y(filterUnit))) then
            if (filterFunc ~= nil) then
                if (filterFunc(filterUnit) == true) then
                    table.insert(g, filterUnit)
                end
            else
                table.insert(g, filterUnit)
            end
        end
    end
    return g
end
hgroup.createByUnit = function(u, radius, filterFunc)
    return hgroup.createByXY(hunit.x(u), hunit.y(u), radius, filterFunc)
end
hgroup.createByLoc = function(loc, radius, filterFunc)
    return hgroup.createByXY(cj.GetLocationX(loc), cj.GetLocationY(loc), radius, filterFunc)
end
hgroup.createByRect = function(r, filterFunc)
    if (#hRuntime.group == 0) then
        return {}
    end
    local g = {}
    for idx, filterUnit in ipairs(hRuntime.group) do
        if (his.deleted(filterUnit)) then
            table.remove(hRuntime.group, idx)
            idx = idx - 1
        end
        
        if (his.inRect(r, hunit.x(filterUnit), hunit.y(filterUnit))) then
            if (filterFunc ~= nil) then
                if (filterFunc(filterUnit) == true) then
                    table.insert(g, filterUnit)
                end
            else
                table.insert(g, filterUnit)
            end
        end
    end
    return g
end
hgroup.getClosest = function(whichGroup, x, y)
    if (whichGroup == nil or x == nil or y == nil) then
        return
    end
    if (hgroup.count(whichGroup) == 0) then
        return
    end
    local closeDist = 99999
    local closeUnit
    hgroup.loop(whichGroup, function(eu)
        local dist = math.getDistanceBetweenXY(x, y, hunit.x(eu), hunit.y(eu))
        if (dist < closeDist) then
            closeUnit = eu
        end
    end)
    return closeUnit
end
hgroup.portal = function(whichGroup, x, y, eff, isFollow)
    if (whichGroup == nil or x == nil or y == nil) then
        return
    end
    hgroup.loop(whichGroup, function(eu)
        hunit.portal(eu, x, y)
        if (isFollow == true) then
            cj.PanCameraToTimedForPlayer(hunit.getOwner(eu), x, y, 0.00)
        end
        if (eff ~= nil) then
            heffect.toXY(eff, x, y, 0)
        end
    end)
end
hgroup.animate = function(whichGroup, animate)
    if (whichGroup == nil or animate == nil) then
        return
    end
    hgroup.loop(whichGroup, function(eu)
        if (his.dead(eu) == false) then
            hunit.animate(eu, animate)
        end
    end)
end
hgroup.clear = function(whichGroup, isDestroy, isDestroyUnit)
    if (whichGroup == nil) then
        return
    end
    if (isDestroyUnit == true) then
        hgroup.loop(whichGroup, function(eu)
            hunit.del(eu)
        end)
    end
    if (isDestroy == true) then
        whichGroup = nil
    else
        whichGroup = {}
    end
end
hhero = {
    player_allow_qty = {}, 
    player_heroes = {}, 
    build_token = hslk.unit_hero_tavern_token,
    
    bornX = 0,
    bornY = 0,
    
    selectorPool = {},
    
    selectorClearPool = {},
}
hhero.getPrimary = function(whichHero)
    local slk = hunit.getSlk(whichHero)
    local primary = slk.Primary
    if (primary == nil) then
        primary = "STR"
        if (slk.AGI > slk.STR) then
            primary = "AGI"
        end
        if (slk.INT > slk.STR and slk.INT > slk.AGI) then
            primary = "INT"
        end
    end
    return string.upper(primary)
end
hhero.getPrimaryLabel = function(whichHero)
    return CONST_HERO_PRIMARY[hhero.getPrimary(whichHero)]
end
hhero.setPrevLevel = function(whichHero, lv)
    if (hRuntime.hero[whichHero] == nil) then
        hRuntime.hero[whichHero] = {}
    end
    hRuntime.hero[whichHero].prevLevel = lv
end
hhero.getPrevLevel = function(whichHero)
    if (hRuntime.hero[whichHero] == nil) then
        hRuntime.hero[whichHero] = {}
    end
    return hRuntime.hero[whichHero].prevLevel or 0
end
hhero.getCurLevel = function(whichHero)
    return cj.GetHeroLevel(whichHero) or 1
end
hhero.setCurLevel = function(whichHero, newLevel, showEffect)
    if (type(showEffect) ~= "boolean") then
        showEffect = false
    end
    local oldLevel = cj.GetHeroLevel(whichHero)
    if (newLevel > oldLevel) then
        cj.SetHeroLevel(whichHero, newLevel, showEffect)
    elseif (newLevel < oldLevel) then
        cj.UnitStripHeroLevel(whichHero, oldLevel - newLevel)
    else
        return
    end
    hhero.setPrevLevel(whichHero, newLevel)
end
hhero.getSlkGoldcost = function(whichHero)
    local slk = hhero.getSlk(whichHero)
    return slk.goldcost or 0
end
hhero.setPlayerAllowQty = function(whichPlayer, max)
    max = math.floor(max)
    if (max < 1) then
        max = 1
    end
    if (max > 7) then
        max = 7
    end
    local index = hplayer.index(whichPlayer)
    hhero.player_allow_qty[index] = max
end
hhero.getPlayerAllowQty = function(whichPlayer)
    local index = hplayer.index(whichPlayer)
    return hhero.player_allow_qty[index] or 0
end
hhero.setBornXY = function(x, y)
    hhero.bornX = x
    hhero.bornY = y
end
hhero.setHeroIds = function(ids)
    if (type(ids) == "table" and #ids > 0) then
        
        hRuntime.unit_type_ids.hero = ids
    end
end
hhero.rebornAtXY = function(whichHero, delay, invulnerable, x, y, showDialog)
    if (his.hero(whichHero)) then
        if (delay < 0.3 and his.deleted(whichHero) == false) then
            cj.ReviveHero(whichHero, x, y, true)
            hattr.resetAttrGroups(whichHero)
            if (invulnerable > 0) then
                hskill.invulnerable(whichHero, invulnerable)
            end
            
            hevent.triggerEvent(
                whichHero,
                CONST_EVENT.reborn,
                {
                    triggerUnit = whichHero
                }
            )
        else
            local title
            if (showDialog == true) then
                title = hunit.getName(whichHero)
            end
            htime.setTimeout(
                delay,
                function(t)
                    htime.delTimer(t)
                    if (his.deleted(whichHero) == false) then
                        if (his.alive(whichHero)) then
                            return
                        end
                        cj.ReviveHero(whichHero, x, y, true)
                        if (invulnerable > 0) then
                            hskill.invulnerable(whichHero, invulnerable)
                        end
                        
                        hevent.triggerEvent(
                            whichHero,
                            CONST_EVENT.reborn,
                            {
                                triggerUnit = whichHero
                            }
                        )
                    end
                end,
                title
            )
        end
    end
end
hhero.rebornAtLoc = function(whichHero, delay, invulnerable, loc)
    hhero.rebornAtXY(whichHero, delay, invulnerable, cj.GetLocationX(loc), cj.GetLocationY(loc), showDialog)
end
hhero.buildSelector = function(options)
    
    local heroIds = options.heroes
    if (heroIds == nil or #heroIds <= 0) then
        heroIds = hRuntime.unit_type_ids.hero or {}
    end
    if (#heroIds <= 0) then
        return
    end
    local during = options.during or -1
    local xType = options.type or "tavern"
    local buildX = options.buildX or 0
    local buildY = options.buildY or 0
    local direct = options.direct or { 1, 1 }
    local buildDistanceX = direct[1] * (options.buildDistance or 256)
    local buildDistanceY = direct[2] * (options.buildDistance or 256)
    local buildRowQty = options.buildRowQty or 4
    if (options.during ~= -1 and options.during < 30) then
        during = 30
    end
    local totalRow = 1
    local currentRowQty = 0
    local x = buildX
    local y = buildY
    if (xType == "click") then
        for _, heroId in ipairs(heroIds) do
            if (currentRowQty >= buildRowQty) then
                currentRowQty = 0
                totalRow = totalRow + 1
                x = buildX
                y = y - buildDistanceY
            else
                x = buildX + currentRowQty * buildDistanceX
            end
            local whichHero = hunit.create(
                {
                    whichPlayer = cj.Player(PLAYER_NEUTRAL_PASSIVE),
                    unitId = heroId,
                    x = x,
                    y = y,
                    isInvulnerable = true,
                    isPause = true
                }
            )
            hRuntime.hero[whichHero] = {
                selector = { x, y },
            }
            table.insert(hhero.selectorClearPool, whichHero)
            table.insert(hhero.selectorPool, whichHero)
            currentRowQty = currentRowQty + 1
        end
        for i = 1, hplayer.qty_max, 1 do
            hevent.onSelection(hplayer.players[i], 2, function(evtData)
                local p = evtData.triggerPlayer
                local whichHero = evtData.triggerUnit
                if (table.includes(whichHero, hhero.selectorClearPool) == false) then
                    return
                end
                if (hunit.getOwner(whichHero) ~= cj.Player(PLAYER_NEUTRAL_PASSIVE)) then
                    return
                end
                local pIndex = hplayer.index(p)
                if (#hhero.player_heroes[pIndex] >= hhero.player_allow_qty[pIndex]) then
                    echo("|cffffff80你已经选够了|r", p)
                    return
                end
                table.delete(whichHero, hhero.selectorPool)
                table.delete(whichHero, hhero.selectorClearPool)
                hunit.setInvulnerable(whichHero, false)
                cj.SetUnitOwner(whichHero, p, true)
                hunit.portal(whichHero, hhero.bornX, hhero.bornY)
                cj.PauseUnit(whichHero, false)
                table.insert(hhero.player_heroes[pIndex], whichHero)
                
                hevent.triggerEvent(
                    "global",
                    CONST_EVENT.pickHero,
                    {
                        triggerPlayer = p,
                        triggerUnit = whichHero
                    }
                )
                if (#hhero.player_heroes[pIndex] >= hhero.player_allow_qty[pIndex]) then
                    echo("您选择了 " .. "|cffffff80" .. cj.GetUnitName(whichHero) .. "|r,已挑选完毕", p)
                else
                    echo("您选择了 |cffffff80" .. cj.GetUnitName(whichHero) .. "|r,还要选 " ..
                        math.floor(hhero.player_allow_qty[pIndex] - #hhero.player_heroes[pIndex]) .. " 个", p
                    )
                end
            end)
        end
    elseif (xType == "tavern") then
        local tavernUnitQty = options.tavernUnitQty or 10
        local currentTavernQty = 0
        local tavern
        for _, heroId in ipairs(heroIds) do
            if (tavern == nil or currentTavernQty >= tavernUnitQty) then
                currentTavernQty = 0
                if (currentRowQty >= buildRowQty) then
                    currentRowQty = 0
                    totalRow = totalRow + 1
                    x = buildX
                    y = y - buildDistanceY
                else
                    x = buildX + currentRowQty * buildDistanceX
                end
                tavern = hunit.create(
                    {
                        whichPlayer = cj.Player(PLAYER_NEUTRAL_PASSIVE),
                        unitId = options.tavernId or hslk.unit_hero_tavern,
                        x = x,
                        y = y,
                    }
                )
                table.insert(hhero.selectorClearPool, tavern)
                cj.SetUnitTypeSlots(tavern, tavernUnitQty)
                if (type(options.onUnitSell) == "function") then
                    hevent.onUnitSell(tavern, function(evtData)
                        options.onUnitSell(evtData)
                    end)
                else
                    hevent.onUnitSell(tavern, function(evtData)
                        local p = hunit.getOwner(evtData.buyingUnit)
                        local soldUnit = evtData.soldUnit
                        local soldUid = cj.GetUnitTypeId(soldUnit)
                        hunit.del(soldUnit, 0)
                        local pIndex = hplayer.index(p)
                        if (#hhero.player_heroes[pIndex] >= hhero.player_allow_qty[pIndex]) then
                            echo("|cffffff80你已经选够~|r", p)
                            cj.AddUnitToStock(tavern, soldUid, 1, 1)
                            return
                        end
                        cj.RemoveUnitFromStock(tavern, soldUid)
                        local whichHero = hunit.create(
                            {
                                whichPlayer = p,
                                unitId = soldUid,
                                x = hhero.bornX,
                                y = hhero.bornY,
                            }
                        )
                        table.insert(hhero.player_heroes[pIndex], whichHero)
                        table.delete(string.id2char(soldUid), hhero.selectorPool)
                        local tips = "您选择了 |cffffff80" .. cj.GetUnitName(whichHero) .. "|r"
                        if (#hhero.player_heroes[pIndex] >= hhero.player_allow_qty[pIndex]) then
                            echo(tips .. ",已挑选完毕", p)
                        else
                            echo(tips .. "还差 " .. (hhero.player_allow_qty[pIndex] - #hhero.player_heroes[pIndex]) .. " 个", p)
                        end
                        hRuntime.hero[whichHero] = {
                            selector = evtData.triggerUnit,
                        }
                        
                        hevent.triggerEvent(
                            "global",
                            CONST_EVENT.pickHero,
                            {
                                triggerPlayer = p,
                                triggerUnit = whichHero
                            }
                        )
                    end)
                end
                currentRowQty = currentRowQty + 1
            end
            currentTavernQty = currentTavernQty + 1
            cj.AddUnitToStock(tavern, string.char2id(heroId), 1, 1)
            hRuntime.hero[heroId] = tavern
            table.insert(hhero.selectorPool, heroId)
        end
    end
    if (during > 0) then
        
        for i = 1, hplayer.qty_max, 1 do
            local p = cj.Player(i - 1)
            local whichHero = hunit.create(
                {
                    whichPlayer = p,
                    unitId = hhero.build_token,
                    x = buildX + buildRowQty * buildDistanceX * 0.5,
                    y = buildY - math.floor(#heroIds / buildRowQty) * buildDistanceY * 0.5,
                    isInvulnerable = true,
                    isPause = true
                }
            )
            table.insert(hhero.selectorClearPool, whichHero)
        end
        
        htime.setTimeout(
            during - 10.0,
            function(t)
                local x2 = buildX + buildRowQty * buildDistanceX * 0.5
                local y2 = buildY - math.floor(#heroIds / buildRowQty) * buildDistanceY * 0.5
                htime.delTimer(t)
                hhero.selectorPool = {}
                echo("还剩 10 秒，还未选择的玩家尽快啦～")
                cj.PingMinimapEx(x2, y2, 8, 255, 0, 0, true)
            end
        )
        
        
        htime.setTimeout(during - 0.5, function(t)
            htime.delTimer(t)
            for _, hero in ipairs(hhero.selectorClearPool) do
                hunit.del(hero)
            end
            hhero.selectorClearPool = {}
            for i = 1, hplayer.qty_max, 1 do
                if (his.playing(hplayer.players[i]) and #hhero.player_heroes[i] <= 0) then
                    hplayer.defeat(hplayer.players[i], "未选英雄")
                end
            end
        end, "英雄选择")
    end
end
hcourier = {}
hcourier.embed = function(whichCourier)
    hevent.pool(whichCourier, hevent_default_actions.courier.defaultSkills, function(tgr)
        cj.TriggerRegisterUnitEvent(tgr, whichCourier, EVENT_UNIT_SPELL_EFFECT)
    end)
end
hskill = {
    SKILL_TOKEN = hslk.unit_token,
    
    SKILL_LEAP = hslk.unit_token_leap,
    SKILL_BREAK = hslk.skill_break,
    SKILL_SWIM_UNLIMIT = hslk.skill_swim_unlimit,
    SKILL_INVISIBLE = hslk.skill_invisible,
    SKILL_AVOID_PLUS = hslk.attr.avoid.add,
    SKILL_AVOID_MIUNS = hslk.attr.avoid.sub,
    BUFF_SWIM = string.char2id("BPSE"),
    BUFF_INVULNERABLE = string.char2id("Avul")
}
hskill.set = function(handle, key, val)
    if (handle == nil or key == nil) then
        return
    end
    if (hRuntime.skill[handle] == nil) then
        hRuntime.skill[handle] = {}
    end
    hRuntime.skill[handle][key] = val
end
hskill.get = function(handle, key, defaultVal)
    if (handle == nil or key == nil) then
        return defaultVal
    end
    if (hRuntime.skill[handle] == nil or hRuntime.skill[handle][key] == nil) then
        return defaultVal
    end
    return hRuntime.skill[handle][key]
end
hskill.getSlk = function(abilId)
    if (abilId == nil) then
        return
    end
    local slk
    local abilityId = abilId
    if (type(abilId) == "number") then
        abilityId = string.id2char(abilId)
    end
    if (hslk.id2Value.ability[abilityId] ~= nil) then
        slk = hslk.id2Value.ability[abilityId]
    end
    return slk
end
hskill.getAttribute = function(abilId)
    local slk = hskill.getSlk(abilId)
    if (slk ~= nil) then
        return slk.ATTR
    else
        return nil
    end
end
hskill.addProperty = function(whichUnit, abilId)
    hattribute.caleAttribute(true, whichUnit, hskill.getAttribute(abilId), 1)
    hring.insert(whichUnit, abilId)
end
hskill.subProperty = function(whichUnit, abilId)
    hattribute.caleAttribute(false, whichUnit, hskill.getAttribute(abilId), 1)
    hring.remove(whichUnit, abilId)
end
hskill.add = function(whichUnit, abilityId, during)
    local id = abilityId
    if (type(abilityId) == "string") then
        id = string.char2id(id)
    end
    if (during == nil or during <= 0) then
        cj.UnitAddAbility(whichUnit, id)
        cj.UnitMakeAbilityPermanent(whichUnit, true, id)
        hskill.addProperty(whichUnit, id)
    else
        cj.UnitAddAbility(whichUnit, id)
        hskill.addProperty(whichUnit, id)
        htime.setTimeout(
            during,
            function(t)
                cj.UnitRemoveAbility(whichUnit, id)
                hskill.subProperty(whichUnit, id)
            end
        )
    end
end
hskill.del = function(whichUnit, abilityId, delay)
    local id = abilityId
    if (type(abilityId) == "string") then
        id = string.char2id(id)
    end
    if (delay == nil or delay <= 0) then
        cj.UnitRemoveAbility(whichUnit, id)
        hskill.subProperty(whichUnit, id)
    else
        cj.UnitRemoveAbility(whichUnit, id)
        hskill.subProperty(whichUnit, id)
        htime.setTimeout(
            delay,
            function(t)
                cj.UnitAddAbility(whichUnit, id)
                hskill.addProperty(whichUnit, id)
            end
        )
    end
end
hskill.forever = function(whichUnit, abilityId)
    local id = abilityId
    if (type(abilityId) == "string") then
        id = string.char2id(id)
    end
    cj.UnitMakeAbilityPermanent(whichUnit, true, id)
end
hskill.has = function(whichUnit, abilityId)
    if (whichUnit == nil or abilityId == nil) then
        return false
    end
    local id = abilityId
    if (type(abilityId) == "string") then
        id = string.char2id(id)
    end
    if (cj.GetUnitAbilityLevel(whichUnit, id) >= 1) then
        return true
    end
    return false
end
hRuntime.skill.silentTrigger = cj.CreateTrigger()
cj.TriggerAddAction(
    hRuntime.skill.silentTrigger,
    function()
        local u1 = cj.GetTriggerUnit()
        if (table.includes(u1, hRuntime.skill.silentUnits)) then
            cj.IssueImmediateOrder(u1, "stop")
        end
    end
)
hRuntime.skill.unarmTrigger = cj.CreateTrigger()
cj.TriggerAddAction(
    hRuntime.skill.unarmTrigger,
    function()
        local u1 = cj.GetAttacker()
        if (table.includes(u1, hRuntime.skill.unarmUnits) == true) then
            cj.IssueImmediateOrder(u1, "stop")
        end
    end
)
for i = 1, bj_MAX_PLAYERS, 1 do
    cj.TriggerRegisterPlayerUnitEvent(hRuntime.skill.silentTrigger, cj.Player(i - 1), EVENT_PLAYER_UNIT_SPELL_CHANNEL, nil)
    cj.TriggerRegisterPlayerUnitEvent(hRuntime.skill.unarmTrigger, cj.Player(i - 1), EVENT_PLAYER_UNIT_ATTACKED, nil)
end
hskill.avoid = function(whichUnit)
    cj.UnitAddAbility(whichUnit, hskill.SKILL_AVOID_PLUS)
    cj.SetUnitAbilityLevel(whichUnit, hskill.SKILL_AVOID_PLUS, 2)
    cj.UnitRemoveAbility(whichUnit, hskill.SKILL_AVOID_PLUS)
    htime.setTimeout(
        0.00,
        function(t)
            htime.delTimer(t)
            cj.UnitAddAbility(whichUnit, hskill.SKILL_AVOID_MIUNS)
            cj.SetUnitAbilityLevel(whichUnit, hskill.SKILL_AVOID_MIUNS, 2)
            cj.UnitRemoveAbility(whichUnit, hskill.SKILL_AVOID_MIUNS)
        end
    )
end
hskill.invulnerable = function(whichUnit, during, effect)
    if (whichUnit == nil) then
        return
    end
    if (during < 0) then
        during = 0.00 
    end
    cj.UnitAddAbility(whichUnit, hskill.BUFF_INVULNERABLE)
    if (during > 0 and effect ~= nil) then
        heffect.bindUnit(effect, whichUnit, "origin", during)
    end
    htime.setTimeout(
        during,
        function(t)
            htime.delTimer(t)
            cj.UnitRemoveAbility(whichUnit, hskill.BUFF_INVULNERABLE)
        end
    )
end
hskill.invulnerableRange = function(x, y, radius, filter, during, effect)
    if (x == nil or y == nil or filter == nil) then
        return
    end
    if (during < 0) then
        during = 0.00 
    end
    local g = hgroup.createByXY(x, y, radius, filter)
    hgroup.loop(
        g,
        function(eu)
            hunit.setInvulnerable(eu, true)
            if (during > 0 and effect ~= nil) then
                heffect.bindUnit(effect, eu, "origin", during)
            end
        end
    )
    htime.setTimeout(
        during,
        function(t)
            htime.delTimer(t)
            hgroup.loop(
                g,
                function(eu)
                    hunit.setInvulnerable(eu, false)
                end
            )
            cj.GroupClear(g)
            cj.DestroyGroup(g)
            g = nil
        end
    )
end
hskill.pause = function(whichUnit, during, pauseColor)
    if (whichUnit == nil) then
        return
    end
    if (during < 0) then
        during = 0.01 
    end
    local prevTimer = hskill.get(whichUnit, "pauseTimer")
    local prevTimeRemaining = 0
    if (prevTimer ~= nil) then
        prevTimeRemaining = htime.getRemainTime(prevTimer)
        if (prevTimeRemaining > 0) then
            htime.delTimer(prevTimer)
            hskill.set(whichUnit, "pauseTimer", nil)
        else
            prevTimeRemaining = 0
        end
    end
    if (pauseColor == "black") then
        hunit.setRGB(whichUnit, 30, 30, 30, 0)
    elseif (pauseColor == "blue") then
        hunit.setRGB(whichUnit, 30, 30, 200, 0)
    elseif (pauseColor == "red") then
        hunit.setRGB(whichUnit, 200, 30, 30, 0)
    elseif (pauseColor == "green") then
        hunit.setRGB(whichUnit, 30, 200, 30, 0)
    end
    cj.SetUnitTimeScale(whichUnit, 0.00)
    cj.PauseUnit(whichUnit, true)
    hskill.set(
        whichUnit,
        "pauseTimer",
        htime.setTimeout(
            during + prevTimeRemaining,
            function(t)
                htime.delTimer(t)
                cj.PauseUnit(whichUnit, false)
                if (string.len(pauseColor) ~= nil) then
                    cj.SetUnitVertexColorBJ(whichUnit, 100, 100, 100, 0)
                end
                cj.SetUnitTimeScale(whichUnit, 1)
            end
        )
    )
end
hskill.invisible = function(whichUnit, during, transition, effect)
    if (whichUnit == nil or during == nil or during <= 0) then
        return
    end
    if (his.dead(whichUnit)) then
        return
    end
    transition = transition or 0
    if (effect ~= nil) then
        heffect.toUnit(effect, whichUnit, 0)
    end
    if (transition > 0) then
        htime.setTimeout(
            transition,
            function(t)
                htime.delTimer(t)
                hskill.add(whichUnit, hskill.SKILL_INVISIBLE, during)
            end
        )
    else
        hskill.add(whichUnit, hskill.SKILL_INVISIBLE, during)
    end
end
hskill.visible = function(whichUnit, during, transition, effect)
    if (whichUnit == nil or during == nil or during <= 0) then
        return
    end
    if (his.dead(whichUnit)) then
        return
    end
    transition = transition or 0
    if (effect ~= nil) then
        heffect.toUnit(effect, whichUnit, 0)
    end
    if (transition > 0) then
        htime.setTimeout(
            transition,
            function(t)
                htime.delTimer(t)
                hskill.del(whichUnit, hskill.SKILL_INVISIBLE, during)
            end
        )
    else
        hskill.del(whichUnit, hskill.SKILL_INVISIBLE, during)
    end
end
hskill.modelEffect = function(whichUnit, whichAbility, abilityLevel, during)
    if (whichUnit ~= nil and whichAbility ~= nil and during > 0.03) then
        cj.UnitAddAbility(whichUnit, whichAbility)
        cj.UnitMakeAbilityPermanent(whichUnit, true, whichAbility)
        if (abilityLevel > 0) then
            cj.SetUnitAbilityLevel(whichUnit, whichAbility, abilityLevel)
        end
        htime.setTimeout(
            during,
            function(t)
                htime.delTimer(t)
                cj.UnitRemoveAbility(whichUnit, whichAbility)
            end
        )
    end
end
hskill.diy = function(options)
    
    if (options.whichPlayer == nil or options.skillId == nil or options.orderString == nil) then
        return
    end
    if (options.x == nil or options.y == nil) then
        return
    end
    local life = options.life
    if (options.life == nil or options.life < 2.00) then
        life = 2.00
    end
    local token = cj.CreateUnit(options.whichPlayer, hskill.SKILL_TOKEN, x, y, bj_UNIT_FACING)
    cj.UnitAddAbility(token, options.skillId)
    if (options.targetUnit ~= nil) then
        cj.IssueTargetOrderById(token, options.orderId, options.targetUnit)
    elseif (options.targetX ~= nil and options.targetY ~= nil) then
        cj.IssuePointOrder(token, options.orderString, options.targetX, options.targetY)
    elseif (options.targetLoc ~= nil) then
        cj.IssuePointOrderLoc(token, options.orderString, options.targetLoc)
    else
        cj.IssueImmediateOrder(token, options.orderString)
    end
    hunit.del(token, life)
end
local _damageTtgQty = 0
local _damageTtg = function(targetUnit, damage, fix, color)
    _damageTtgQty = _damageTtgQty + 1
    local during = 1.0
    local offx = -0.05 - _damageTtgQty * 0.015
    local offy = 0.05 + _damageTtgQty * 0.015
    htextTag.style(
        htextTag.create2Unit(targetUnit, fix .. math.floor(damage), 6.00, color, 1, during, 12.00),
        "toggle",
        offx,
        offy
    )
    htime.setTimeout(
        during,
        function(t)
            htime.delTimer(t)
            _damageTtgQty = _damageTtgQty - 1
        end
    )
end
hskill.damage = function(options)
    local sourceUnit = options.sourceUnit
    local targetUnit = options.targetUnit
    local damage = options.damage or 0
    if (damage < 0.125) then
        return
    end
    if (targetUnit == nil) then
        return
    end
    if (his.alive(options.targetUnit) == false or his.deleted(targetUnit)) then
        return
    end
    if (his.deleted(targetUnit)) then
        return
    end
    if (his.deleted(sourceUnit)) then
        return
    end
    if (options.damageKind == nil) then
        options.damageKind = CONST_DAMAGE_KIND.special
    end
    
    local targetUnitAttr = hattr.get(targetUnit)
    local sourceUnitAttr = {}
    if (targetUnitAttr == nil) then
        print("targetUnit unregister")
        return
    end
    if (sourceUnit ~= nil) then
        sourceUnitAttr = hattr.get(sourceUnit)
        if (sourceUnitAttr == nil) then
            print("sourceUnit unregister")
            return
        end
    end
    local damageKind = options.damageKind
    local damageType = options.damageType
    if (damageType == nil) then
        if (damageKind == CONST_DAMAGE_KIND.attack and sourceUnit ~= nil) then
            damageType = hattr.get(sourceUnit, "attack_damage_type")
        else
            damageType = CONST_DAMAGE_TYPE.common
        end
    end
    
    if (damageType == nil or #damageType <= 0) then
        damageType = { CONST_DAMAGE_TYPE.common }
    end
    
    local lastDamage = 0
    local lastDamagePercent = 0.0
    
    local punishEffectRatio = 0
    
    local isAvoid = false
    
    local breakArmorType = options.breakArmorType or {}
    local damageString = options.damageString or ""
    local damageStringColor = options.damageStringColor or "d9d9d9"
    local effect = options.effect
    
    if (damageKind == CONST_DAMAGE_KIND.attack) then
        if (his.unarm(sourceUnit) == true) then
            return
        end
    elseif (damageKind == CONST_DAMAGE_KIND.skill) then
        if (his.silent(sourceUnit) == true) then
            return
        end
    elseif (damageKind == CONST_DAMAGE_KIND.item) then
    elseif (damageKind == CONST_DAMAGE_KIND.special) then
    else
        print_err("DAMAGE -damageKind")
        return
    end
    
    if (his.invincible(targetUnit) == true or math.random(1, 100) < targetUnitAttr.invincible) then
        if (table.includes(CONST_DAMAGE_TYPE.absolute, damageType) == false) then
            return
        end
    end
    
    punishEffectRatio = 0.99
    if (targetUnitAttr.punish_oppose > 0) then
        punishEffectRatio = punishEffectRatio - targetUnitAttr.punish_oppose * 0.01
        if (punishEffectRatio < 0.100) then
            punishEffectRatio = 0.100
        end
    end
    
    
    if (targetUnitAttr.defend < 0 and targetUnitAttr.defend >= -20) then
        damage = damage / (2 - cj.Pow(0.94, math.abs(targetUnitAttr.defend)))
    elseif (targetUnitAttr.defend < 0 and targetUnitAttr.defend < -20) then
        damage = damage / (2 - cj.Pow(0.94, 20))
    end
    
    local dmgRatio = 1 / #damageType
    local typeRatio = {}
    for _, d in ipairs(damageType) do
        if (typeRatio[d] == nil) then
            typeRatio[d] = 0
        end
        typeRatio[d] = typeRatio[d] + dmgRatio
    end
    
    lastDamage = damage
    
    if (breakArmorType ~= nil and #breakArmorType > 0) then
        damageString = damageString .. "无视"
        if (table.includes("defend", breakArmorType)) then
            if (targetUnitAttr.defend > 0) then
                targetUnitAttr.defend = 0
            end
            damageString = damageString .. "护甲"
            damageStringColor = "f97373"
        end
        if (table.includes("resistance", breakArmorType)) then
            if (targetUnitAttr.resistance > 0) then
                targetUnitAttr.resistance = 0
            end
            damageString = damageString .. "魔抗"
            damageStringColor = "6fa8dc"
        end
        if (table.includes("avoid", breakArmorType)) then
            targetUnitAttr.avoid = -9999
            damageString = damageString .. "回避"
            damageStringColor = "76a5af"
        end
        
        hevent.triggerEvent(
            sourceUnit,
            CONST_EVENT.breakArmor,
            {
                triggerUnit = sourceUnit,
                targetUnit = targetUnit,
                breakType = breakArmorType
            }
        )
        
        hevent.triggerEvent(
            targetUnit,
            CONST_EVENT.beBreakArmor,
            {
                triggerUnit = targetUnit,
                sourceUnit = sourceUnit,
                breakType = breakArmorType
            }
        )
    end
    
    if (table.includes(CONST_DAMAGE_TYPE.real, damageType) == true) then
        targetUnitAttr.avoid = -99999
        damageString = damageString .. CONST_DAMAGE_TYPE_MAP.real.label
        damageStringColor = CONST_DAMAGE_TYPE_MAP.real.color
    end
    
    if (table.includes(CONST_DAMAGE_TYPE.absolute, damageType) == true) then
        targetUnitAttr.avoid = -99999
        damageString = damageString .. CONST_DAMAGE_TYPE_MAP.absolute.label
        damageStringColor = CONST_DAMAGE_TYPE_MAP.absolute.color
    end
    
    if (damageKind == CONST_DAMAGE_KIND.attack
        and targetUnitAttr.avoid - (sourceUnitAttr.aim or 0) > 0
        and math.random(1, 100) <= targetUnitAttr.avoid - (sourceUnitAttr.aim or 0)) then
        isAvoid = true
        lastDamage = 0
        htextTag.style(htextTag.create2Unit(targetUnit, "回避", 6.00, "5ef78e", 10, 1.00, 10.00), "scale", 0, 0.2)
        
        hevent.triggerEvent(
            targetUnit,
            CONST_EVENT.avoid,
            {
                triggerUnit = targetUnit,
                attacker = sourceUnit
            }
        )
        
        hevent.triggerEvent(
            sourceUnit,
            CONST_EVENT.beAvoid,
            {
                triggerUnit = sourceUnit,
                attacker = sourceUnit,
                targetUnit = targetUnit
            }
        )
    end
    
    if (lastDamage > 0) then
        
        local tempNatural = {}
        for _, natural in ipairs(CONST_DAMAGE_TYPE_NATURE) do
            tempNatural[natural] = 10 + (sourceUnitAttr["natural_" .. natural] or 0) - targetUnitAttr["natural_" .. natural .. "_oppose"]
            if (tempNatural[natural] < -100) then
                tempNatural[natural] = -100
            end
            if (table.includes(natural, damageType) and tempNatural[natural] ~= 0) then
                lastDamagePercent = lastDamagePercent + typeRatio[natural] * tempNatural[natural] * 0.01
                damageString = damageString .. CONST_DAMAGE_TYPE_MAP[natural].label
                damageStringColor = CONST_DAMAGE_TYPE_MAP[natural].color
            end
        end
    end
    
    if (targetUnitAttr.defend ~= 0 and typeRatio[CONST_DAMAGE_TYPE.physical] ~= nil) then
        local defendPercent = 0
        if (targetUnitAttr.defend > 0) then
            defendPercent = targetUnitAttr.defend / (targetUnitAttr.defend + 200)
        else
            local dfd = math.abs(targetUnitAttr.defend)
            defendPercent = -dfd / (dfd * 0.33 + 100)
        end
        defendPercent = defendPercent * typeRatio[CONST_DAMAGE_TYPE.physical]
        lastDamagePercent = lastDamagePercent - defendPercent
    end
    
    if (targetUnitAttr.resistance ~= 0 and typeRatio[CONST_DAMAGE_TYPE.magic] ~= nil) then
        local resistancePercent = 0
        if (targetUnitAttr.resistance >= 100) then
            resistancePercent = -1
        else
            resistancePercent = -targetUnitAttr.resistance * 0.01
        end
        resistancePercent = resistancePercent * typeRatio[CONST_DAMAGE_TYPE.magic]
        lastDamagePercent = lastDamagePercent - resistancePercent
    end
    
    if (lastDamage > 0 and sourceUnit ~= nil and sourceUnitAttr.damage_extent ~= 0) then
        lastDamagePercent = lastDamagePercent + sourceUnitAttr.damage_extent * 0.01
    end
    
    lastDamage = lastDamage * (1 + lastDamagePercent)
    
    if (targetUnitAttr.toughness > 0) then
        if (targetUnitAttr.toughness >= lastDamage) then
            
            hevent.triggerEvent(
                targetUnit,
                CONST_EVENT.limitToughness,
                {
                    triggerUnit = targetUnit,
                    sourceUnit = sourceUnit
                }
            )
            lastDamage = 0
        else
            lastDamage = lastDamage - targetUnitAttr.toughness
        end
    end
    
    if (lastDamage > 0.125 and his.deleted(targetUnit) == false) then
        
        local isBeDamagingTimer = hunit.get(targetUnit, "isBeDamagingTimer", nil)
        if (isBeDamagingTimer ~= nil) then
            htime.delTimer(isBeDamagingTimer)
            hunit.set(targetUnit, "isBeDamagingTimer", nil)
        end
        hunit.set(targetUnit, "isBeDamaging", true)
        hunit.set(targetUnit, "isBeDamagingTimer", htime.setTimeout(
            3.5,
            function(t)
                htime.delTimer(t)
                hunit.set(targetUnit, "isBeDamagingTimer", nil)
                hunit.set(targetUnit, "isBeDamaging", false)
            end
        ))
        if (sourceUnit ~= nil and his.deleted(sourceUnit) == false) then
            local isDamagingTimer = hunit.get(sourceUnit, "isDamagingTimer", nil)
            if (isDamagingTimer ~= nil) then
                htime.delTimer(isDamagingTimer)
                hunit.set(sourceUnit, "isDamagingTimer", nil)
            end
            hunit.set(sourceUnit, "isDamaging", true)
            hunit.set(targetUnit, "isBeDamagingTimer", htime.setTimeout(
                3.5,
                function(t)
                    htime.delTimer(t)
                    hunit.set(sourceUnit, "isDamagingTimer", nil)
                    hunit.set(sourceUnit, "isDamaging", false)
                end
            ))
            hevent.setLastDamageUnit(targetUnit, sourceUnit)
            hplayer.addDamage(hunit.getOwner(sourceUnit), lastDamage)
        end
        
        _damageTtg(targetUnit, lastDamage, damageString, damageStringColor)
        
        hplayer.addBeDamage(hunit.getOwner(targetUnit), lastDamage)
        hunit.subCurLife(targetUnit, lastDamage)
        if (type(effect) == "string" and string.len(effect) > 0) then
            heffect.toXY(effect, hunit.x(targetUnit), hunit.y(targetUnit), 0)
        end
        
        if (sourceUnit ~= nil) then
            hevent.triggerEvent(
                sourceUnit,
                CONST_EVENT.damage,
                {
                    triggerUnit = sourceUnit,
                    targetUnit = targetUnit,
                    sourceUnit = sourceUnit,
                    damage = lastDamage,
                    damageKind = damageKind,
                    damageType = damageType
                }
            )
        end
        
        hevent.triggerEvent(
            targetUnit,
            CONST_EVENT.beDamage,
            {
                triggerUnit = targetUnit,
                sourceUnit = sourceUnit,
                damage = lastDamage,
                damageKind = damageKind,
                damageType = damageType
            }
        )
        if (damageKind == CONST_DAMAGE_KIND.attack) then
            if (sourceUnit ~= nil) then
                
                hevent.triggerEvent(
                    sourceUnit,
                    CONST_EVENT.attack,
                    {
                        triggerUnit = sourceUnit,
                        attacker = sourceUnit,
                        targetUnit = targetUnit,
                        damage = lastDamage,
                        damageKind = damageKind,
                        damageType = damageType
                    }
                )
            end
            
            hevent.triggerEvent(
                targetUnit,
                CONST_EVENT.beAttack,
                {
                    triggerUnit = targetUnit,
                    attacker = sourceUnit,
                    targetUnit = targetUnit,
                    damage = lastDamage,
                    damageKind = damageKind,
                    damageType = damageType
                }
            )
        end
        
        if (sourceUnit ~= nil and damageKind == CONST_DAMAGE_KIND.attack) then
            local hemophagia = sourceUnitAttr.hemophagia - targetUnitAttr.hemophagia_oppose
            if (hemophagia > 0) then
                hunit.addCurLife(sourceUnit, lastDamage * hemophagia * 0.01)
                heffect.bindUnit(
                    "Abilities\\Spells\\Undead\\VampiricAura\\VampiricAuraTarget.mdl",
                    sourceUnit,
                    "origin",
                    1.00
                )
                
                hevent.triggerEvent(
                    sourceUnit,
                    CONST_EVENT.hemophagia,
                    {
                        triggerUnit = sourceUnit,
                        targetUnit = targetUnit,
                        value = lastDamage * hemophagia * 0.01,
                        percent = hemophagia,
                    }
                )
                
                hevent.triggerEvent(
                    targetUnit,
                    CONST_EVENT.beHemophagia,
                    {
                        triggerUnit = targetUnit,
                        sourceUnit = sourceUnit,
                        value = lastDamage * hemophagia * 0.01,
                        percent = hemophagia,
                    }
                )
            end
        end
        
        if (sourceUnit ~= nil and damageKind == CONST_DAMAGE_KIND.skill) then
            local hemophagiaSkill = sourceUnitAttr.hemophagia_skill - targetUnitAttr.hemophagia_skill_oppose
            if (hemophagiaSkill > 0) then
                hunit.addCurLife(sourceUnit, lastDamage * hemophagiaSkill * 0.01)
                heffect.bindUnit(
                    "Abilities\\Spells\\Items\\HealingSalve\\HealingSalveTarget.mdl",
                    sourceUnit,
                    "origin",
                    1.80
                )
                
                hevent.triggerEvent(
                    sourceUnit,
                    CONST_EVENT.skillHemophagia,
                    {
                        triggerUnit = sourceUnit,
                        targetUnit = targetUnit,
                        value = lastDamage * hemophagiaSkill * 0.01,
                        percent = hemophagiaSkill
                    }
                )
                
                hevent.triggerEvent(
                    targetUnit,
                    CONST_EVENT.beSkillHemophagia,
                    {
                        triggerUnit = targetUnit,
                        sourceUnit = sourceUnit,
                        value = lastDamage * hemophagiaSkill * 0.01,
                        percent = hemophagiaSkill
                    }
                )
            end
        end
        
        local punish_during = 5.00
        if (lastDamage > 1 and his.alive(targetUnit) and his.punish(targetUnit) == false and hunit.isOpenPunish(targetUnit)) then
            hattr.set(targetUnit, 0, {
                punish_current = "-" .. lastDamage
            })
            if (targetUnitAttr.punish_current - lastDamage <= 0 and his.deleted(targetUnit) == false) then
                hunit.set(targetUnit, "isPunishing", true)
                htime.setTimeout(
                    punish_during + 1.00,
                    function(t)
                        htime.delTimer(t)
                        hunit.set(targetUnit, "isPunishing", false)
                    end
                )
                local punishEffectAttackSpeed = (100 + targetUnitAttr.attack_speed) * punishEffectRatio
                local punishEffectMove = targetUnitAttr.move * punishEffectRatio
                if (punishEffectAttackSpeed < 1) then
                    punishEffectAttackSpeed = 1.00
                end
                if (punishEffectMove < 1) then
                    punishEffectMove = 1.00
                end
                hattr.set(targetUnit, punish_during, {
                    attack_speed = "-" .. punishEffectAttackSpeed,
                    move = "-" .. punishEffectMove
                })
                htextTag.style(
                    htextTag.create2Unit(targetUnit, "僵硬", 6.00, "c0c0c0", 0, punish_during, 50.00),
                    "scale",
                    0,
                    0
                )
                
                hevent.triggerEvent(
                    targetUnit,
                    CONST_EVENT.heavy,
                    {
                        triggerUnit = targetUnit,
                        sourceUnit = sourceUnit,
                        percent = punishEffectRatio * 100,
                        during = punish_during
                    }
                )
            end
        end
        
        if (sourceUnit ~= nil and his.invincible(sourceUnit) == false) then
            local targetUnitDamageRebound = targetUnitAttr.damage_rebound - sourceUnitAttr.damage_rebound_oppose
            if (targetUnitDamageRebound > 0) then
                local ldr = math.round(lastDamage * targetUnitDamageRebound * 0.01)
                if (ldr > 0.01) then
                    hevent.setLastDamageUnit(sourceUnit, targetUnit)
                    hunit.subCurLife(sourceUnit, ldr)
                    htextTag.style(
                        htextTag.create2Unit(sourceUnit, "反伤" .. ldr, 12.00, "f8aaeb", 10, 1.00, 10.00),
                        "shrink",
                        0.05,
                        0
                    )
                    
                    hevent.triggerEvent(
                        targetUnit,
                        CONST_EVENT.rebound,
                        {
                            triggerUnit = targetUnit,
                            sourceUnit = sourceUnit,
                            damage = ldr
                        }
                    )
                    
                    hevent.triggerEvent(
                        sourceUnit,
                        CONST_EVENT.beRebound,
                        {
                            triggerUnit = sourceUnit,
                            sourceUnit = targetUnit,
                            damage = ldr
                        }
                    )
                end
            end
        end
        
        
        local buff
        local debuff
        if (damageKind == CONST_DAMAGE_KIND.attack) then
            buff = sourceUnitAttr.attack_buff
            debuff = sourceUnitAttr.attack_debuff
        elseif (damageKind == CONST_DAMAGE_KIND.skill) then
            buff = sourceUnitAttr.skill_buff
            debuff = sourceUnitAttr.skill_debuff
        end
        if (buff ~= nil and sourceUnit ~= nil) then
            for _, etc in ipairs(buff) do
                local b = etc.table
                if (b.val ~= 0 and b.during > 0 and math.random(1, 1000) <= b.odds * 10) then
                    hattr.set(sourceUnit, b.during, { [b.attr] = "+" .. b.val })
                    if (type(b.effect) == "string" and string.len(b.effect) > 0) then
                        heffect.bindUnit(b.effect, sourceUnit, "origin", b.during)
                    end
                end
            end
        end
        if (debuff ~= nil) then
            for _, etc in ipairs(debuff) do
                local b = etc.table
                if (b.val ~= 0 and b.during > 0 and math.random(1, 1000) <= b.odds * 10) then
                    hattr.set(targetUnit, b.during, { [b.attr] = "-" .. b.val })
                    if (type(b.effect) == "string" and string.len(b.effect) > 0) then
                        heffect.bindUnit(b.effect, targetUnit, "origin", b.during)
                    end
                end
            end
        end
        
        local specialEffect
        if (damageKind == CONST_DAMAGE_KIND.attack) then
            specialEffect = sourceUnitAttr.attack_effect
        elseif (damageKind == CONST_DAMAGE_KIND.skill) then
            specialEffect = sourceUnitAttr.skill_effect
        end
        if (specialEffect ~= nil) then
            for _, etc in ipairs(specialEffect) do
                local b = etc.table
                if ((b.odds or 0) > 0) then
                    if (b.attr == "knocking") then
                        
                        if (table.includes(CONST_DAMAGE_TYPE.physical, damageType) == true) then
                            hskill.knocking(
                                {
                                    whichUnit = targetUnit,
                                    odds = b.odds,
                                    damage = typeRatio[CONST_DAMAGE_TYPE.physical] * damage,
                                    percent = b.percent,
                                    sourceUnit = sourceUnit,
                                    effect = b.effect,
                                    damageKind = CONST_DAMAGE_KIND.special,
                                    damageType = { CONST_DAMAGE_TYPE.physical }
                                }
                            )
                        end
                    elseif (b.attr == "violence") then
                        
                        if (table.includes(CONST_DAMAGE_TYPE.magic, damageType) == true) then
                            hskill.violence(
                                {
                                    whichUnit = targetUnit,
                                    odds = b.odds,
                                    damage = typeRatio[CONST_DAMAGE_TYPE.magic] * damage,
                                    percent = b.percent,
                                    sourceUnit = sourceUnit,
                                    effect = b.effect,
                                    damageKind = CONST_DAMAGE_KIND.special,
                                    damageType = { CONST_DAMAGE_TYPE.magic }
                                }
                            )
                        end
                    elseif (b.attr == "split") then
                        
                        if (CONST_DAMAGE_KIND.attack == damageKind) then
                            hskill.split(
                                {
                                    whichUnit = targetUnit,
                                    odds = b.odds,
                                    damage = damage,
                                    percent = b.percent,
                                    radius = b.radius,
                                    sourceUnit = sourceUnit,
                                    effect = b.effect,
                                    damageKind = CONST_DAMAGE_KIND.special,
                                    damageType = { CONST_DAMAGE_TYPE.common }
                                }
                            )
                        end
                    elseif (b.attr == "broken") then
                        
                        hskill.broken(
                            {
                                whichUnit = targetUnit,
                                odds = b.odds,
                                damage = b.val or 0,
                                sourceUnit = sourceUnit,
                                effect = b.effect,
                                damageKind = CONST_DAMAGE_KIND.special,
                                damageType = b.damageType or { CONST_DAMAGE_TYPE.common }
                            }
                        )
                    elseif (b.attr == "swim") then
                        
                        hskill.swim(
                            {
                                whichUnit = targetUnit,
                                odds = b.odds,
                                damage = b.val or 0,
                                during = b.during,
                                sourceUnit = sourceUnit,
                                effect = b.effect,
                                damageKind = CONST_DAMAGE_KIND.special,
                                damageType = b.damageType or { CONST_DAMAGE_TYPE.common }
                            }
                        )
                    elseif (b.attr == "silent") then
                        
                        hskill.silent(
                            {
                                whichUnit = targetUnit,
                                odds = b.odds,
                                damage = b.val or 0,
                                during = b.during,
                                sourceUnit = sourceUnit,
                                effect = b.effect,
                                damageKind = CONST_DAMAGE_KIND.special,
                                damageType = b.damageType or { CONST_DAMAGE_TYPE.common }
                            }
                        )
                    elseif (b.attr == "unarm") then
                        
                        hskill.unarm(
                            {
                                whichUnit = targetUnit,
                                odds = b.odds,
                                damage = b.val or 0,
                                during = b.during,
                                sourceUnit = sourceUnit,
                                effect = b.effect,
                                damageKind = CONST_DAMAGE_KIND.special,
                                damageType = b.damageType or { CONST_DAMAGE_TYPE.common }
                            }
                        )
                    elseif (b.attr == "fetter") then
                        
                        hskill.fetter(
                            {
                                whichUnit = targetUnit,
                                odds = b.odds,
                                damage = b.val or 0,
                                during = b.during,
                                sourceUnit = sourceUnit,
                                effect = b.effect,
                                damageKind = CONST_DAMAGE_KIND.special,
                                damageType = b.damageType or { CONST_DAMAGE_TYPE.common }
                            }
                        )
                    elseif (b.attr == "bomb") then
                        
                        hskill.bomb(
                            {
                                odds = b.odds,
                                damage = b.val or 0,
                                radius = b.radius,
                                whichUnit = targetUnit,
                                sourceUnit = sourceUnit,
                                effect = b.effect,
                                effectSingle = b.effectSingle,
                                damageKind = CONST_DAMAGE_KIND.special,
                                damageType = b.damageType or { CONST_DAMAGE_TYPE.common }
                            }
                        )
                    elseif (b.attr == "lightning_chain") then
                        
                        hskill.lightningChain(
                            {
                                odds = b.odds,
                                damage = b.val or 0,
                                lightningType = b.lightning_type,
                                qty = b.qty,
                                change = b.change,
                                radius = b.radius or 500,
                                effect = b.effect,
                                isRepeat = false,
                                whichUnit = targetUnit,
                                prevUnit = sourceUnit,
                                sourceUnit = sourceUnit,
                                damageKind = CONST_DAMAGE_KIND.special,
                                damageType = b.damageType or { CONST_DAMAGE_TYPE.common, CONST_DAMAGE_TYPE.thunder }
                            }
                        )
                    elseif (b.attr == "crack_fly") then
                        
                        hskill.crackFly(
                            {
                                odds = b.odds,
                                damage = b.val or 0,
                                whichUnit = targetUnit,
                                sourceUnit = sourceUnit,
                                distance = b.distance,
                                high = b.high,
                                during = b.during,
                                effect = b.effect,
                                damageKind = CONST_DAMAGE_KIND.special,
                                damageType = b.damageType or { CONST_DAMAGE_TYPE.common }
                            }
                        )
                    end
                end
            end
        end
    end
end
hskill.damageStep = function(options)
    local times = options.times or 0
    local frequency = options.frequency or 0
    local damage = options.damage or 0
    if (options.whichUnit == nil) then
        print_err("hskill.damageStep:-whichUnit")
        return
    end
    if (times <= 0 or damage <= 0) then
        print_err("hskill.damageStep:-times -damage")
        return
    end
    if (times > 1 and frequency <= 0) then
        print_err("hskill.damageStep:-frequency")
        return
    end
    if (times <= 1) then
        hskill.damage(
            {
                sourceUnit = options.sourceUnit,
                targetUnit = options.whichUnit,
                effect = options.effect,
                damage = damage,
                damageKind = options.damageKind,
                damageType = options.damageType
            }
        )
        if (type(options.extraInfluence) == "function") then
            options.extraInfluence(eu)
        end
    else
        local ti = 0
        htime.setInterval(
            frequency,
            function(t)
                ti = ti + 1
                if (ti > times) then
                    htime.delTimer(t)
                    return
                end
                hskill.damage(
                    {
                        sourceUnit = options.sourceUnit,
                        targetUnit = options.whichUnit,
                        effect = options.effect,
                        damage = damage,
                        damageKind = options.damageKind,
                        damageType = options.damageType
                    }
                )
                if (type(options.extraInfluence) == "function") then
                    options.extraInfluence(eu)
                end
            end
        )
    end
end
hskill.damageRange = function(options)
    local radius = options.radius or 0
    local times = options.times or 0
    local frequency = options.frequency or 0
    local damage = options.damage or 0
    if (radius <= 0 or times <= 0) then
        print_err("hskill.damageRange:-radius -times")
        return
    end
    if (times > 1 and frequency <= 0) then
        print_err("hskill.damageRange:-frequency")
        return
    end
    local x, y
    if (options.x ~= nil or options.y ~= nil) then
        x = options.x
        y = options.y
    elseif (options.whichUnit ~= nil) then
        x = hunit.x(options.whichUnit)
        y = hunit.y(options.whichUnit)
    elseif (options.whichLoc ~= nil) then
        x = cj.GetLocatonX(options.whichLoc)
        y = cj.GetLocatonY(options.whichLoc)
    end
    if (x == nil or y == nil) then
        print_err("hskill.damageRange:-x -y")
        return
    end
    local filter = options.filter
    if (type(filter) ~= "function") then
        print_err("filter must be function")
        return
    end
    if (options.effect ~= nil) then
        heffect.toXY(options.effect, x, y, 0.25 + (times * frequency))
    end
    if (times <= 1) then
        local g = hgroup.createByXY(x, y, radius, filter)
        if (g == nil) then
            return
        end
        if (hgroup.count(g) <= 0) then
            return
        end
        hgroup.loop(
            g,
            function(eu)
                hskill.damage(
                    {
                        sourceUnit = options.sourceUnit,
                        targetUnit = eu,
                        effect = options.effectSingle,
                        damage = damage,
                        damageKind = options.damageKind,
                        damageType = options.damageType
                    }
                )
                if (type(options.extraInfluence) == "function") then
                    options.extraInfluence(eu)
                end
            end,
            true
        )
    else
        local ti = 0
        htime.setInterval(
            frequency,
            function(t)
                ti = ti + 1
                if (ti > times) then
                    htime.delTimer(t)
                    return
                end
                local g = hgroup.createByXY(x, y, radius, filter)
                if (g == nil) then
                    return
                end
                if (hgroup.count(g) <= 0) then
                    return
                end
                hgroup.loop(
                    g,
                    function(eu)
                        hskill.damage(
                            {
                                sourceUnit = options.sourceUnit,
                                targetUnit = eu,
                                effect = options.effectSingle,
                                damage = damage,
                                damageKind = options.damageKind,
                                damageType = options.damageType
                            }
                        )
                        if (type(options.extraInfluence) == "function") then
                            options.extraInfluence(eu)
                        end
                    end,
                    true
                )
            end
        )
    end
end
hskill.damageGroup = function(options)
    local times = options.times or 0
    local frequency = options.frequency or 0
    local damage = options.damage or 0
    if (options.whichGroup == nil) then
        print_err("hskill.damageGroup:-whichGroup")
        return
    end
    if (times <= 0 or frequency < 0) then
        print_err("hskill.damageGroup:-times -frequency")
        return
    end
    if (times <= 1) then
        hgroup.loop(
            options.whichGroup,
            function(eu)
                hskill.damage(
                    {
                        sourceUnit = options.sourceUnit,
                        targetUnit = eu,
                        effect = options.effect,
                        damage = damage,
                        damageKind = options.damageKind,
                        damageType = options.damageType
                    }
                )
                if (type(options.extraInfluence) == "function") then
                    options.extraInfluence(eu)
                end
            end
        )
    else
        local ti = 0
        htime.setInterval(
            frequency,
            function(t)
                ti = ti + 1
                if (ti > times) then
                    htime.delTimer(t)
                    return
                end
                hgroup.loop(
                    options.whichGroup,
                    function(eu)
                        hskill.damage(
                            {
                                sourceUnit = options.sourceUnit,
                                targetUnit = eu,
                                effect = options.effect,
                                damage = damage,
                                damageKind = options.damageKind,
                                damageType = options.damageType
                            }
                        )
                        if (type(options.extraInfluence) == "function") then
                            options.extraInfluence(eu)
                        end
                    end
                )
            end
        )
    end
end
hskill.knocking = function(options)
    if (options.whichUnit == nil) then
        print_err("knocking: -whichUnit")
        return
    end
    local odds = options.odds or 0
    local damage = options.damage or 0
    local percent = options.percent or 0
    if (odds <= 0 or damage <= 0 or percent <= 0) then
        print_err("knocking: -odds -damage -percent")
        return
    end
    local targetUnit = options.whichUnit
    local targetOppose = hattr.get(targetUnit, "knocking_oppose")
    odds = odds - targetOppose
    if (odds <= 0) then
        return
    end
    if (math.random(1, 100) <= odds) then
        local damageKind = options.damageKind or CONST_DAMAGE_KIND.skill
        local damageType = options.damageType or { CONST_DAMAGE_TYPE.physical }
        local effect = options.effect or "war3mapImported\\eff_crit.mdl"
        heffect.toUnit(effect, targetUnit, 0.5)
        
        local val = damage * percent * 0.01
        hskill.damage(
            {
                sourceUnit = options.sourceUnit,
                targetUnit = targetUnit,
                damage = val,
                damageString = "物暴",
                damageStringColor = "ef3215",
                damageKind = damageKind,
                damageType = damageType
            }
        )
        
        hevent.triggerEvent(
            options.sourceUnit,
            CONST_EVENT.knocking,
            {
                triggerUnit = options.sourceUnit,
                targetUnit = targetUnit,
                damage = val,
                odds = odds,
                percent = percent
            }
        )
        
        hevent.triggerEvent(
            targetUnit,
            CONST_EVENT.beKnocking,
            {
                triggerUnit = options.sourceUnit,
                sourceUnit = targetUnit,
                damage = val,
                odds = odds,
                percent = percent
            }
        )
    end
end
hskill.violence = function(options)
    if (options.whichUnit == nil) then
        print_err("violence: -whichUnit")
        return
    end
    local odds = options.odds or 0
    local damage = options.damage or 0
    local percent = options.percent or 0
    if (odds <= 0 or damage <= 0 or percent <= 0) then
        print_err("violence: -odds -damage -percent")
        return
    end
    local targetUnit = options.whichUnit
    local targetOppose = hattr.get(targetUnit, "violence_oppose")
    odds = odds - targetOppose
    if (odds <= 0) then
        return
    end
    if (math.random(1, 100) <= odds) then
        local damageKind = options.damageKind or CONST_DAMAGE_KIND.skill
        local damageType = options.damageType or { CONST_DAMAGE_TYPE.magic }
        local effect = options.effect or "war3mapImported\\eff_demon_explosion.mdl"
        heffect.toUnit(effect, targetUnit, 0.5)
        
        local val = damage * percent * 0.01
        hskill.damage(
            {
                sourceUnit = options.sourceUnit,
                targetUnit = targetUnit,
                damage = val,
                damageString = "魔爆",
                damageStringColor = "15bcef",
                damageKind = damageKind,
                damageType = damageType
            }
        )
        
        hevent.triggerEvent(
            sourceUnit,
            CONST_EVENT.violence,
            {
                triggerUnit = options.sourceUnit,
                targetUnit = targetUnit,
                damage = val,
                odds = odds,
                percent = percent
            }
        )
        
        hevent.triggerEvent(
            targetUnit,
            CONST_EVENT.beViolence,
            {
                triggerUnit = targetUnit,
                sourceUnit = targetUnit,
                damage = val,
                odds = odds,
                percent = percent
            }
        )
    end
end
hskill.split = function(options)
    if (options.whichUnit == nil) then
        print_err("split: -whichUnit")
        return
    end
    local odds = options.odds or 0
    local damage = options.damage or 0
    local percent = options.percent or 0
    local radius = options.radius or 0
    if (odds <= 0 or damage <= 0 or percent <= 0 or radius <= 0) then
        print_err("split: -odds -damage -percent -radius")
        return
    end
    local targetUnit = options.whichUnit
    local targetOppose = hattr.get(targetUnit, "split_oppose")
    odds = odds - targetOppose
    if (odds <= 0) then
        return
    end
    if (math.random(1, 100) <= odds) then
        local g = hgroup.createByUnit(
            targetUnit,
            radius,
            function(filterUnit)
                local flag = true
                if (his.dead(filterUnit)) then
                    flag = false
                end
                if (his.enemy(filterUnit, targetUnit)) then
                    flag = false
                end
                if (his.structure(filterUnit)) then
                    flag = false
                end
                return flag
            end
        )
        local splitDamage = damage * percent * 0.01
        local damageKind = options.damageKind or CONST_DAMAGE_KIND.skill
        local damageType = options.damageType or {}
        hgroup.loop(
            g,
            function(eu)
                if (eu ~= targetUnit) then
                    hskill.damage(
                        {
                            sourceUnit = options.sourceUnit,
                            targetUnit = eu,
                            damage = splitDamage,
                            damageString = "分裂",
                            damageStringColor = "ff6347",
                            damageKind = damageKind,
                            damageType = damageType,
                            effect = options.effect
                        }
                    )
                end
            end,
            true
        )
        
        hevent.triggerEvent(
            sourceUnit,
            CONST_EVENT.split,
            {
                triggerUnit = options.sourceUnit,
                targetUnit = targetUnit,
                damage = splitDamage,
                radius = radius,
                percent = percent
            }
        )
        
        hevent.triggerEvent(
            targetUnit,
            CONST_EVENT.beSpilt,
            {
                triggerUnit = targetUnit,
                sourceUnit = options.sourceUnit,
                damage = splitDamage,
                radius = radius,
                percent = percent
            }
        )
    end
end
hskill.broken = function(options)
    if (options.whichUnit == nil) then
        return
    end
    local u = options.whichUnit
    local odds = options.odds or 100
    local damage = options.damage or 0
    local sourceUnit = options.sourceUnit or nil
    local damageKind = options.damageKind or CONST_DAMAGE_KIND.skill
    local damageType = options.damageType or {}
    
    local oppose = hattr.get(u, "broken_oppose")
    odds = odds - oppose 
    if (odds <= 0) then
        return
    else
        if (math.random(1, 1000) > odds * 10) then
            return
        end
        damage = damage * (1 - oppose * 0.01)
    end
    local cu = hunit.create(
        {
            register = false,
            unitId = hskill.SKILL_TOKEN,
            whichPlayer = hplayer.player_passive,
            x = hunit.x(u),
            y = hunit.y(u)
        }
    )
    cj.UnitAddAbility(cu, hskill.SKILL_BREAK[0.05])
    cj.SetUnitAbilityLevel(cu, hskill.SKILL_BREAK[0.05], 1)
    cj.IssueTargetOrder(cu, "thunderbolt", u)
    hunit.del(cu, 0.3)
    if (type(options.effect) == "string" and string.len(options.effect) > 0) then
        heffect.bindUnit(options.effect, u, "origin", during)
    end
    if (damage > 0) then
        hskill.damage(
            {
                sourceUnit = sourceUnit,
                targetUnit = u,
                damage = damage,
                damageString = "打断",
                damageStringColor = "F0F8FF",
                damageKind = damageKind,
                damageType = damageType
            }
        )
    end
    
    hevent.triggerEvent(
        sourceUnit,
        CONST_EVENT.broken,
        {
            triggerUnit = sourceUnit,
            targetUnit = u,
            odds = odds,
            damage = damage
        }
    )
    
    hevent.triggerEvent(
        u,
        CONST_EVENT.beBroken,
        {
            triggerUnit = u,
            sourceUnit = sourceUnit,
            odds = odds,
            damage = damage
        }
    )
end
hskill.swim = function(options)
    if (options.whichUnit == nil or options.during == nil or options.during <= 0) then
        return
    end
    if (his.deleted(options.whichUnit)) then
        return
    end
    local u = options.whichUnit
    local during = options.during
    local odds = options.odds or 100
    local damage = options.damage or 0
    local sourceUnit = options.sourceUnit
    local damageKind = options.damageKind or CONST_DAMAGE_KIND.skill
    local damageType = options.damageType or {}
    
    local oppose = hattr.get(u, "swim_oppose")
    odds = odds - oppose 
    if (odds <= 0) then
        return
    else
        if (math.random(1, 1000) > odds * 10) then
            return
        end
        during = during * (1 - oppose * 0.01)
        damage = damage * (1 - oppose * 0.01)
    end
    local damageString = "眩晕"
    local damageStringColor = "4169E1"
    local swimTimer = hskill.get(u, "swimTimer")
    if (swimTimer ~= nil and htime.getRemainTime(swimTimer) > 0) then
        if (during <= htime.getRemainTime(swimTimer)) then
            return
        else
            htime.delTimer(swimTimer)
            hskill.set(u, "swimTimer", nil)
            cj.UnitRemoveAbility(u, hskill.BUFF_SWIM)
            damageString = "劲眩"
            damageStringColor = "64e3f2"
        end
    end
    local cu = hunit.create(
        {
            register = false,
            unitId = hskill.SKILL_TOKEN,
            whichPlayer = hplayer.player_passive,
            x = hunit.x(u),
            y = hunit.y(u)
        }
    )
    
    if (during < 0.05) then
        during = 0.05
    end
    hunit.set(u, "isSwim", true)
    if (type(options.effect) == "string" and string.len(options.effect) > 0) then
        heffect.bindUnit(options.effect, u, "origin", during)
    end
    if (during <= 0.5) then
        during = 0.05 * math.floor(during / 0.05) 
        cj.UnitAddAbility(cu, hskill.SKILL_BREAK[during])
        cj.SetUnitAbilityLevel(cu, hskill.SKILL_BREAK[during], 1)
        cj.IssueTargetOrder(cu, "thunderbolt", u)
        hunit.del(cu, 0.4)
    else
        
        cj.UnitAddAbility(cu, hskill.SKILL_SWIM_UNLIMIT)
        cj.SetUnitAbilityLevel(cu, hskill.SKILL_SWIM_UNLIMIT, 1)
        cj.IssueTargetOrder(cu, "thunderbolt", u)
        hunit.del(cu, 0.4)
        hskill.set(
            u,
            "swimTimer",
            htime.setTimeout(
                during,
                function(t)
                    htime.delTimer(t)
                    cj.UnitRemoveAbility(u, hskill.BUFF_SWIM)
                    hunit.set(u, "isSwim", false)
                end
            )
        )
    end
    
    hevent.triggerEvent(
        sourceUnit,
        CONST_EVENT.swim,
        {
            triggerUnit = sourceUnit,
            targetUnit = u,
            odds = odds,
            damage = damage,
            during = during
        }
    )
    
    hevent.triggerEvent(
        u,
        CONST_EVENT.beSwim,
        {
            triggerUnit = u,
            sourceUnit = sourceUnit,
            odds = odds,
            damage = damage,
            during = during
        }
    )
    if (damage > 0) then
        hskill.damage(
            {
                sourceUnit = sourceUnit,
                targetUnit = u,
                damage = damage,
                damageKind = damageKind,
                damageType = damageType,
                damageString = damageString,
                damageStringColor = damageStringColor
            }
        )
    end
end
hskill.silent = function(options)
    if (options.whichUnit == nil or options.during == nil or options.during <= 0) then
        return
    end
    if (his.deleted(options.whichUnit)) then
        return
    end
    local u = options.whichUnit
    local during = options.during
    local odds = options.odds or 100
    local damage = options.damage or 0
    local sourceUnit = options.sourceUnit
    local damageKind = options.damageKind or CONST_DAMAGE_KIND.skill
    local damageType = options.damageType or {}
    
    local oppose = hattr.get(u, "silent_oppose")
    odds = odds - oppose 
    if (odds <= 0) then
        return
    else
        if (math.random(1, 1000) > odds * 10) then
            return
        end
        during = during * (1 - oppose * 0.01)
        damage = damage * (1 - oppose * 0.01)
    end
    local level = hskill.get(u, "silentLevel", 0) + 1
    if (level <= 1) then
        htextTag.style(htextTag.create2Unit(u, "沉默", 6.00, "ee82ee", 10, 1.00, 10.00), "scale", 0, 0.2)
    else
        htextTag.style(
            htextTag.create2Unit(u, math.floor(level) .. "重沉默", 6.00, "ee82ee", 10, 1.00, 10.00),
            "scale",
            0,
            0.2
        )
    end
    if (type(options.effect) == "string" and string.len(options.effect) > 0) then
        heffect.bindUnit(options.effect, u, "origin", during)
    end
    hskill.set(u, "silentLevel", level)
    if (table.includes(u, hRuntime.skill.silentUnits) == false) then
        table.insert(hRuntime.skill.silentUnits, u)
        local eff = heffect.bindUnit("Abilities\\Spells\\Other\\Silence\\SilenceTarget.mdl", u, "head", -1)
        hskill.set(u, "silentEffect", eff)
    end
    hunit.set(u, "isSilent", true)
    if (damage > 0) then
        hskill.damage(
            {
                sourceUnit = sourceUnit,
                targetUnit = u,
                damage = damage,
                damageString = "沉默",
                damageKind = damageKind,
                damageType = damageType
            }
        )
    end
    
    hevent.triggerEvent(
        sourceUnit,
        CONST_EVENT.silent,
        {
            triggerUnit = sourceUnit,
            targetUnit = u,
            odds = odds,
            damage = damage,
            during = during
        }
    )
    
    hevent.triggerEvent(
        u,
        CONST_EVENT.beSilent,
        {
            triggerUnit = u,
            sourceUnit = sourceUnit,
            odds = odds,
            damage = damage,
            during = during
        }
    )
    htime.setTimeout(
        during,
        function(t)
            htime.delTimer(t)
            hskill.set(u, "silentLevel", hskill.get(u, "silentLevel", 0) - 1)
            if (hskill.get(u, "silentLevel") <= 0) then
                heffect.del(hskill.get(u, "silentEffect"))
                if (table.includes(u, hRuntime.skill.silentUnits)) then
                    table.delete(u, hRuntime.skill.silentUnits)
                end
                hunit.set(u, "isSilent", false)
            end
        end
    )
end
hskill.unarm = function(options)
    if (options.whichUnit == nil or options.during == nil or options.during <= 0) then
        return
    end
    if (his.deleted(options.whichUnit)) then
        return
    end
    local u = options.whichUnit
    local during = options.during
    local odds = options.odds or 100
    local damage = options.damage or 0
    local sourceUnit = options.sourceUnit
    local damageKind = options.damageKind or CONST_DAMAGE_KIND.skill
    local damageType = options.damageType or {}
    
    local oppose = hattr.get(u, "unarm_oppose")
    odds = odds - oppose 
    if (odds <= 0) then
        return
    else
        if (math.random(1, 1000) > odds * 10) then
            return
        end
        during = during * (1 - oppose * 0.01)
        damage = damage * (1 - oppose * 0.01)
    end
    local level = hskill.get(u, "unarmLevel", 0) + 1
    if (level <= 1) then
        htextTag.style(htextTag.create2Unit(u, "缴械", 6.00, "ffe4e1", 10, 1.00, 10.00), "scale", 0, 0.2)
    else
        htextTag.style(
            htextTag.create2Unit(u, math.floor(level) .. "重缴械", 6.00, "ffe4e1", 10, 1.00, 10.00),
            "scale",
            0,
            0.2
        )
    end
    if (type(options.effect) == "string" and string.len(options.effect) > 0) then
        heffect.bindUnit(options.effect, u, "origin", during)
    end
    hskill.set(u, "unarmLevel", level)
    if (table.includes(u, hRuntime.skill.unarmUnits) == false) then
        table.insert(hRuntime.skill.unarmUnits, u)
        local eff = heffect.bindUnit("Abilities\\Spells\\Other\\Silence\\SilenceTarget.mdl", u, "weapon", -1)
        hskill.set(u, "unarmEffect", eff)
    end
    hunit.set(u, "isUnArm", true)
    if (damage > 0) then
        hskill.damage(
            {
                sourceUnit = sourceUnit,
                targetUnit = u,
                damage = damage,
                damageString = "缴械",
                damageKind = damageKind,
                damageType = damageType
            }
        )
    end
    
    hevent.triggerEvent(
        sourceUnit,
        CONST_EVENT.unarm,
        {
            triggerUnit = sourceUnit,
            targetUnit = u,
            odds = odds,
            damage = damage,
            during = during
        }
    )
    
    hevent.triggerEvent(
        u,
        CONST_EVENT.beUnarm,
        {
            triggerUnit = u,
            sourceUnit = sourceUnit,
            odds = odds,
            damage = damage,
            during = during
        }
    )
    htime.setTimeout(
        during,
        function(t)
            htime.delTimer(t)
            hskill.set(u, "unarmLevel", hskill.get(u, "unarmLevel", 0) - 1)
            if (hskill.get(u, "unarmLevel") <= 0) then
                heffect.del(hskill.get(u, "unarmEffect"))
                if (table.includes(u, hRuntime.skill.unarmUnits)) then
                    table.delete(u, hRuntime.skill.unarmUnits)
                end
                hunit.set(u, "isUnArm", false)
            end
        end
    )
end
hskill.fetter = function(options)
    if (options.whichUnit == nil or options.during == nil or options.during <= 0) then
        return
    end
    local u = options.whichUnit
    local during = options.during
    local odds = options.odds or 100
    local damage = options.damage or 0
    local sourceUnit = options.sourceUnit or nil
    local damageKind = options.damageKind or CONST_DAMAGE_KIND.skill
    local damageType = options.damageType or {}
    
    local oppose = hattr.get(u, "fetter_oppose")
    odds = odds - oppose 
    if (odds <= 0) then
        return
    else
        if (math.random(1, 1000) > odds * 10) then
            return
        end
        during = during * (1 - oppose * 0.01)
        damage = damage * (1 - oppose * 0.01)
    end
    htextTag.style(htextTag.create2Unit(u, "缚足", 6.00, "ffa500", 10, 1.00, 10.00), "scale", 0, 0.2)
    if (type(options.effect) == "string" and string.len(options.effect) > 0) then
        heffect.bindUnit(options.effect, u, "origin", during)
    end
    hattr.set(
        u,
        during,
        {
            move = "-522"
        }
    )
    if (damage > 0) then
        hskill.damage(
            {
                sourceUnit = sourceUnit,
                targetUnit = u,
                damage = damage,
                damageString = "缚足",
                damageKind = damageKind,
                damageType = damageType
            }
        )
    end
    
    hevent.triggerEvent(
        sourceUnit,
        CONST_EVENT.fetter,
        {
            triggerUnit = sourceUnit,
            targetUnit = u,
            odds = odds,
            damage = damage,
            during = during
        }
    )
    
    hevent.triggerEvent(
        u,
        CONST_EVENT.beFetter,
        {
            triggerUnit = u,
            sourceUnit = sourceUnit,
            odds = odds,
            damage = damage,
            during = during
        }
    )
end
hskill.bomb = function(options)
    if (options.damage == nil or options.damage <= 0) then
        return
    end
    local odds = options.odds or 100
    local radius = options.radius or 1
    local damageKind = options.damageKind or CONST_DAMAGE_KIND.skill
    local damageType = options.damageType or {}
    local whichGroup
    if (options.whichGroup ~= nil) then
        whichGroup = options.whichGroup
    elseif (options.whichUnit ~= nil) then
        whichGroup = hgroup.createByUnit(
            options.whichUnit,
            radius,
            function(filterUnit)
                local flag = true
                if (his.enemy(options.whichUnit, filterUnit)) then
                    flag = false
                end
                if (his.dead(filterUnit)) then
                    flag = false
                end
                if (his.structure(filterUnit)) then
                    flag = false
                end
                return flag
            end
        )
    else
        print_err("lost bomb target")
        return
    end
    hgroup.loop(
        whichGroup,
        function(eu)
            
            local oppose = hattr.get(eu, "bomb_oppose")
            local tempOdds = odds - oppose 
            local damage = options.damage
            if (tempOdds <= 0) then
                return
            else
                if (math.random(1, 1000) > tempOdds * 10) then
                    return
                end
                damage = damage * (1 - oppose * 0.01)
            end
            hskill.damage(
                {
                    sourceUnit = options.sourceUnit,
                    targetUnit = eu,
                    damage = damage,
                    damageKind = damageKind,
                    damageType = damageType,
                    damageString = "爆破",
                    damageStringColor = "FF6347"
                }
            )
            
            hevent.triggerEvent(
                options.sourceUnit,
                CONST_EVENT.bomb,
                {
                    triggerUnit = options.sourceUnit,
                    targetUnit = eu,
                    odds = odds,
                    damage = options.damage,
                    radius = radius
                }
            )
            
            hevent.triggerEvent(
                eu,
                CONST_EVENT.beBomb,
                {
                    triggerUnit = eu,
                    sourceUnit = options.sourceUnit,
                    odds = odds,
                    damage = options.damage,
                    radius = radius
                }
            )
        end,
        true
    )
end
hskill.lightningChain = function(options)
    if (options.damage == nil or options.damage <= 0) then
        print_err("lightningChain -damage")
        return
    end
    if (options.whichUnit == nil) then
        print_err("lightningChain -whichUnit")
        return
    end
    local odds = options.odds or 100
    local damage = options.damage
    
    local oppose = hattr.get(options.whichUnit, "lightning_chain_oppose")
    odds = odds - oppose 
    if (odds <= 0) then
        return
    else
        if (math.random(1, 1000) > odds * 10) then
            return
        end
        damage = damage * (1 - oppose * 0.01)
    end
    local whichUnit = options.whichUnit
    local prevUnit = options.prevUnit
    local lightningType = options.lightningType or hlightning.type.shan_dian_lian_ci
    local change = options.change or 0
    local radius = options.radius or 500
    local isRepeat = options.isRepeat or false
    local damageKind = options.damageKind or CONST_DAMAGE_KIND.skill
    local damageType = options.damageType or { "thunder" }
    options.qty = options.qty or 1
    options.qty = options.qty - 1
    if (options.qty < 0) then
        options.qty = 0
    end
    if (options.index == nil) then
        options.index = 1
    else
        options.index = options.index + 1
    end
    hlightning.unit2unit(lightningType, prevUnit, whichUnit, 0.25)
    if (options.effect ~= nil) then
        heffect.bindUnit(options.effect, whichUnit, "origin", 0.5)
    end
    hskill.damage(
        {
            sourceUnit = options.sourceUnit,
            targetUnit = whichUnit,
            damage = damage,
            damageKind = damageKind,
            damageType = damageType,
            damageString = "电链",
            damageStringColor = "87cefa"
        }
    )
    
    hevent.triggerEvent(
        options.sourceUnit,
        CONST_EVENT.lightningChain,
        {
            triggerUnit = options.sourceUnit,
            targetUnit = whichUnit,
            odds = odds,
            damage = damage,
            radius = radius,
            index = options.index
        }
    )
    
    hevent.triggerEvent(
        whichUnit,
        CONST_EVENT.beLightningChain,
        {
            triggerUnit = whichUnit,
            sourceUnit = options.sourceUnit,
            odds = odds,
            damage = damage,
            radius = radius,
            index = options.index
        }
    )
    if (options.qty > 0) then
        if (isRepeat ~= true) then
            if (options.repeatGroup == nil) then
                options.repeatGroup = {}
            end
            hgroup.addUnit(options.repeatGroup, whichUnit)
        end
        local g = hgroup.createByUnit(
            whichUnit,
            radius,
            function(filterUnit)
                local flag = true
                if (his.dead(filterUnit)) then
                    flag = false
                end
                if (his.enemy(filterUnit, whichUnit)) then
                    flag = false
                end
                if (his.structure(filterUnit)) then
                    flag = false
                end
                if (his.unit(whichUnit, filterUnit)) then
                    flag = false
                end
                if (isRepeat ~= true and hgroup.includes(options.repeatGroup, filterUnit)) then
                    flag = false
                end
                return flag
            end
        )
        if (hgroup.isEmpty(g)) then
            return
        end
        options.whichUnit = hgroup.getClosest(g, hunit.x(whichUnit), hunit.y(whichUnit))
        options.damage = options.damage * (1 + change)
        options.prevUnit = whichUnit
        options.odds = 9999 
        hgroup.clear(g, true, false)
        if (options.damage > 0) then
            htime.setTimeout(
                0.35,
                function(t)
                    htime.delTimer(t)
                    hskill.lightningChain(options)
                end
            )
        end
    else
        if (options.repeatGroup ~= nil) then
            options.repeatGroup = nil
        end
    end
end
hskill.crackFly = function(options)
    if (options.damage == nil or options.damage < 0) then
        return
    end
    if (options.whichUnit == nil) then
        return
    end
    local odds = options.odds or 100
    local damage = options.damage or 0
    
    local oppose = hattr.get(options.whichUnit, "crack_fly_oppose")
    odds = odds - oppose 
    if (odds <= 0) then
        return
    else
        if (math.random(1, 1000) > odds * 10) then
            return
        end
        if (damage > 0) then
            damage = damage * (1 - oppose * 0.01)
        end
    end
    local distance = options.distance or 0
    local high = options.high or 100
    local during = options.during or 0.5
    if (during < 0.5) then
        during = 0.5
    end
    
    if (hunit.get(options.whichUnit, "isCrackFly", false) == true) then
        return
    end
    hunit.set(options.whichUnit, "isCrackFly", true)
    
    if (hcamera.getModel(hunit.getOwner(options.whichUnit)) == "zoomin") then
        distance = distance * 0.5
        high = high * 0.5
    end
    local tempObj = {
        odds = 99999,
        whichUnit = options.whichUnit,
        during = during
    }
    hskill.unarm(tempObj)
    hskill.silent(tempObj)
    hattr.set(
        options.whichUnit,
        during,
        {
            move = "-9999"
        }
    )
    if (type(options.effect) == "string" and string.len(options.effect) > 0) then
        heffect.bindUnit(options.effect, options.whichUnit, "origin", during)
    end
    hunit.setCanFly(options.whichUnit)
    cj.SetUnitPathing(options.whichUnit, false)
    local originHigh = cj.GetUnitFlyHeight(options.whichUnit)
    local originFacing = hunit.getFacing(options.whichUnit)
    local originDeg
    if (options.sourceUnit ~= nil) then
        originDeg = math.getDegBetweenUnit(options.sourceUnit, options.whichUnit)
    else
        originDeg = math.random(0, 360)
    end
    local cost = 0
    
    hevent.triggerEvent(
        options.sourceUnit,
        CONST_EVENT.crackFly,
        {
            triggerUnit = options.sourceUnit,
            targetUnit = options.whichUnit,
            odds = odds,
            damage = damage,
            high = high,
            distance = distance
        }
    )
    
    hevent.triggerEvent(
        options.whichUnit,
        CONST_EVENT.beCrackFly,
        {
            triggerUnit = options.whichUnit,
            sourceUnit = options.sourceUnit,
            odds = odds,
            damage = damage,
            high = high,
            distance = distance
        }
    )
    htime.setInterval(
        0.05,
        function(t)
            local dist = 0
            local z = 0
            local timerSetTime = htime.getSetTime(t)
            if (cost > during) then
                if (damage > 0) then
                    hskill.damage(
                        {
                            sourceUnit = options.sourceUnit,
                            targetUnit = options.whichUnit,
                            effect = options.effect,
                            damage = damage,
                            damageKind = options.damageKind,
                            damageType = options.damageType,
                            damageString = "击飞",
                            damageStringColor = "808000"
                        }
                    )
                end
                cj.SetUnitFlyHeight(options.whichUnit, originHigh, 10000)
                cj.SetUnitPathing(options.whichUnit, true)
                hunit.set(options.whichUnit, "isCrackFly", false)
                
                local tempEff = "Objects\\Spawnmodels\\Undead\\ImpaleTargetDust\\ImpaleTargetDust.mdl"
                if (his.water(options.whichUnit) == true) then
                    
                    tempEff = "Abilities\\Spells\\Other\\CrushingWave\\CrushingWaveDamage.mdl"
                end
                heffect.toUnit(tempEff, options.whichUnit, 0)
                htime.delTimer(t)
                return
            end
            cost = cost + timerSetTime
            if (cost < during * 0.35) then
                dist = distance / (during * 0.5 / timerSetTime)
                z = high / (during * 0.35 / timerSetTime)
                if (dist > 0) then
                    local pxy = math.polarProjection(
                        hunit.x(options.whichUnit),
                        hunit.y(options.whichUnit),
                        dist,
                        originDeg
                    )
                    cj.SetUnitFacing(options.whichUnit, originFacing)
                    if (his.borderMap(pxy.x, pxy.y) == false) then
                        hunit.portal(options.whichUnit, pxy.x, pxy.y)
                    end
                end
                if (z > 0) then
                    cj.SetUnitFlyHeight(options.whichUnit, cj.GetUnitFlyHeight(options.whichUnit) + z, z / timerSetTime)
                end
            else
                dist = distance / (during * 0.5 / timerSetTime)
                z = high / (during * 0.65 / timerSetTime)
                if (dist > 0) then
                    local pxy = math.polarProjection(
                        hunit.x(options.whichUnit),
                        hunit.y(options.whichUnit),
                        dist,
                        originDeg
                    )
                    cj.SetUnitFacing(options.whichUnit, originFacing)
                    if (his.borderMap(pxy.x, pxy.y) == false) then
                        hunit.portal(options.whichUnit, pxy.x, pxy.y)
                    end
                end
                if (z > 0) then
                    cj.SetUnitFlyHeight(options.whichUnit, cj.GetUnitFlyHeight(options.whichUnit) - z, z / timerSetTime)
                end
            end
        end
    )
end
hskill.rangeSwim = function(options)
    local radius = options.radius or 0
    local during = options.during or 0
    local damage = options.damage or 0
    if (radius <= 0 or during <= 0) then
        print_err("hskill.rangeSwim:-radius -during")
        return
    end
    local odds = options.odds or 100
    local effect = options.effect or "Abilities\\Spells\\Orc\\WarStomp\\WarStompCaster.mdl"
    local x, y
    if (options.x ~= nil or options.y ~= nil) then
        x = options.x
        y = options.y
    elseif (options.whichUnit ~= nil) then
        x = hunit.x(options.whichUnit)
        y = hunit.y(options.whichUnit)
    elseif (options.whichLoc ~= nil) then
        x = cj.GetLocatonX(options.whichLoc)
        y = cj.GetLocatonY(options.whichLoc)
    end
    if (x == nil or y == nil) then
        print_err("hskill.rangeSwim:-x -y")
        return
    end
    local filter = options.filter
    if (type(filter) ~= "function") then
        print_err("filter must be function")
        return
    end
    heffect.toXY(effect, x, y, 0)
    local g = hgroup.createByXY(x, y, radius, filter)
    if (g == nil) then
        print_err("rangeSwim has not target")
        return
    end
    if (hgroup.count(g) <= 0) then
        return
    end
    hgroup.loop(
        g,
        function(eu)
            hskill.swim(
                {
                    odds = odds,
                    whichUnit = eu,
                    during = during,
                    damage = damage,
                    sourceUnit = options.sourceUnit,
                    damageKind = options.damageKind,
                    damageType = options.damageType
                }
            )
        end,
        true
    )
end
hskill.whirlwind = function(options)
    local radius = options.radius or 0
    local frequency = options.frequency or 0
    local during = options.during or 0
    local damage = options.damage or 0
    if (radius <= 0 or during <= 0 or frequency <= 0) then
        print_err("hskill.whirlwind:-radius -during -frequency")
        return
    end
    if (during < frequency) then
        print_err("hskill.whirlwind:-during < frequency")
        return
    end
    if (damage < 0 or options.sourceUnit == nil) then
        print_err("hskill.whirlwind:-damage -sourceUnit")
        return
    end
    if (options.filter == nil) then
        print_err("hskill.whirlwind:-filter")
        return
    end
    local filter = options.filter
    if (type(filter) ~= "function") then
        print_err("filter must be function")
        return
    end
    
    if (hunit.get(options.sourceUnit, "isWhirlwind", false) == true) then
        return
    end
    hunit.set(options.sourceUnit, "isWhirlwind", true)
    if (options.effect ~= nil) then
        heffect.bindUnit(options.effect, options.sourceUnit, "origin", during)
    end
    if (options.animation) then
        cj.AddUnitAnimationProperties(options.sourceUnit, options.animation, true)
    end
    local time = 0
    htime.setInterval(
        frequency,
        function(t)
            time = time + frequency
            if (time > during) then
                htime.delTimer(t)
                if (options.animation) then
                    cj.AddUnitAnimationProperties(options.sourceUnit, options.animation, false)
                end
                hunit.set(options.sourceUnit, "isWhirlwind", false)
                return
            end
            if (options.animation) then
                hunit.animate(options.sourceUnit, options.animation)
            end
            local g = hgroup.createByUnit(options.sourceUnit, radius, filter)
            if (g == nil) then
                return
            end
            if (hgroup.count(g) <= 0) then
                return
            end
            hgroup.loop(
                g,
                function(eu)
                    hskill.damage(
                        {
                            sourceUnit = options.sourceUnit,
                            targetUnit = eu,
                            effect = options.effectSingle,
                            damage = damage,
                            damageKind = options.damageKind,
                            damageType = options.damageType
                        }
                    )
                end,
                true
            )
        end
    )
end
hskill.leap = function(options)
    if (options.sourceUnit == nil) then
        print_err("leap: -sourceUnit")
        return
    end
    if (type(options.filter) ~= "function") then
        print_err("leap: -filter")
        return
    end
    if (options.arrowUnit == nil and options.tokenArrow == nil) then
        print_err("leap: -not arrow")
    end
    if (options.targetUnit == nil and options.x == nil and options.y == nil) then
        print_err("leap: -target")
        return
    end
    local frequency = 0.02
    local acceleration = options.acceleration or 0
    local speed = options.speed or 10
    if (speed > 150) then
        speed = 150 
    elseif (speed <= 1) then
        speed = 1 
    end
    local filter = options.filter
    local sourceUnit = options.sourceUnit
    local prevUnit = options.prevUnit or sourceUnit
    local damageMovement = options.damageMovement or 0
    local damageMovementRadius = options.damageMovementRadius or 0
    local damageMovementRepeat = options.damageMovementRepeat or false
    local damageMovementDrag = options.damageMovementDrag or false
    local damageEnd = options.damageEnd or 0
    local damageEndRadius = options.damageEndRadius or 0
    local extraInfluence = options.extraInfluence
    local arrowUnit = options.arrowUnit
    local tokenArrow = options.tokenArrow
    local tokenArrowScale = options.tokenArrowScale or 1.00
    local tokenArrowOpacity = options.tokenArrowOpacity or 1.00
    local tokenArrowHeight = options.tokenArrowHeight or 0
    local oneHitOnly = options.oneHitOnly or false
    
    local leapType
    local initFacing = 0
    if (options.arrowUnit ~= nil) then
        leapType = "unit"
    else
        leapType = "point"
    end
    if (options.targetUnit ~= nil) then
        initFacing = math.getDegBetweenUnit(prevUnit, options.targetUnit)
    elseif (options.x ~= nil and options.y ~= nil) then
        initFacing = math.getDegBetweenXY(hunit.x(prevUnit), hunit.y(prevUnit), options.x, options.y)
    else
        print_err("leapType: -unknow")
        return
    end
    local repeatGroup
    if (damageMovement > 0 and damageMovementRepeat ~= true) then
        repeatGroup = {}
    end
    if (arrowUnit == nil) then
        local cxy = math.polarProjection(hunit.x(prevUnit), hunit.y(prevUnit), 100, initFacing)
        arrowUnit = hunit.create(
            {
                register = false,
                whichPlayer = hunit.getOwner(sourceUnit),
                unitId = hskill.SKILL_LEAP,
                x = cxy.x,
                y = cxy.y,
                facing = initFacing,
                modelScale = tokenArrowScale,
                opacity = tokenArrowOpacity,
                qty = 1
            }
        )
        if (tokenArrowHeight > 0) then
            hunit.setFlyHeight(arrowUnit, tokenArrowHeight, 9999)
        end
    end
    cj.SetUnitFacing(arrowUnit, initFacing)
    
    local tempEffectArrow
    if (tokenArrow ~= nil) then
        tempEffectArrow = heffect.bindUnit(tokenArrow, arrowUnit, "origin", -1)
    end
    
    cj.SetUnitPathing(arrowUnit, false)
    if (leapType == "unit") then
        hunit.setInvulnerable(arrowUnit, true)
        cj.SetUnitVertexColor(arrowUnit, 255, 255, 255, 255 * tokenArrowOpacity)
    end
    
    htime.setInterval(
        frequency,
        function(t)
            local ax = hunit.x(arrowUnit)
            local ay = hunit.y(arrowUnit)
            if (his.dead(sourceUnit)) then
                htime.delTimer(t)
                if (tempEffectArrow ~= nil) then
                    heffect.del(tempEffectArrow)
                end
                if (repeatGroup ~= nil) then
                    repeatGroup = nil
                end
                if (leapType == "unit") then
                    hunit.setInvulnerable(arrowUnit, false)
                    cj.SetUnitPathing(arrowUnit, true)
                    cj.SetUnitVertexColor(arrowUnit, 255, 255, 255, 255)
                else
                    hunit.kill(arrowUnit, 0)
                end
                if (type(options.onEnding) == "function") then
                    options.onEnding(ax, ay)
                end
                return
            end
            local tx = 0
            local ty = 0
            if (options.targetUnit ~= nil) then
                tx = hunit.x(options.targetUnit)
                ty = hunit.y(options.targetUnit)
            else
                tx = options.x
                ty = options.y
            end
            local fac = math.getDegBetweenXY(ax, ay, tx, ty)
            local txy = math.polarProjection(ax, ay, speed, fac)
            if (acceleration ~= 0) then
                speed = speed + acceleration
            end
            if (his.borderMap(txy.x, txy.y) == false) then
                hunit.portal(arrowUnit, txy.x, txy.y)
            else
                speed = 0
            end
            cj.SetUnitFacing(arrowUnit, fac)
            if (options.effectMovement ~= nil) then
                heffect.toXY(options.effectMovement, txy.x, txy.y, 0)
            end
            if (damageMovementRadius > 0) then
                local g = hgroup.createByUnit(
                    arrowUnit,
                    damageMovementRadius,
                    function(filterUnit)
                        local flag = filter(filterUnit)
                        if (damageMovementRepeat ~= true and hgroup.includes(repeatGroup, filterUnit)) then
                            flag = false
                        end
                        return flag
                    end
                )
                if (hgroup.count(g) > 0) then
                    if (oneHitOnly == true) then
                        hunit.kill(arrowUnit, 0)
                    end
                    hgroup.loop(
                        g,
                        function(eu)
                            if (damageMovementRepeat ~= true and repeatGroup ~= nil) then
                                hgroup.addUnit(repeatGroup, eu)
                            end
                            if (damageMovement > 0) then
                                hskill.damage(
                                    {
                                        sourceUnit = sourceUnit,
                                        targetUnit = eu,
                                        damage = damageMovement,
                                        damageKind = options.damageKind,
                                        damageType = options.damageType,
                                        effect = options.damageEffect
                                    }
                                )
                            end
                            if (damageMovementDrag == true) then
                                hunit.portal(eu, txy.x, txy.y)
                            end
                            if (type(extraInfluence) == "function") then
                                extraInfluence(eu)
                            end
                        end,
                        true
                    )
                end
            end
            local distance = math.getDistanceBetweenXY(hunit.x(arrowUnit), hunit.y(arrowUnit), tx, ty)
            if (distance <= speed or speed <= 0 or his.dead(arrowUnit) == true) then
                htime.delTimer(t)
                if (tempEffectArrow ~= nil) then
                    heffect.del(tempEffectArrow)
                end
                if (repeatGroup ~= nil) then
                    repeatGroup = nil
                end
                if (options.effectEnd ~= nil) then
                    heffect.toXY(options.effectEnd, txy.x, txy.y, 0)
                end
                if (damageEndRadius == 0 and options.targetUnit ~= nil) then
                    if (damageEnd > 0) then
                        hskill.damage(
                            {
                                sourceUnit = options.sourceUnit,
                                targetUnit = options.targetUnit,
                                damage = damageEnd,
                                damageKind = options.damageKind,
                                damageType = options.damageType,
                                effect = options.damageEffect
                            }
                        )
                    end
                    if (type(extraInfluence) == "function") then
                        extraInfluence(options.targetUnit)
                    end
                elseif (damageEndRadius > 0) then
                    local g = hgroup.createByUnit(arrowUnit, damageEndRadius, filter)
                    hgroup.loop(
                        g,
                        function(eu)
                            if (damageEnd > 0) then
                                hskill.damage(
                                    {
                                        sourceUnit = options.sourceUnit,
                                        targetUnit = eu,
                                        damage = damageEnd,
                                        damageKind = options.damageKind,
                                        damageType = options.damageType,
                                        effect = options.damageEffect
                                    }
                                )
                            end
                            if (type(extraInfluence) == "function") then
                                extraInfluence(eu)
                            end
                        end,
                        true
                    )
                end
                if (leapType == "unit") then
                    hunit.setInvulnerable(arrowUnit, false)
                    cj.SetUnitPathing(arrowUnit, true)
                    cj.SetUnitVertexColor(arrowUnit, 255, 255, 255, 255)
                    hunit.portal(arrowUnit, txy.x, txy.y)
                else
                    hunit.kill(arrowUnit, 0)
                end
                if (type(options.onEnding) == "function") then
                    options.onEnding(txy.x, txy.y)
                end
            end
        end
    )
end
hskill.leapPow = function(options)
    local qty = options.qty or 0
    local deg = options.deg or 15
    if (qty <= 1) then
        print_err("leapPow: -qty")
        return
    end
    if (options.sourceUnit == nil) then
        print_err("leapPow: -sourceUnit")
        return
    end
    if (type(options.filter) ~= "function") then
        print_err("leapPow: -filter")
        return
    end
    if (options.tokenArrow == nil) then
        print_err("leapPow: -not arrow")
    end
    if (options.targetUnit == nil and options.x == nil and options.y == nil) then
        print_err("leapPow: -target")
        return
    end
    local x, y
    if (options.targetUnit ~= nil) then
        x = hunit.x(options.targetUnit)
        y = hunit.y(options.targetUnit)
    else
        x = options.x
        y = options.y
    end
    local sx = hunit.x(options.sourceUnit)
    local sy = hunit.y(options.sourceUnit)
    local facing = math.getDegBetweenXY(sx, sy, x, y)
    local distance = math.getDistanceBetweenXY(sx, sy, x, y)
    local firstDeg = facing + (deg * (qty - 1) * 0.5)
    for i = 1, qty, 1 do
        local angle = firstDeg - deg * (i - 1)
        local txy = math.polarProjection(sx, sy, distance, angle)
        hskill.leap(
            {
                arrowUnit = options.arrowUnit,
                sourceUnit = options.sourceUnit,
                targetUnit = nil,
                x = txy.x,
                y = txy.y,
                speed = options.speed,
                acceleration = options.acceleration,
                filter = options.filter,
                tokenArrow = options.tokenArrow,
                tokenArrowScale = options.tokenArrowScale,
                tokenArrowOpacity = options.tokenArrowOpacity,
                tokenArrowHeight = options.tokenArrowHeight,
                effectMovement = options.effectMovement,
                effectEnd = options.effectEnd,
                damageMovement = options.damageMovement,
                damageMovementRadius = options.damageMovementRadius,
                damageMovementRepeat = options.damageMovementRepeat,
                damageMovementDrag = options.damageMovementDrag,
                damageEnd = options.damageEnd,
                damageEndRadius = options.damageEndRadius,
                damageKind = options.damageKind,
                damageType = options.damageType,
                damageEffect = options.damageEffect,
                oneHitOnly = options.oneHitOnly,
                onEnding = options.onEnding,
                extraInfluence = options.extraInfluence
            }
        )
    end
end
hskill.leapRange = function(options)
    local targetRadius = options.targetRadius or 0
    if (targetRadius <= 0) then
        print_err("leapRange: -targetRadius")
        return
    end
    if (options.sourceUnit == nil) then
        print_err("leapRange: -sourceUnit")
        return
    end
    if (type(options.filter) ~= "function") then
        print_err("leapRange: -filter")
        return
    end
    if (options.targetUnit == nil and options.x == nil and options.y == nil) then
        print_err("leapRange: -target")
        return
    end
    local filter = options.filter
    local x, y
    if (options.targetUnit ~= nil) then
        x = hunit.x(options.targetUnit)
        y = hunit.y(options.targetUnit)
        options.x = nil
        options.y = nil
    else
        x = options.x
        y = options.y
    end
    local g = hgroup.createByXY(x, y, targetRadius, filter)
    hgroup.loop(
        g,
        function(eu)
            local tmp = {
                arrowUnit = options.arrowUnit,
                sourceUnit = options.sourceUnit,
                speed = options.speed,
                acceleration = options.acceleration,
                filter = options.filter,
                tokenArrow = options.tokenArrow,
                tokenArrowScale = options.tokenArrowScale,
                tokenArrowOpacity = options.tokenArrowOpacity,
                tokenArrowHeight = options.tokenArrowHeight,
                effectMovement = options.effectMovement,
                effectEnd = options.effectEnd,
                damageMovement = options.damageMovement,
                damageMovementRadius = options.damageMovementRadius,
                damageMovementRepeat = options.damageMovementRepeat,
                damageMovementDrag = options.damageMovementDrag,
                damageEnd = options.damageEnd,
                damageEndRadius = options.damageEndRadius,
                damageKind = options.damageKind,
                damageType = options.damageType,
                damageEffect = options.damageEffect,
                oneHitOnly = options.oneHitOnly,
                onEnding = options.onEnding,
                extraInfluence = options.extraInfluence
            }
            if (options.targetUnit ~= nil) then
                tmp.targetUnit = eu
            else
                tmp.x = hunit.x(eu)
                tmp.y = hunit.y(eu)
            end
            hskill.leap(tmp)
        end,
        true
    )
end
hskill.leapReflex = function(options)
    local qty = options.qty or 1
    local radius = options.radius or 0
    if (radius <= 0) then
        print_err("reflex: -radius")
        return
    end
    if (options.sourceUnit == nil) then
        print_err("reflex: -sourceUnit")
        return
    end
    if (type(options.filter) ~= "function") then
        print_err("reflex: -filter")
        return
    end
    if (options.arrowUnit == nil and options.tokenArrow == nil) then
        print_err("reflex: -not arrow")
    end
    if (options.targetUnit == nil) then
        print_err("reflex: -target")
        return
    end
    options.x = nil
    options.y = nil
    options.onEnding = function(x, y)
        qty = qty - 1
        if (qty >= 1) then
            local g = hgroup.createByXY(x, y, radius, options.filter)
            local closer = hgroup.getClosest(g, x, y)
            if (closer ~= nil) then
                options.prevUnit = options.targetUnit
                options.targetUnit = closer
                hskill.leap(options)
            end
        end
    end
    hskill.leap(options)
end
hskill.rectangleStrike = function(options)
    if (options.sourceUnit == nil) then
        print_err("rectangleStrike: -sourceUnit")
        return
    end
    if (options.x == nil or options.y == nil) then
        print_err("rectangleStrike: -xy")
        return
    end
    if (options.deg == nil) then
        print_err("rectangleStrike: -deg")
        return
    end
    if (options.filter == nil) then
        print_err("rectangleStrike: -filter")
        return
    end
    local damage = options.damage or 0
    local radius = options.radius or 0
    local distance = options.distance or 0
    if (damage <= 0 or radius <= 0 or distance <= 0) then
        print_err("rectangleStrike: -data")
        return
    end
    local frequency = options.frequency or 0
    local damageKind = options.damageKind or CONST_DAMAGE_KIND.skill
    local damageType = options.damageType or { CONST_DAMAGE_TYPE.common }
    local oneHitOnly = options.oneHitOnly
    local effectScale = options.effectScale or 1.30
    local effectOffset = options.effectOffset or 0
    if (oneHitOnly == nil) then
        oneHitOnly = true
    end
    if (frequency <= 0) then
        local i = 0
        local tg = {}
        while (true) do
            i = i + 1
            local d = i * radius * 0.33
            if (d >= distance) then
                break
            end
            local txy = math.polarProjection(options.x, options.y, d, options.deg)
            if (options.effect ~= nil and d - effectOffset < distance) then
                local effUnitDur = 0.6
                local effUnit = hunit.create(
                    {
                        register = false,
                        whichPlayer = hplayer.player_passive,
                        unitId = hskill.SKILL_LEAP,
                        x = txy.x,
                        y = txy.y,
                        facing = options.deg,
                        modelScale = effectScale,
                        opacity = 1.00,
                        qty = 1,
                        during = effUnitDur
                    }
                )
                heffect.bindUnit(options.effect, effUnit, "origin", effUnitDur)
            end
            hgroup.loop(
                hgroup.createByXY(txy.x, txy.y, radius, options.filter),
                function(eu)
                    if (hgroup.includes(tg, eu) == false) then
                        hgroup.addUnit(tg, eu)
                    end
                end,
                true
            )
        end
        if (hgroup.count(tg) > 0) then
            hskill.damageGroup(
                {
                    frequency = 0,
                    times = 1,
                    effect = options.damageEffect,
                    whichGroup = tg,
                    damage = damage,
                    sourceUnit = options.sourceUnit,
                    damageKind = damageKind,
                    damageType = damageType,
                    extraInfluence = options.extraInfluence
                }
            )
        end
        tg = nil
    else
        local i = 0
        htime.setInterval(
            frequency,
            function(t)
                i = i + 1
                local d = i * radius * 0.5
                if (d >= distance) then
                    htime.delTimer(t)
                    return
                end
                local txy = math.polarProjection(options.x, options.y, d, options.deg)
                if (options.effect ~= nil and d - effectOffset < distance) then
                    local effUnitDur = 0.6
                    local effUnit = hunit.create(
                        {
                            register = false,
                            whichPlayer = hplayer.player_passive,
                            unitId = hskill.SKILL_LEAP,
                            x = txy.x,
                            y = txy.y,
                            facing = options.deg,
                            modelScale = effectScale,
                            opacity = 1.00,
                            qty = 1,
                            during = effUnitDur
                        }
                    )
                    heffect.bindUnit(options.effect, effUnit, "origin", effUnitDur)
                end
                local g = hgroup.createByXY(txy.x, txy.y, radius, options.filter)
                if (hgroup.count(g) > 0) then
                    hskill.damageGroup(
                        {
                            frequency = 0,
                            times = 1,
                            effect = options.damageEffect,
                            whichGroup = g,
                            damage = damage,
                            sourceUnit = options.sourceUnit,
                            damageKind = damageKind,
                            damageType = damageType,
                            extraInfluence = options.extraInfluence
                        }
                    )
                end
                g = nil
            end
        )
    end
end
hring = {
    ACTIVE_RING = {},
    ACTIVE_TIMER = nil,
    ACTIVE_EFFECT = {},
    ACTIVE_EFFECT_TARGET = {},
}
hring.getSlk = function(id)
    if (id == nil) then
        return
    end
    local slk
    if (type(id) == "number") then
        id = string.id2char(id)
    end
    if (hslk.id2Value.ring[id] ~= nil) then
        slk = hslk.id2Value.ring[id]
    end
    return slk
end
hring.check = function(id)
    local slk = hring.getSlk(id)
    if (slk == nil) then
        return false
    end
    return slk.RING_ID
end
hring.insert = function(whichUnit, id)
    id = hring.check(id)
    if (id == false) then
        return
    end
    if (his.deleted(whichUnit) == false) then
        table.insert(hring.ACTIVE_RING, { status = 2, unit = whichUnit, id = id, group = {} })
        local slk = hring.getSlk(id)
        if (slk.effect) then
            if (hring.ACTIVE_EFFECT[id] == nil) then
                hring.ACTIVE_EFFECT[id] = {}
            end
            if (hring.ACTIVE_EFFECT[id][whichUnit] == nil) then
                hring.ACTIVE_EFFECT[id][whichUnit] = {
                    effect = heffect.bindUnit(slk.effect, whichUnit, slk.attach or 'origin', -1),
                    count = 1,
                }
            else
                hring.ACTIVE_EFFECT[id][whichUnit].count = hring.ACTIVE_EFFECT[id][whichUnit].count + 1
            end
        end
    end
    if (hring.ACTIVE_TIMER == nil and #hring.ACTIVE_RING > 0) then
        hring.ACTIVE_TIMER = htime.setInterval(0.3, function(curTimer)
            if (#hring.ACTIVE_RING == 0) then
                htime.delTimer(curTimer)
                curTimer = nil
                hring.ACTIVE_TIMER = nil
                hring.ACTIVE_RING = {}
                hring.ACTIVE_EFFECT = {}
                hring.ACTIVE_EFFECT_TARGET = {}
                return
            end
            for k, ring in ipairs(hring.ACTIVE_RING) do
                local u = ring.unit
                local status = ring.status
                if (his.deleted(u) == true) then
                    status = -1
                    ring.status = -1
                elseif (his.dead(u) == true) then
                    status = 1
                end
                
                local g = {}
                local ringId = ring.id
                local slk = hring.getSlk(ringId)
                if (status == 2 and slk ~= nil) then
                    if (slk.effectTarget and hring.ACTIVE_EFFECT_TARGET[ringId] == nil) then
                        hring.ACTIVE_EFFECT_TARGET[ringId] = {}
                    end
                    local radius = math.floor(slk.radius or 0)
                    local target = slk.target or {}
                    if (radius > 0) then
                        local selector = {
                            air = false, 
                            ground = false, 
                            structure = false, 
                            ward = false, 
                            organic = false, 
                            mechanical = false, 
                            vuln = false, 
                            invu = false, 
                            friend = false, 
                            enemies = false, 
                            enemy = false, 
                            allies = false, 
                            player = false, 
                            neutral = false, 
                            self = false, 
                            nonself = false, 
                            alive = false, 
                            dead = false, 
                            hero = false, 
                            nonhero = false, 
                            ancient = false, 
                            nonancient = false, 
                            sapper = false, 
                            nonsapper = false, 
                        }
                        if (#target > 0) then
                            
                            for _, t in ipairs(target) do
                                if (selector[t] ~= nil) then
                                    selector[t] = true
                                end
                            end
                        end
                        
                        
                        
                        
                        
                        if (selector.air == false and selector.ground == false and selector.structure == false) then
                            selector.air = true
                            selector.ground = true
                            selector.structure = true
                        end
                        
                        if (selector.alive == false and selector.dead == false) then
                            selector.alive = true
                        end
                        
                        if (selector.vuln == false and selector.invu == false) then
                            selector.vuln = true
                        end
                        
                        if (selector.allies == false and selector.friend == false
                            and selector.enemies == false and selector.enemy == false
                            and selector.neutral == false and selector.player == false
                            and selector.self == false and selector.nonself == false) then
                            selector.nonself = true
                        end
                        
                        if (selector.hero == false and selector.nonhero == false) then
                            selector.hero = true
                            selector.nonhero = true
                        end
                        
                        if (selector.ancient == false and selector.nonancient == false) then
                            selector.ancient = true
                            selector.nonancient = true
                        end
                        
                        if (selector.sapper == false and selector.nonsapper == false) then
                            selector.sapper = true
                            selector.nonsapper = true
                        end
                        
                        if (selector.mechanical == false and selector.organic == false) then
                            selector.mechanical = true
                            selector.organic = true
                        end
                        local uOwner = hunit.getOwner(u)
                        g = hgroup.createByUnit(u, radius, function(filterUnit)
                            
                            local air = selector.air and his.air(filterUnit)
                            local ground = selector.ground and his.ground(filterUnit)
                            local structure = selector.structure and his.structure(filterUnit)
                            local statusAGS = air or ground or structure
                            
                            local organic = selector.organic and his.mechanical(filterUnit) == false
                            local mechanical = selector.mechanical and his.mechanical(filterUnit)
                            local statusOM = organic or mechanical
                            
                            local vuln = selector.vuln and his.invincible(filterUnit) == false
                            local invu = selector.invu and his.invincible(filterUnit)
                            local statusVI = vuln or invu
                            
                            local alive = selector.alive and his.alive(filterUnit)
                            local dead = selector.dead and his.dead(filterUnit)
                            local statusAD = alive or dead
                            
                            local hero = selector.hero and his.hero(filterUnit)
                            local nonhero = selector.nonhero and his.hero(filterUnit) == false
                            local statusHN = hero or nonhero
                            
                            local ancient = selector.ancient and his.ancient(filterUnit)
                            local nonancient = selector.nonancient and his.ancient(filterUnit) == false
                            local statusAN = ancient or nonancient
                            
                            local sapper = selector.sapper and his.ancient(filterUnit)
                            local nonsapper = selector.nonsapper and his.ancient(filterUnit) == false
                            local statusSN = sapper or nonsapper
                            
                            local filterOwner = hunit.getOwner(filterUnit)
                            local friend = selector.friend and (his.ally(filterUnit) or uOwner == filterOwner)
                            local enemies = (selector.enemies or selector.enemy) and his.enemy(u, filterUnit)
                            local allies = selector.allies and his.ally(u, filterUnit)
                            local player = selector.player and uOwner == filterOwner
                            local neutral = selector.neutral and filterOwner == cj.Player(PLAYER_NEUTRAL_PASSIVE)
                            local self1 = selector.self and his.unit(u, filterUnit)
                            local nonself = selector.nonself and his.unit(u, filterUnit) == false
                            local statusFEAPNSN = friend or enemies or allies or player or neutral or self1 or nonself
                            return statusAGS and statusOM
                                and statusVI and statusAD
                                and statusHN and statusAN
                                and statusSN and statusFEAPNSN
                        end)
                    end
                end
                
                if (type(slk.attr) == 'table') then
                    hgroup.loop(ring.group, function(enumUnit)
                        if (hgroup.includes(g, enumUnit) == false) then
                            hattribute.caleAttribute(false, enumUnit, slk.attr, 1)
                            if (hring.ACTIVE_EFFECT_TARGET[ringId][enumUnit] ~= nil) then
                                hring.ACTIVE_EFFECT_TARGET[ringId][enumUnit].count = hring.ACTIVE_EFFECT_TARGET[ringId][enumUnit].count - 1
                                if (hring.ACTIVE_EFFECT_TARGET[ringId][enumUnit].count == 0) then
                                    heffect.del(hring.ACTIVE_EFFECT_TARGET[ringId][enumUnit].effect)
                                    hring.ACTIVE_EFFECT_TARGET[ringId][enumUnit] = nil
                                end
                            end
                        end
                    end)
                end
                if (#g > 0) then
                    local matchAction
                    if (#hmatcher.RING_MATCHER > 0) then
                        local name = slk.Name or -1
                        for _, m in ipairs(hmatcher.RING_MATCHER) do
                            local s, e = string.find(name, m[1])
                            if (s ~= nil and e ~= nil) then
                                matchAction = m[2]
                            end
                        end
                    end
                    hgroup.loop(g, function(enumUnit)
                        
                        if (type(slk.attr) == 'table' and false == hgroup.includes(ring.group, enumUnit)) then
                            hattribute.caleAttribute(true, enumUnit, slk.attr, 1)
                            if (slk.effectTarget) then
                                if (hring.ACTIVE_EFFECT_TARGET[ringId][enumUnit] == nil) then
                                    hring.ACTIVE_EFFECT_TARGET[ringId][enumUnit] = {
                                        count = 1,
                                        effect = heffect.bindUnit(slk.effectTarget, enumUnit, slk.attachTarget or 'origin', -1)
                                    }
                                else
                                    hring.ACTIVE_EFFECT_TARGET[ringId][enumUnit].count = hring.ACTIVE_EFFECT_TARGET[ringId][enumUnit].count + 1
                                end
                            end
                        end
                        
                        if (matchAction ~= nil and type(matchAction) == 'function') then
                            matchAction(enumUnit)
                        end
                    end)
                end
                if (status ~= -1) then
                    ring.group = g
                else
                    if (hring.ACTIVE_EFFECT[ringId][u] ~= nil) then
                        hring.ACTIVE_EFFECT[ringId][u].count = hring.ACTIVE_EFFECT[ringId][u].count - 1
                        if (hring.ACTIVE_EFFECT[ringId][u].count == 0) then
                            heffect.del(hring.ACTIVE_EFFECT[ringId][u].effect)
                            hring.ACTIVE_EFFECT[ringId][u] = nil
                        end
                    end
                    table.remove(hring.ACTIVE_RING, k)
                    k = k - 1
                end
            end
        end)
    end
end
hring.remove = function(whichUnit, id)
    id = hring.check(id)
    if (id == false) then
        return
    end
    for _, v in ipairs(hring.ACTIVE_RING) do
        if (v.status ~= -1) then
            if (v.unit == whichUnit and v.id == id) then
                v.status = -1
                break
            end
        end
    end
end
hattribute = {
    max_move_speed = 522,
    max_life = 999999999,
    max_mana = 999999999,
    min_life = 1,
    min_mana = 1,
    max_attack_range = 9999,
    min_attack_range = 0,
    threeBuff = {
        
        
        primary = 1, 
        str = {
            life = 19, 
            life_back = 0.05 
        },
        agi = {
            defend = 0.01 
        },
        int = {
            mana = 6, 
            mana_back = 0.05 
        }
    },
    DEFAULT_SKILL_ITEM_SLOT = string.char2id("AInv"), 
}
hattribute.setLM = function(u, abilityId, qty)
    if (qty <= 0) then
        return
    end
    local i = 1
    while (i <= qty) do
        cj.UnitAddAbility(u, abilityId)
        cj.SetUnitAbilityLevel(u, abilityId, 2)
        cj.UnitRemoveAbility(u, abilityId)
        i = i + 1
    end
end
hattribute.setAttackWhite = function(u, itemId, qty)
    if (u == nil or itemId == nil or qty <= 0) then
        return
    end
    if (his.alive(u) == true) then
        local i = 1
        local it
        local hasSlot = (cj.GetUnitAbilityLevel(u, hattribute.DEFAULT_SKILL_ITEM_SLOT) >= 1)
        if (hasSlot == false) then
            cj.UnitAddAbility(u, hattribute.DEFAULT_SKILL_ITEM_SLOT)
        end
        while (i <= qty) do
            it = cj.CreateItem(itemId, 0, 0)
            cj.UnitAddItem(u, it)
            cj.SetWidgetLife(it, 10.00)
            cj.RemoveItem(it)
            it = nil
            i = i + 1
        end
        if (hasSlot == false) then
            cj.UnitRemoveAbility(u, hattribute.DEFAULT_SKILL_ITEM_SLOT)
        end
    else
        local per = 3.00
        local limit = 60.0 / per 
        htime.setInterval(
            per,
            function(t)
                limit = limit - 1
                if (limit < 0) then
                    htime.delTimer(t)
                elseif (his.alive(u) == true) then
                    htime.delTimer(t)
                    local i = 1
                    local it
                    local hasSlot = (cj.GetUnitAbilityLevel(u, hattribute.DEFAULT_SKILL_ITEM_SLOT) >= 1)
                    if (hasSlot == false) then
                        cj.UnitAddAbility(u, hattribute.DEFAULT_SKILL_ITEM_SLOT)
                    end
                    while (i <= qty) do
                        it = cj.CreateItem(itemId, 0, 0)
                        cj.UnitAddItem(u, it)
                        cj.SetWidgetLife(it, 10.00)
                        cj.RemoveItem(it)
                        i = i + 1
                    end
                    if (hasSlot == false) then
                        cj.UnitRemoveAbility(u, hattribute.DEFAULT_SKILL_ITEM_SLOT)
                    end
                end
            end
        )
    end
end
hattribute.setThreeBuff = function(buff)
    if (type(buff) == "table") then
        hattribute.threeBuff = buff
    end
end
hattribute.regAllAbility = function(whichUnit)
    for _, v in ipairs(hslk.attr.ablis_gradient) do
        
        cj.UnitAddAbility(whichUnit, hslk.attr.life.add[v])
        cj.UnitRemoveAbility(whichUnit, hslk.attr.life.add[v])
        cj.UnitAddAbility(whichUnit, hslk.attr.life.sub[v])
        cj.UnitRemoveAbility(whichUnit, hslk.attr.life.sub[v])
        
        cj.UnitAddAbility(whichUnit, hslk.attr.mana.add[v])
        cj.UnitRemoveAbility(whichUnit, hslk.attr.mana.add[v])
        cj.UnitAddAbility(whichUnit, hslk.attr.mana.sub[v])
        cj.UnitRemoveAbility(whichUnit, hslk.attr.mana.sub[v])
        
        cj.UnitAddAbility(whichUnit, hslk.attr.attack_green.add[v])
        cj.UnitRemoveAbility(whichUnit, hslk.attr.attack_green.add[v])
        cj.UnitAddAbility(whichUnit, hslk.attr.attack_green.sub[v])
        cj.UnitRemoveAbility(whichUnit, hslk.attr.attack_green.sub[v])
        
        cj.UnitAddAbility(whichUnit, hslk.attr.str_green.add[v])
        cj.UnitRemoveAbility(whichUnit, hslk.attr.str_green.add[v])
        cj.UnitAddAbility(whichUnit, hslk.attr.str_green.sub[v])
        cj.UnitRemoveAbility(whichUnit, hslk.attr.str_green.sub[v])
        cj.UnitAddAbility(whichUnit, hslk.attr.agi_green.add[v])
        cj.UnitRemoveAbility(whichUnit, hslk.attr.agi_green.add[v])
        cj.UnitAddAbility(whichUnit, hslk.attr.agi_green.sub[v])
        cj.UnitRemoveAbility(whichUnit, hslk.attr.agi_green.sub[v])
        cj.UnitAddAbility(whichUnit, hslk.attr.int_green.add[v])
        cj.UnitRemoveAbility(whichUnit, hslk.attr.int_green.add[v])
        cj.UnitAddAbility(whichUnit, hslk.attr.int_green.sub[v])
        cj.UnitRemoveAbility(whichUnit, hslk.attr.int_green.sub[v])
        
        cj.UnitAddAbility(whichUnit, hslk.attr.attack_speed.add[v])
        cj.UnitRemoveAbility(whichUnit, hslk.attr.attack_speed.add[v])
        cj.UnitAddAbility(whichUnit, hslk.attr.attack_speed.sub[v])
        cj.UnitRemoveAbility(whichUnit, hslk.attr.attack_speed.sub[v])
        
        cj.UnitAddAbility(whichUnit, hslk.attr.defend.add[v])
        cj.UnitRemoveAbility(whichUnit, hslk.attr.defend.add[v])
        cj.UnitAddAbility(whichUnit, hslk.attr.defend.sub[v])
        cj.UnitRemoveAbility(whichUnit, hslk.attr.defend.sub[v])
    end
    for _, v in ipairs(hslk.attr.sight_gradient) do
        
        cj.UnitAddAbility(whichUnit, hslk.attr.sight.add[v])
        cj.UnitRemoveAbility(whichUnit, hslk.attr.sight.add[v])
        cj.UnitAddAbility(whichUnit, hslk.attr.sight.sub[v])
        cj.UnitRemoveAbility(whichUnit, hslk.attr.sight.sub[v])
    end
end
hattribute.init = function(whichUnit)
    if (whichUnit == nil or his.deleted(whichUnit)) then
        return false
    end
    
    local slkData = hunit.getSlk(whichUnit)
    local attribute = {
        primary = slkData.Primary or "STR",
        life = cj.GetUnitState(whichUnit, UNIT_STATE_MAX_LIFE),
        mana = cj.GetUnitState(whichUnit, UNIT_STATE_MAX_MANA),
        move = cj.GetUnitDefaultMoveSpeed(whichUnit),
        defend = slkData.def or 0,
        attack_damage_type = {},
        attack_speed = 0.0,
        attack_speed_space = slkData.cool1 or 1.50,
        attack_white = 0.0,
        attack_green = 0.0,
        attack_range = slkData.rangeN1 or 100,
        sight = slkData.sight or 1800,
        str_green = 0.0,
        agi_green = 0.0,
        int_green = 0.0,
        str_white = 0,
        agi_white = 0,
        int_white = 0,
        life_back = 0.0,
        mana_back = 0.0,
        resistance = 0.0,
        toughness = 0.0,
        avoid = 0.0,
        aim = 0.0,
        punish = 0.0,
        punish_current = 0.0,
        meditative = 0.0,
        help = 0.0,
        hemophagia = 0.0,
        hemophagia_skill = 0.0,
        luck = 0.0,
        invincible = 0.0,
        weight = 0.0,
        weight_current = 0.0,
        damage_extent = 0.0,
        damage_rebound = 0.0,
        cure = 0.0,
        knocking_oppose = 0.0,
        violence_oppose = 0.0,
        hemophagia_oppose = 0.0,
        hemophagia_skill_oppose = 0.0,
        split_oppose = 0.0,
        punish_oppose = 0.0,
        damage_rebound_oppose = 0.0,
        swim_oppose = 0.0,
        heavy_oppose = 0.0,
        broken_oppose = 0.0,
        unluck_oppose = 0.0,
        silent_oppose = 0.0,
        unarm_oppose = 0.0,
        fetter_oppose = 0.0,
        bomb_oppose = 0.0,
        lightning_chain_oppose = 0.0,
        crack_fly_oppose = 0.0,
        natural_fire = 0.0,
        natural_soil = 0.0,
        natural_water = 0.0,
        natural_ice = 0.0,
        natural_wind = 0.0,
        natural_light = 0.0,
        natural_dark = 0.0,
        natural_wood = 0.0,
        natural_thunder = 0.0,
        natural_poison = 0.0,
        natural_ghost = 0.0,
        natural_metal = 0.0,
        natural_dragon = 0.0,
        natural_insect = 0.0,
        natural_god = 0.0,
        natural_fire_oppose = 0.0,
        natural_soil_oppose = 0.0,
        natural_water_oppose = 0.0,
        natural_ice_oppose = 0.0,
        natural_wind_oppose = 0.0,
        natural_light_oppose = 0.0,
        natural_dark_oppose = 0.0,
        natural_wood_oppose = 0.0,
        natural_thunder_oppose = 0.0,
        natural_poison_oppose = 0.0,
        natural_ghost_oppose = 0.0,
        natural_metal_oppose = 0.0,
        natural_dragon_oppose = 0.0,
        natural_insect_oppose = 0.0,
        natural_god_oppose = 0.0,
        attack_buff = {},
        attack_debuff = {},
        skill_buff = {},
        skill_debuff = {},
        
        attack_effect = {},
        skill_effect = {}
        
    }
    
    if (attribute.primary == "INT") then
        attribute.attack_damage_type = { CONST_DAMAGE_TYPE.magic }
    else
        attribute.attack_damage_type = { CONST_DAMAGE_TYPE.physical }
    end
    hunit.set(whichUnit, 'attribute', attribute)
    return true
end
hattribute.getAccumuDiff = function(whichUnit, attr)
    local diff = hunit.get(whichUnit, 'attributeDiff', {})
    return diff[attr] or 0
end
hattribute.setAccumuDiff = function(whichUnit, attr, value)
    local diff = hunit.get(whichUnit, 'attributeDiff', {})
    diff[attr] = math.round(value)
    hunit.set(whichUnit, 'attributeDiff', diff)
end
hattribute.addAccumuDiff = function(whichUnit, attr, value)
    hattribute.setAccumuDiff(whichUnit, attr, hattribute.getAccumuDiff(whichUnit, attr) + value)
end
hattribute.subAccumuDiff = function(whichUnit, attr, value)
    hattribute.setAccumuDiff(whichUnit, attr, hattribute.getAccumuDiff(whichUnit, attr) - value)
end
hattribute.setHandle = function(whichUnit, attr, opr, val, dur)
    local valType = type(val)
    local params = hattr.get(whichUnit)
    if (params == nil) then
        return
    end
    if (valType == "string") then
        
        if (opr == "+") then
            
            local valArr = string.explode(",", val)
            params[attr] = table.merge(params[attr], valArr)
            if (dur > 0) then
                htime.setTimeout(
                    dur,
                    function(t)
                        htime.delTimer(t)
                        hattribute.setHandle(whichUnit, attr, "-", val, 0)
                    end
                )
            end
        elseif (opr == "-") then
            
            local valArr = string.explode(",", val)
            for _, v in ipairs(valArr) do
                if (table.includes(v, params[attr])) then
                    table.delete(v, params[attr], 1)
                end
            end
            if (dur > 0) then
                htime.setTimeout(
                    dur,
                    function(t)
                        htime.delTimer(t)
                        hattribute.setHandle(whichUnit, attr, "+", val, 0)
                    end
                )
            end
        elseif (opr == "=") then
            
            local old = table.clone(params[attr])
            params[attr] = string.explode(",", val)
            if (dur > 0) then
                htime.setTimeout(
                    dur,
                    function(t)
                        htime.delTimer(t)
                        hattribute.setHandle(whichUnit, attr, "=", string.implode(",", old), 0)
                    end
                )
            end
        end
    elseif (valType == "table") then
        
        if (opr == "+") then
            
            local hkey = string.vkey(val)
            table.insert(params[attr], { hash = hkey, table = val })
            if (dur > 0) then
                htime.setTimeout(
                    dur,
                    function(t)
                        htime.delTimer(t)
                        hattribute.setHandle(whichUnit, attr, "-", val, 0)
                    end
                )
            end
        elseif (opr == "-") then
            
            local valx = table.obj2arr(val, CONST_ATTR_BUFF_KEYS)
            local valxx = {}
            for _, xv in ipairs(valx) do
                table.insert(valxx, xv.value)
            end
            valx = nil
            local hkey = string.vkey(valxx)
            local hasKey = false
            for k, v in ipairs(params[attr]) do
                if (v.hash == hkey) then
                    table.remove(params[attr], k)
                    hasKey = true
                    break
                end
            end
            if (hasKey == true) then
                if (dur > 0) then
                    htime.setTimeout(
                        dur,
                        function(t)
                            htime.delTimer(t)
                            hattribute.setHandle(whichUnit, attr, "+", val, 0)
                        end
                    )
                end
            end
        end
    elseif (valType == "number") then
        
        local intAttr = {
            "life",
            "mana",
            "move",
            "attack_white",
            "attack_green",
            "attack_range",
            "sight",
            "defend",
            "str_white",
            "agi_white",
            "int_white",
            "str_green",
            "agi_green",
            "int_green",
            "punish"
        }
        local isInt = false
        if (table.includes(attr, intAttr)) then
            isInt = true
        end
        
        local diff = 0
        if (opr == "+") then
            diff = val
        elseif (opr == "-") then
            diff = -val
        elseif (opr == "*") then
            diff = params[attr] * val - params[attr]
        elseif (opr == "/" and val ~= 0) then
            diff = params[attr] / val - params[attr]
        elseif (opr == "=") then
            diff = val - params[attr]
        end
        local isAccumuDiff = false
        local accumuDiff = hattribute.getAccumuDiff(whichUnit, attr)
        if (diff * accumuDiff > 0) then
            isAccumuDiff = true
            diff = diff + accumuDiff
        end
        
        if (isInt and diff ~= 0) then
            local di, df = math.modf(math.abs(diff))
            if (isAccumuDiff) then
                if (diff >= 0) then
                    hattribute.setAccumuDiff(whichUnit, attr, df)
                else
                    hattribute.setAccumuDiff(whichUnit, attr, -df)
                end
            else
                if (diff >= 0) then
                    hattribute.addAccumuDiff(whichUnit, attr, df)
                else
                    hattribute.subAccumuDiff(whichUnit, attr, df)
                end
            end
            if (diff >= 0) then
                diff = di
            else
                diff = -di
            end
        end
        if (diff ~= 0) then
            local currentVal = params[attr]
            local futureVal = params[attr] + diff
            params[attr] = futureVal
            if (dur > 0) then
                htime.setTimeout(
                    dur,
                    function(t)
                        htime.delTimer(t)
                        hattribute.setHandle(whichUnit, attr, "-", diff, 0)
                    end
                )
            end
            
            local tempVal = 0
            local level = 0
            if (attr == "life" or attr == "mana") then
                
                if (futureVal >= hattribute["max_" .. attr]) then
                    if (currentVal >= hattribute["max_" .. attr]) then
                        diff = 0
                    else
                        diff = hattribute["max_" .. attr] - currentVal
                    end
                elseif (futureVal <= hattribute["min_" .. attr]) then
                    if (currentVal <= hattribute["min_" .. attr]) then
                        diff = 0
                    else
                        diff = hattribute["min_" .. attr] - currentVal
                    end
                end
                tempVal = math.floor(math.abs(diff))
                local max = 100000000
                if (tempVal ~= 0) then
                    while (max >= 1) do
                        level = math.floor(tempVal / max)
                        tempVal = math.floor(tempVal - level * max)
                        if (diff > 0) then
                            hattribute.setLM(whichUnit, hslk.attr[attr].add[max], level)
                        else
                            hattribute.setLM(whichUnit, hslk.attr[attr].sub[max], level)
                        end
                        max = math.floor(max / 10)
                    end
                end
            elseif (attr == "move") then
                
                if (futureVal < 0) then
                    cj.SetUnitMoveSpeed(whichUnit, 0)
                else
                    if (hcamera.getModel(hunit.getOwner(whichUnit)) == "zoomin") then
                        cj.SetUnitMoveSpeed(whichUnit, math.floor(futureVal * 0.5))
                    else
                        cj.SetUnitMoveSpeed(whichUnit, math.floor(futureVal))
                    end
                end
            elseif (attr == "attack_white") then
                
                local max = 100000000
                if (futureVal > max or futureVal < -max) then
                    diff = 0
                end
                tempVal = math.floor(math.abs(diff))
                if (tempVal ~= 0) then
                    while (max >= 1) do
                        level = math.floor(tempVal / max)
                        tempVal = math.floor(tempVal - level * max)
                        if (diff > 0) then
                            hattribute.setAttackWhite(whichUnit, hslk.attr.item_attack_white.add[max], level)
                        else
                            hattribute.setAttackWhite(whichUnit, hslk.attr.item_attack_white.sub[max], level)
                        end
                        max = math.floor(max / 10)
                    end
                end
            elseif (attr == "attack_range") then
                
                if (futureVal < hattribute.min_attack_range) then
                    futureVal = hattribute.min_attack_range
                elseif (futureVal > hattribute.max_attack_range) then
                    futureVal = hattribute.max_attack_range
                end
                if (hcamera.getModel(hunit.getOwner(whichUnit)) == "zoomin") then
                    futureVal = futureVal * 0.5
                end
                cj.SetUnitAcquireRange(whichUnit, futureVal * 1.1)
            elseif (attr == "sight") then
                
                for _, gradient in ipairs(hslk.attr.sight_gradient) do
                    cj.UnitRemoveAbility(whichUnit, hslk.attr.sight.add[gradient])
                    cj.UnitRemoveAbility(whichUnit, hslk.attr.sight.sub[gradient])
                end
                tempVal = math.floor(math.abs(futureVal))
                local sight_gradient = table.clone(hslk.attr.sight_gradient)
                if (tempVal ~= 0) then
                    while (true) do
                        local isFound = false
                        for _, v in ipairs(sight_gradient) do
                            if (tempVal >= v) then
                                tempVal = math.floor(tempVal - v)
                                table.delete(v, sight_gradient)
                                if (futureVal > 0) then
                                    cj.UnitAddAbility(whichUnit, hslk.attr.sight.add[v])
                                else
                                    cj.UnitAddAbility(whichUnit, hslk.attr.sight.sub[v])
                                end
                                isFound = true
                                break
                            end
                        end
                        if (isFound == false) then
                            break
                        end
                    end
                end
            elseif (table.includes(attr, { "attack_green", "attack_speed", "defend" })) then
                
                if (futureVal < -99999999) then
                    futureVal = -99999999
                elseif (futureVal > 99999999) then
                    futureVal = 99999999
                end
                for _, grad in ipairs(hslk.attr.ablis_gradient) do
                    local ab = hslk.attr[attr].add[grad]
                    if (cj.GetUnitAbilityLevel(whichUnit, ab) > 1) then
                        cj.SetUnitAbilityLevel(whichUnit, ab, 1)
                    end
                    ab = hslk.attr[attr].sub[grad]
                    if (cj.GetUnitAbilityLevel(whichUnit, ab) > 1) then
                        cj.SetUnitAbilityLevel(whichUnit, ab, 1)
                    end
                end
                tempVal = math.floor(math.abs(futureVal))
                local max = 100000000
                if (tempVal ~= 0) then
                    while (max >= 1) do
                        level = math.floor(tempVal / max)
                        tempVal = math.floor(tempVal - level * max)
                        if (futureVal > 0) then
                            if (cj.GetUnitAbilityLevel(whichUnit, hslk.attr[attr].add[max]) < 1) then
                                cj.UnitAddAbility(whichUnit, hslk.attr[attr].add[max])
                            end
                            cj.SetUnitAbilityLevel(whichUnit, hslk.attr[attr].add[max], level + 1)
                        else
                            if (cj.GetUnitAbilityLevel(whichUnit, hslk.attr[attr].sub[max]) < 1) then
                                cj.UnitAddAbility(whichUnit, hslk.attr[attr].sub[max])
                            end
                            cj.SetUnitAbilityLevel(whichUnit, hslk.attr[attr].sub[max], level + 1)
                        end
                        max = math.floor(max / 10)
                    end
                end
            elseif (his.hero(whichUnit) and table.includes(attr, { "str_green", "agi_green", "int_green" })) then
                
                if (futureVal < -99999999) then
                    futureVal = -99999999
                elseif (futureVal > 99999999) then
                    futureVal = 99999999
                end
                for _, grad in ipairs(hslk.attr.ablis_gradient) do
                    local ab = hslk.attr[attr].add[grad]
                    if (cj.GetUnitAbilityLevel(whichUnit, ab) > 1) then
                        cj.SetUnitAbilityLevel(whichUnit, ab, 1)
                    end
                    ab = hslk.attr[attr].sub[grad]
                    if (cj.GetUnitAbilityLevel(whichUnit, ab) > 1) then
                        cj.SetUnitAbilityLevel(whichUnit, ab, 1)
                    end
                end
                tempVal = math.floor(math.abs(futureVal))
                local max = 100000000
                if (tempVal ~= 0) then
                    while (max >= 1) do
                        level = math.floor(tempVal / max)
                        tempVal = math.floor(tempVal - level * max)
                        if (futureVal > 0) then
                            if (cj.GetUnitAbilityLevel(whichUnit, hslk.attr[attr].add[max]) < 1) then
                                cj.UnitAddAbility(whichUnit, hslk.attr[attr].add[max])
                            end
                            cj.SetUnitAbilityLevel(whichUnit, hslk.attr[attr].add[max], level + 1)
                        else
                            if (cj.GetUnitAbilityLevel(whichUnit, hslk.attr[attr].sub[max]) < 1) then
                                cj.UnitAddAbility(whichUnit, hslk.attr[attr].sub[max])
                            end
                            cj.SetUnitAbilityLevel(whichUnit, hslk.attr[attr].sub[max], level + 1)
                        end
                        max = math.floor(max / 10)
                    end
                end
                local subAttr = string.gsub(attr, "_green", "")
                
                if (hattribute.threeBuff.primary > 0) then
                    if (string.upper(subAttr) == hhero.getPrimary(whichUnit)) then
                        hattribute.set(whichUnit, 0, { attack_white = "+" .. diff * hattribute.threeBuff.primary })
                    end
                end
                
                local three = table.obj2arr(hattribute.threeBuff[subAttr], CONST_ATTR_KEYS)
                for _, d in ipairs(three) do
                    local tempV = diff * d.value
                    if (tempV < 0) then
                        hattribute.set(whichUnit, 0, { [d.key] = "-" .. math.abs(tempV) })
                    elseif (tempV > 0) then
                        hattribute.set(whichUnit, 0, { [d.key] = "+" .. tempV })
                    end
                end
            elseif (his.hero(whichUnit) and table.includes(attr, { "str_white", "agi_white", "int_white" })) then
                
                if (attr == "str_white") then
                    cj.SetHeroStr(whichUnit, math.floor(futureVal), true)
                elseif (attr == "agi_white") then
                    cj.SetHeroAgi(whichUnit, math.floor(futureVal), true)
                elseif (attr == "int_white") then
                    cj.SetHeroInt(whichUnit, math.floor(futureVal), true)
                end
                local subAttr = string.gsub(attr, "_white", "")
                
                if (hattribute.threeBuff.primary > 0) then
                    if (string.upper(subAttr) == hhero.getPrimary(whichUnit)) then
                        hattribute.set(whichUnit, 0, { attack_white = "+" .. diff * hattribute.threeBuff.primary })
                    end
                end
                
                local three = table.obj2arr(hattribute.threeBuff[subAttr], CONST_ATTR_KEYS)
                for _, d in ipairs(three) do
                    local tempV = diff * d.value
                    if (tempV < 0) then
                        hattribute.set(whichUnit, 0, { [d.key] = "-" .. math.abs(tempV) })
                    elseif (tempV > 0) then
                        hattribute.set(whichUnit, 0, { [d.key] = "+" .. tempV })
                    end
                end
            elseif (attr == "life_back" or attr == "mana_back") then
                
                if (math.abs(futureVal) > 0.02 and table.includes(whichUnit, hRuntime.attributeGroup[attr]) == false) then
                    table.insert(hRuntime.attributeGroup[attr], whichUnit)
                elseif (math.abs(futureVal) < 0.02) then
                    table.delete(whichUnit, hRuntime.attributeGroup[attr])
                end
            elseif (attr == "punish" and hunit.isOpenPunish(whichUnit)) then
                
                if (currentVal > 0) then
                    local punishCurrent = hattribute.get(whichUnit, 'punish_current')
                    if (punishCurrent > futureVal) then
                        hattribute.set(whichUnit, 0, {
                            punish_current = futureVal
                        })
                    end
                else
                    hattribute.set(whichUnit, 0, {
                        punish_current = futureVal
                    })
                end
            elseif (attr == "punish_current" and hunit.isOpenPunish(whichUnit)) then
                
                local punish = hattribute.get(whichUnit, 'punish')
                if (punish > 0 and (futureVal > punish or futureVal <= 0)) then
                    hattribute.set(whichUnit, 0, {
                        punish_current = punish
                    })
                end
            end
        end
    end
end
hattribute.set = function(whichUnit, during, data)
    if (whichUnit == nil) then
        
        
        print_stack("whichUnit is nil")
        return
    end
    local attribute = hattribute.get(whichUnit)
    if (attribute == nil) then
        return
    end
    
    if (type(data) ~= "table") then
        print_err("data must be table")
        return
    end
    for _, arr in ipairs(table.obj2arr(data, CONST_ATTR_KEYS)) do
        local attr = arr.key
        local v = arr.value
        if (attribute[attr] ~= nil) then
            if (type(v) == "string") then
                local opr = string.sub(v, 1, 1)
                v = string.sub(v, 2, string.len(v))
                local val = tonumber(v)
                if (val == nil) then
                    val = v
                end
                hattribute.setHandle(whichUnit, attr, opr, val, during)
            elseif (type(v) == "table") then
                
                if (v.add ~= nil and type(v.add) == "table") then
                    for _, buff in ipairs(v.add) do
                        if (buff == nil) then
                            print_err("table effect loss[buff]!")
                            print_stack()
                            break
                        end
                        if (type(buff) ~= "table") then
                            print_err("add type(buff) must be a table!")
                            print_stack()
                            break
                        end
                        hattribute.setHandle(whichUnit, attr, "+", buff, during)
                    end
                elseif (v.sub ~= nil and type(v.sub) == "table") then
                    for _, buff in ipairs(v.sub) do
                        if (buff == nil) then
                            print_err("table effect loss[buff]!")
                            print_stack()
                            break
                        end
                        if (type(buff) ~= "table") then
                            print_err("sub type(buff) must be a table!")
                            print_stack()
                            break
                        end
                        hattribute.setHandle(whichUnit, attr, "-", buff, during)
                    end
                end
            end
        end
    end
end
hattribute.get = function(whichUnit, attr)
    if (whichUnit == nil) then
        return nil
    end
    local attribute = hunit.get(whichUnit, 'attribute', nil)
    if (attribute == nil) then
        return nil
    elseif (attribute == -1) then
        if (hattribute.init(whichUnit) == false) then
            return nil
        end
        attribute = hunit.get(whichUnit, 'attribute')
    end
    if (attr == nil) then
        return attribute
    end
    return attribute[attr]
end
hattribute.caleAttribute = function(isAdd, whichUnit, attr, times)
    if (isAdd == nil) then
        isAdd = true
    end
    if (attr == nil) then
        return
    end
    times = times or 1
    local diff = {}
    local diffPlayer = {}
    for _, arr in ipairs(table.obj2arr(attr, CONST_ATTR_KEYS)) do
        local k = arr.key
        local v = arr.value
        local typev = type(v)
        local tempDiff
        if (k == "attack_damage_type") then
            local opt = "+"
            if (isAdd == false) then
                opt = "-"
            end
            local nv
            if (typev == "string") then
                opt = string.sub(v, 1, 1) or "+"
                nv = string.sub(v, 2)
            elseif (typev == "table") then
                nv = string.implode(",", v)
            end
            local nvs = {}
            for _ = 1, times do
                table.insert(nvs, nv)
            end
            tempDiff = opt .. string.implode(",", nvs)
        elseif (typev == "string") then
            local opt = string.sub(v, 1, 1)
            local nv = times * tonumber(string.sub(v, 2))
            if (isAdd == false) then
                if (opt == "+") then
                    opt = "-"
                else
                    opt = "+"
                end
            end
            tempDiff = opt .. nv
        elseif (typev == "number") then
            if ((v > 0 and isAdd == true) or (v < 0 and isAdd == false)) then
                tempDiff = "+" .. (v * times)
            elseif (v < 0) then
                tempDiff = "-" .. (v * times)
            end
        elseif (typev == "table") then
            local tempTable = {}
            for _ = 1, times do
                for _, vv in ipairs(v) do
                    table.insert(tempTable, vv)
                end
            end
            local opt = "add"
            if (isAdd == false) then
                opt = "sub"
            end
            tempDiff = {
                [opt] = tempTable
            }
        end
        if
        (table.includes(
            k,
            {
                "gold_ratio",
                "lumber_ratio",
                "exp_ratio",
                "sell_ratio"
            }
        ))
        then
            table.insert(diffPlayer, { k, tonumber(tempDiff) })
        else
            diff[k] = tempDiff
        end
    end
    hattr.set(whichUnit, 0, diff)
    if (#diffPlayer > 0) then
        local p = hunit.getOwner(whichUnit)
        for _, dp in ipairs(diffPlayer) do
            local pk = dp[1]
            local pv = dp[2]
            if (pv ~= 0) then
                if (pk == "gold_ratio") then
                    hplayer.addGoldRatio(p, pv, 0)
                elseif (pk == "lumber_ratio") then
                    hplayer.addLumberRatio(p, pv, 0)
                elseif (pk == "exp_ratio") then
                    hplayer.addExpRatio(p, pv, 0)
                elseif (pk == "sell_ratio") then
                    hplayer.addSellRatio(p, pv, 0)
                end
            end
        end
    end
end
hitem = {
    DEFAULT_SKILL_ITEM_SLOT = string.char2id("AInv"), 
    POSITION_TYPE = {
        
        COORDINATE = "coordinate", 
        UNIT = "unit" 
    },
    FLEETING_IDS = {
        GOLD = hslk.item_fleeting[1],
        LUMBER = hslk.item_fleeting[2],
        BOOK_YELLOW = hslk.item_fleeting[3],
        BOOK_GREEN = hslk.item_fleeting[4],
        BOOK_PURPLE = hslk.item_fleeting[5],
        BOOK_BLUE = hslk.item_fleeting[6],
        BOOK_RED = hslk.item_fleeting[7],
        RUNE = hslk.item_fleeting[8],
        RELIEF = hslk.item_fleeting[9],
        EGG = hslk.item_fleeting[10],
        FRAGMENT = hslk.item_fleeting[11],
        QUESTION = hslk.item_fleeting[12],
        GRASS = hslk.item_fleeting[13],
        DOTA2_GOLD = hslk.item_fleeting[14],
        DOTA2_DAMAGE = hslk.item_fleeting[15],
        DOTA2_CURE = hslk.item_fleeting[16],
        DOTA2_SPEED = hslk.item_fleeting[17],
        DOTA2_VISION = hslk.item_fleeting[18],
        DOTA2_INVISIBLE = hslk.item_fleeting[19],
    },
}
hitem.embed = function(u)
    if (hRuntime.unit[u] == nil) then
        
        return
    end
    
    if (his.computer(hunit.getOwner(u)) == false) then
        
        hevent.pool(u, hevent_default_actions.item.pickup, function(tgr)
            cj.TriggerRegisterUnitEvent(tgr, u, EVENT_UNIT_PICKUP_ITEM)
        end)
        
        hevent.pool(u, hevent_default_actions.item.drop, function(tgr)
            cj.TriggerRegisterUnitEvent(tgr, u, EVENT_UNIT_DROP_ITEM)
        end)
        
        hevent.pool(u, hevent_default_actions.item.pawn, function(tgr)
            cj.TriggerRegisterUnitEvent(tgr, u, EVENT_UNIT_PAWN_ITEM)
        end)
        
        hevent.pool(u, hevent_default_actions.item.use, function(tgr)
            cj.TriggerRegisterUnitEvent(tgr, u, EVENT_UNIT_USE_ITEM)
        end)
        hevent.pool(u, hevent_default_actions.item.use_s, function(tgr)
            cj.TriggerRegisterUnitEvent(tgr, u, EVENT_UNIT_SPELL_EFFECT)
        end)
    end
end
hitem.clearUnitCache = function(whichUnit)
    if (hRuntime.unit[whichUnit] ~= nil) then
        for i = 0, 5, 1 do
            local it = cj.UnitItemInSlot(whichUnit, i)
            if (it ~= nil) then
                hRuntime.clear(it)
            end
            it = nil
        end
    end
end
hitem.used = function(whichUnit, whichItem, triggerData)
    local isTrigger = false
    triggerData = triggerData or {}
    triggerData.triggerUnit = whichUnit
    triggerData.triggerItem = whichItem
    if (triggerData.targetLoc ~= nil) then
        triggerData.targetX = cj.GetLocationX(triggerData.targetLoc)
        triggerData.targetY = cj.GetLocationY(triggerData.targetLoc)
        triggerData.targetZ = cj.GetLocationZ(triggerData.targetLoc)
        cj.RemoveLocation(triggerData.targetLoc)
        triggerData.targetLoc = nil
    end
    if (#hmatcher.ITEM_MATCHER > 0) then
        local itemName = cj.GetItemName(whichItem)
        for _, m in ipairs(hmatcher.ITEM_MATCHER) do
            local s, e = string.find(itemName, m[1])
            if (s ~= nil and e ~= nil) then
                local isPowerUp = hitem.getIsPowerUp(whichItem)
                local isPerishable = hitem.getIsPerishable(whichItem)
                local useCharged = 1
                if (isPowerUp == true and isPerishable == true) then
                    useCharged = hitem.getCharges(whichItem)
                end
                for _ = 1, useCharged, 1 do
                    m[2](triggerData)
                    hevent.triggerEvent(
                        whichUnit,
                        CONST_EVENT.itemUsed,
                        triggerData
                    )
                    isTrigger = true
                end
            end
        end
    end
    if (isTrigger == false) then
        hevent.triggerEvent(
            whichUnit,
            CONST_EVENT.itemUsed,
            triggerData
        )
    end
end
hitem.del = function(it, delay)
    delay = delay or 0
    if (delay <= 0 and it ~= nil) then
        hitem.setPositionType(it, nil)
        cj.SetWidgetLife(it, 1.00)
        cj.RemoveItem(it)
        hRuntime.clear(it)
    else
        htime.setTimeout(
            delay,
            function(t)
                htime.delTimer(t)
                hitem.setPositionType(it, nil)
                hRuntime.clear(it)
                cj.SetWidgetLife(it, 1.00)
                cj.RemoveItem(it)
            end
        )
    end
end
hitem.getId = function(it)
    return string.id2char(cj.GetItemTypeId(it))
end
hitem.getName = function(itOrId)
    if (type(itOrId) == 'userdata') then
        return cj.GetItemName(itOrId)
    elseif (type(itOrId) == 'string' or type(itOrId) == 'number') then
        local slk = hitem.getSlk(itOrId)
        if (slk ~= nil) then
            return slk.Name;
        end
    end
    return ''
end
hitem.getPositionType = function(it)
    if (hRuntime.item[it] == nil) then
        return
    end
    return hRuntime.item[it].positionType
end
hitem.setPositionType = function(it, type)
    if (it == nil or cj.GetItemName(it) == nil) then
        return
    end
    if (type == nil) then
        table.delete(it, hRuntime.itemPickPool)
        return
    end
    if (hRuntime.item[it] ~= nil) then
        hRuntime.item[it].positionType = type
        
        if (type == hitem.POSITION_TYPE.COORDINATE) then
            table.insert(hRuntime.itemPickPool, it)
        end
    end
end
hitem.getSlk = function(itOrId)
    local slk
    local itId
    if (itOrId == nil) then
        return
    end
    if (type(itOrId) == "string") then
        itId = itOrId
    elseif (type(itOrId) == "number") then
        itId = string.id2char(itOrId)
    else
        itId = hitem.getId(itOrId)
    end
    if (hslk.id2Value.item[itId] ~= nil) then
        slk = hslk.id2Value.item[itId]
    end
    return slk
end
hitem.getArt = function(itOrId)
    local slk = hitem.getSlk(itOrId)
    if (slk ~= nil) then
        return slk.Art
    else
        return ""
    end
end
hitem.getFile = function(itOrId)
    local slk = hitem.getSlk(itOrId)
    if (slk ~= nil) then
        return slk.file
    else
        return ""
    end
end
hitem.getClass = function(itOrId)
    local slk = hitem.getSlk(itOrId)
    if (slk ~= nil) then
        return slk.class
    else
        return "Permanent"
    end
end
hitem.getGoldCost = function(itOrId)
    local slk = hitem.getSlk(itOrId)
    if (slk ~= nil) then
        return math.floor(slk.goldcost)
    else
        return 0
    end
end
hitem.getLumberCost = function(itOrId)
    local slk = hitem.getSlk(itOrId)
    if (slk ~= nil) then
        return math.floor(slk.lumbercost)
    else
        return 0
    end
end
hitem.getIsUsable = function(itOrId)
    local slk = hitem.getSlk(itOrId)
    if (slk ~= nil) then
        return slk.usable == 1
    else
        return false
    end
end
hitem.getIsPowerUp = function(itOrId)
    local slk = hitem.getSlk(itOrId)
    if (slk ~= nil) then
        return slk.powerup == 1
    else
        return false
    end
end
hitem.getIsPerishable = function(itOrId)
    local slk = hitem.getSlk(itOrId)
    if (slk ~= nil) then
        return slk.perishable == 1
    else
        return nil
    end
end
hitem.getIsSellAble = function(itOrId)
    local slk = hitem.getSlk(itOrId)
    if (slk ~= nil) then
        return slk.sellable == 1
    else
        return false
    end
end
hitem.getOverlie = function(itOrId)
    local slk = hitem.getSlk(itOrId)
    if (slk ~= nil) then
        return slk.OVERLIE or 1
    else
        return 1
    end
end
hitem.getWeight = function(itOrId, charges)
    local slk = hitem.getSlk(itOrId)
    if (slk ~= nil) then
        if (charges == nil and type(itOrId) == "userdata") then
            
            charges = hitem.getCharges(itOrId)
        else
            charges = 1
        end
        return (slk.WEIGHT or 0) * charges
    else
        return 0
    end
end
hitem.getAttribute = function(itOrId)
    local slk = hitem.getSlk(itOrId)
    if (slk ~= nil) then
        return slk.ATTR or {}
    else
        return {}
    end
end
hitem.getCustomData = function(itOrId)
    local slk = hitem.getSlk(itOrId)
    if (slk ~= nil) then
        return slk.CUSTOM_DATA or {}
    else
        return {}
    end
end
hitem.getLevel = function(it)
    if (it ~= nil) then
        return cj.GetItemLevel(it)
    end
    return 0
end
hitem.getCharges = function(it)
    if (it ~= nil) then
        return cj.GetItemCharges(it)
    else
        return 0
    end
end
hitem.setCharges = function(it, charges)
    if (it ~= nil and charges > 0) then
        cj.SetItemCharges(it, charges)
    end
end
hitem.getTotalCharges = function(itemId, whichUnit)
    local charges = 0
    local it
    if (type(itemId) == "string") then
        itemId = string.char2id(itemId)
    end
    for i = 0, 5, 1 do
        it = cj.UnitItemInSlot(whichUnit, i)
        if (it ~= nil and cj.GetItemTypeId(it) == itemId) then
            charges = charges + hitem.getCharges(it)
        end
    end
    return charges
end
hitem.getEmptySlot = function(whichUnit)
    local qty = cj.UnitInventorySize(whichUnit)
    local it
    for i = 0, 5, 1 do
        it = cj.UnitItemInSlot(whichUnit, i)
        if (it ~= nil) then
            qty = qty - 1
        end
    end
    return qty
end
hitem.slotLoop = function(whichUnit, action)
    local it
    for i = 0, 5, 1 do
        it = cj.UnitItemInSlot(whichUnit, i)
        action(it, i)
    end
end
hitem.addProperty = function(whichUnit, itId, charges)
    local attr = hitem.getAttribute(itId)
    attr.weight_current = "+" .. hitem.getWeight(itId, 1)
    hattribute.caleAttribute(true, whichUnit, attr, charges)
    for _ = 1, charges, 1 do
        hring.insert(whichUnit, itId)
    end
end
hitem.subProperty = function(whichUnit, itId, charges)
    local attr = hitem.getAttribute(itId)
    attr.weight_current = "+" .. hitem.getWeight(itId, 1)
    hattribute.caleAttribute(false, whichUnit, attr, charges)
    for _ = 1, charges, 1 do
        hring.remove(whichUnit, itId)
    end
end
hitem.synthesis = function(whichUnit, items)
    if (whichUnit == nil) then
        return {}
    end
    items = items or {}
    if (type(items) == 'userdata') then
        items = { items }
    end
    local itemKinds = {}
    local itemQuantity = {}
    hitem.slotLoop(whichUnit, function(slotItem)
        if (slotItem ~= nil) then
            local itId = hitem.getId(slotItem)
            if (table.includes(itId, itemKinds) == false) then
                table.insert(itemKinds, itId)
            end
            if (itemQuantity[itId] == nil) then
                itemQuantity[itId] = 0
            end
            itemQuantity[itId] = itemQuantity[itId] + (hitem.getCharges(slotItem) or 1)
        end
    end)
    if (#items > 0) then
        for _, it in ipairs(items) do
            local itId = hitem.getId(it)
            if (table.includes(itId, itemKinds) == false) then
                table.insert(itemKinds, itId)
            end
            if (itemQuantity[itId] == nil) then
                itemQuantity[itId] = 0
            end
            itemQuantity[itId] = itemQuantity[itId] + (hitem.getCharges(it) or 1)
            hitem.del(it, 0)
        end
    end
    local matchCount = 1
    while (matchCount > 0) do
        matchCount = 0
        for _, itId in ipairs(itemKinds) do
            if (hslk.synthesis.fragment[itId] ~= nil) then
                for need = #hslk.synthesis.fragment[itId], 1, -1 do
                    if ((itemQuantity[itId] or 0) >= need) then
                        local maybeProfits = hslk.synthesis.fragment[itId][need]
                        for _, mp in ipairs(maybeProfits) do
                            local profitId = mp.profit
                            local profitIndex = mp.index
                            local whichProfit = hslk.synthesis.profit[profitId][profitIndex]
                            local needFragments = whichProfit.fragment
                            local match = true
                            for _, frag in ipairs(needFragments) do
                                if ((itemQuantity[frag[1]] or 0) < frag[2]) then
                                    match = false
                                    break
                                end
                            end
                            if (match == true) then
                                matchCount = matchCount + 1
                                for _, frag in ipairs(needFragments) do
                                    itemQuantity[frag[1]] = itemQuantity[frag[1]] - frag[2]
                                    if (itemQuantity[frag[1]] == 0) then
                                        itemQuantity[frag[1]] = nil
                                        table.delete(frag[1], itemKinds)
                                    end
                                end
                                if (table.includes(profitId, itemKinds) == false) then
                                    table.insert(itemKinds, profitId)
                                end
                                if (itemQuantity[profitId] == nil) then
                                    itemQuantity[profitId] = whichProfit.qty
                                else
                                    itemQuantity[profitId] = itemQuantity[profitId] + whichProfit.qty
                                end
                            end
                        end
                    end
                end
            end
        end
    end
    
    local final = {}
    for _, itId in ipairs(itemKinds) do
        local slk = hslk.id2Value.item[itId]
        if (slk ~= nil) then
            local overlie = slk.OVERLIE or 1
            while (itemQuantity[itId] > 0) do
                local charges = 0
                if (overlie >= itemQuantity[itId]) then
                    charges = itemQuantity[itId]
                    itemQuantity[itId] = 0
                else
                    charges = overlie
                    itemQuantity[itId] = itemQuantity[itId] - overlie
                end
                table.insert(final, { id = itId, charges = charges })
            end
        else
            table.insert(final, { id = itId, charges = itemQuantity[itId] })
        end
    end
    
    for i = 1, 6, 1 do
        local slot = i - 1
        local it = cj.UnitItemInSlot(whichUnit, slot)
        if (it ~= nil) then
            local id = hitem.getId(it)
            local fid
            if (final[i] ~= nil) then
                fid = final[i].id
            end
            if (id ~= fid) then
                local charges = hitem.getCharges(it) or 1
                hitem.subProperty(whichUnit, id, charges)
                hitem.del(it, 0)
            end
        end
    end
    local extra = {}
    for i = 1, math.max(6, #final), 1 do
        if (i <= 6) then
            local slot = i - 1
            local it = cj.UnitItemInSlot(whichUnit, slot)
            if (final[i] == nil) then
                if (it ~= nil) then
                    local id = hitem.getId(it)
                    local charges = hitem.getCharges(it) or 1
                    hitem.subProperty(whichUnit, id, charges)
                    hitem.del(it, 0)
                end
            elseif (it == nil) then
                
                local synthesisItem = hitem.create({
                    itemId = final[i].id,
                    whichUnit = whichUnit,
                    charges = final[i].charges,
                })
                
                hevent.triggerEvent(
                    whichUnit,
                    CONST_EVENT.itemSynthesis,
                    {
                        triggerUnit = whichUnit,
                        triggerItem = synthesisItem
                    }
                )
            else
                
                local c = hitem.getCharges(it) or 1
                if (final[i].charges ~= c) then
                    if (final[i].charges > c) then
                        cj.SetItemCharges(it, final[i].charges)
                        hitem.addProperty(whichUnit, final[i].id, final[i].charges - c)
                    else
                        cj.SetItemCharges(it, final[i].charges)
                        hitem.subProperty(whichUnit, final[i].id, c - final[i].charges)
                    end
                end
            end
        else
            table.insert(extra, final[i]);
        end
    end
    return extra
end
hitem.separate = function(whichItem, separateType, formulaIndex, whichUnit)
    if (whichItem == nil) then
        return "物品不存在"
    end
    whichUnit = whichUnit or nil
    local x = 0
    local y = 0
    if (whichUnit ~= nil and cj.IsItemOwned(whichItem)) then
        x = cj.GetUnitX(whichUnit)
        y = cj.GetUnitY(whichUnit)
    else
        x = cj.GetItemX(whichItem)
        y = cj.GetItemY(whichItem)
    end
    local id = hitem.getId(whichItem)
    local charges = hitem.getCharges(whichItem)
    separateType = separateType or "single"
    formulaIndex = formulaIndex or 1 
    if (charges <= 1) then
        
        separateType = "formula"
    end
    if (separateType == "single") then
        for _ = 1, charges, 1 do
            hitem.create({ itemId = id, charges = 1, x = x, y = y, during = 0 })
        end
    elseif (separateType == "formula") then
        local originSlk = hslk.id2Value.item[id]
        if (originSlk ~= nil and originSlk.SHADOW == true) then
            id = hslk.id2Value.item[originSlk.SHADOW_ID].ITEM_ID
        end
        if (hslk.synthesis.profit[id] == nil) then
            return "物品不存在公式，无法拆分"
        end
        local profit = hslk.synthesis.profit[id][formulaIndex] or nil
        if (profit == nil) then
            return "物品找不到公式，无法拆分"
        end
        print_mbr(profit)
        for _ = 1, charges, 1 do
            for _, frag in ipairs(profit.fragment) do
                local flagId = frag[1]
                if (#profit.fragment == 1) then
                    for _ = 1, frag[2], 1 do
                        hitem.create({ itemId = flagId, charges = 1, x = x, y = y, during = 0 })
                    end
                else
                    local qty = frag[2]
                    local slk = hslk.id2Value.item[flagId]
                    if (slk ~= nil) then
                        local overlie = slk.OVERLIE or 1
                        while (qty > 0) do
                            if (overlie >= qty) then
                                hitem.create({ itemId = flagId, charges = qty, x = x, y = y, during = 0 })
                                qty = 0
                            else
                                qty = qty - overlie
                                hitem.create({ itemId = flagId, charges = overlie, x = x, y = y, during = 0 })
                            end
                        end
                    else
                        hitem.create({ itemId = flagId, charges = qty, x = x, y = y, during = 0 })
                    end
                end
            end
        end
    end
    hevent.triggerEvent(
        whichItem,
        CONST_EVENT.itemSeparate,
        {
            triggerItem = whichItem,
            type = separateType,
            targetUnit = whichUnit,
        }
    )
    hitem.del(whichItem, 0)
end
hitem.detector = function(whichUnit, originItem)
    if (whichUnit == nil or originItem == nil) then
        print_err("detector params nil")
    end
    local newWeight = hattr.get(whichUnit, "weight_current") + hitem.getWeight(originItem)
    if (newWeight > hattr.get(whichUnit, "weight")) then
        local exWeight = math.round(newWeight - hattr.get(whichUnit, "weight"))
        htextTag.style(
            htextTag.create2Unit(whichUnit, "负重超出" .. exWeight .. "kg", 8.00, "ffffff", 1, 1.1, 50.00),
            "scale",
            0,
            0.05
        )
        
        local originSlk = hitem.getSlk(originItem)
        if (originSlk.SHADOW == nil and originSlk.SHADOW_ID) then
            local x = cj.GetItemX(originItem)
            local y = cj.GetItemY(originItem)
            local c = cj.GetItemCharges(originItem)
            hitem.del(originItem, 0)
            originItem = hitem.create({
                itemId = originSlk.SHADOW_ID,
                x = x,
                y = y,
                charges = c,
                during = 0
            })
        else
            hitem.setPositionType(originItem, hitem.POSITION_TYPE.COORDINATE)
        end
        
        hevent.triggerEvent(
            whichUnit,
            CONST_EVENT.itemOverWeight,
            {
                triggerUnit = whichUnit,
                triggerItem = originItem,
                value = exWeight
            }
        )
        return
    end
    local getItem
    
    local originSlk = hitem.getSlk(originItem)
    if (originSlk ~= nil and originSlk.SHADOW == true and originSlk.SHADOW_ID) then
        local realX = cj.GetItemX(originItem)
        local realY = cj.GetItemY(originItem)
        local realCharges = cj.GetItemCharges(originItem)
        hitem.del(originItem, 0)
        getItem = hitem.create({
            autoShadow = false,
            itemId = originSlk.SHADOW_ID,
            x = realX,
            y = realY,
            charges = realCharges,
            during = 0
        })
        originItem = nil
    else
        getItem = originItem
    end
    local overlie = hitem.getOverlie(getItem)
    if (overlie > 1 and hitem.getIsPowerUp(getItem) ~= true) then
        local isOverlieOver = false
        
        local tempIt
        local currentItId = cj.GetItemTypeId(getItem)
        local currentCharges = hitem.getCharges(getItem)
        for si = 0, 5, 1 do
            tempIt = cj.UnitItemInSlot(whichUnit, si)
            if (tempIt ~= nil and currentItId == cj.GetItemTypeId(tempIt)) then
                
                
                local tempCharges = hitem.getCharges(tempIt)
                if (tempCharges < overlie) then
                    if ((currentCharges + tempCharges) <= overlie) then
                        
                        
                        cj.SetItemCharges(tempIt, currentCharges + tempCharges)
                        hitem.del(getItem, 0)
                        isOverlieOver = true
                        hitem.addProperty(whichUnit, currentItId, currentCharges)
                        break
                    else
                        
                        cj.SetItemCharges(tempIt, overlie)
                        cj.SetItemCharges(getItem, currentCharges - (overlie - tempCharges))
                        hitem.addProperty(whichUnit, currentItId, overlie - tempCharges)
                    end
                end
            end
        end
        
        if (isOverlieOver == true) then
            getItem = nil
        end
    end
    
    if (getItem ~= nil) then
        local isPowerUp = hitem.getIsPowerUp(getItem)
        local isPerishable = hitem.getIsPerishable(getItem)
        local useCharged = hitem.getCharges(getItem)
        
        if (isPowerUp == true and isPerishable == true) then
            hitem.used(whichUnit, getItem)
            hitem.del(getItem, 0)
            return
        elseif (hitem.getEmptySlot(whichUnit) > 0) then
            
            hitem.setPositionType(getItem, hitem.POSITION_TYPE.UNIT)
            cj.UnitAddItem(whichUnit, getItem)
            
            hevent.triggerEvent(
                whichUnit,
                CONST_EVENT.itemGet,
                {
                    triggerUnit = whichUnit,
                    triggerItem = getItem
                }
            )
            hitem.addProperty(whichUnit, cj.GetItemTypeId(getItem), useCharged)
            
            if (isPowerUp == true) then
                hitem.used(whichUnit, getItem)
            end
            getItem = nil
        end
    end
    
    local extra = {}
    if (getItem ~= nil) then
        extra = hitem.synthesis(whichUnit, getItem)
    else
        extra = hitem.synthesis(whichUnit)
    end
    if (#extra > 0) then
        for _, e in ipairs(extra) do
            local slk = hslk.id2Value.item[e.id]
            local id = slk.ITEM_ID
            if (slk.SHADOW ~= true and slk.SHADOW_ID ~= nil) then
                id = slk.SHADOW_ID
            end
            local x = hunit.x(whichUnit)
            local y = hunit.y(whichUnit)
            local charges = e.charges
            local extraIt = hitem.create(
                {
                    itemId = slk.SHADOW_ID,
                    x = x,
                    y = y,
                    charges = charges,
                    during = 0
                }
            )
            hitem.setPositionType(extraIt, hitem.POSITION_TYPE.COORDINATE)
            
            hevent.triggerEvent(
                whichUnit,
                CONST_EVENT.itemOverSlot,
                {
                    triggerUnit = whichUnit,
                    triggerItem = extraIt
                }
            )
        end
    end
end
hitem.create = function(bean)
    if (bean.itemId == nil) then
        print_err("hitem create -it-id")
        return
    end
    if (bean.charges == nil) then
        bean.charges = 1
    end
    if (bean.charges < 1) then
        return
    end
    local charges = bean.charges
    local during = bean.during or 0
    
    local x, y
    local itemId = bean.itemId
    local posType
    if (bean.x ~= nil and bean.y ~= nil) then
        x = bean.x
        y = bean.y
        posType = hitem.POSITION_TYPE.COORDINATE
    elseif (bean.whichUnitPosition ~= nil) then
        x = hunit.x(bean.whichUnit)
        y = hunit.y(bean.whichUnit)
        posType = hitem.POSITION_TYPE.COORDINATE
    elseif (bean.whichUnit ~= nil) then
        x = hunit.x(bean.whichUnit)
        y = hunit.y(bean.whichUnit)
        posType = hitem.POSITION_TYPE.UNIT
    elseif (bean.whichLoc ~= nil) then
        x = cj.GetLocationX(bean.whichLoc)
        y = cj.GetLocationY(bean.whichLoc)
        posType = hitem.POSITION_TYPE.COORDINATE
    else
        print_err("hitem create -site")
        return
    end
    local it
    if (type(itemId) == "string") then
        it = cj.CreateItem(string.char2id(itemId), x, y)
    else
        it = cj.CreateItem(itemId, x, y)
    end
    cj.SetItemCharges(it, charges)
    if (posType == hitem.POSITION_TYPE.UNIT) then
        hRuntime.item[it] = {}
        hitem.setPositionType(it, posType)
        hitem.detector(bean.whichUnit, it)
    else
        if (type(bean.autoShadow) ~= 'boolean') then
            bean.autoShadow = true
        end
        if (bean.autoShadow == true) then
            
            local slk = hitem.getSlk(it)
            if (slk ~= nil and slk.SHADOW ~= true and slk.SHADOW_ID ~= nil) then
                x = cj.GetItemX(it)
                y = cj.GetItemY(it)
                hitem.del(it, 0)
                it = cj.CreateItem(string.char2id(slk.SHADOW_ID), x, y)
                cj.SetItemCharges(it, charges)
            end
        end
        hRuntime.item[it] = {}
        hitem.setPositionType(it, posType)
        if (during > 0) then
            htime.setTimeout(
                during,
                function(t)
                    htime.delTimer(t)
                    hitem.del(it, 0)
                end
            )
        end
    end
    itemId = nil
    x = nil
    y = nil
    return it
end
hitem.fleeting = function(fleetingType, x, y, during, yourFunc)
    if (fleetingType == nil) then
        print_err("hitem fleeting -type")
        return
    end
    if (x == nil or y == nil) then
        return
    end
    during = during or 30
    if (during < 0) then
        return
    end
    local it = hunit.create({
        register = false,
        whichPlayer = hplayer.player_passive,
        unitId = fleetingType,
        x = x,
        y = y,
        during = during,
    })
    if (type(yourFunc) == "function") then
        hevent.onEnterUnitRange(it, 127, yourFunc)
    end
    return it
end
hitem.give = function(origin, target)
    if (origin == nil or target == nil) then
        return
    end
    for i = 0, 5, 1 do
        local it = cj.UnitItemInSlot(origin, i)
        if (it ~= nil) then
            hitem.create(
                {
                    itemId = hitem.getId(it),
                    charges = hitem.getCharges(it),
                    whichUnit = target
                }
            )
        end
        hitem.del(it, 0)
    end
end
hitem.pick = function(it, targetUnit)
    if (it == nil or targetUnit == nil) then
        return
    end
    cj.UnitAddItem(targetUnit, it)
end
hitem.copy = function(origin, target)
    if (origin == nil or target == nil) then
        return
    end
    for i = 0, 5, 1 do
        local it = cj.UnitItemInSlot(origin, i)
        if (it ~= nil) then
            hitem.create(
                {
                    itemId = hitem.getId(it),
                    charges = hitem.getCharges(it),
                    whichUnit = target,
                }
            )
        end
    end
end
hitem.drop = function(origin, slot)
    if (origin == nil) then
        return
    end
    if (slot == nil) then
        for i = 0, 5, 1 do
            local it = cj.nitItemInSlot(origin, i)
            if (it ~= nil) then
                hitem.create(
                    {
                        itemId = hitem.getId(it),
                        charges = hitem.getCharges(it),
                        x = hunit.x(origin),
                        x = hunit.y(origin)
                    }
                )
                htime.del(it, 0)
            end
        end
    else
        local it = cj.nitItemInSlot(origin, slot)
        if (it ~= nil) then
            hitem.create(
                {
                    itemId = hitem.getId(it),
                    charges = hitem.getCharges(it),
                    x = hunit.x(origin),
                    x = hunit.y(origin)
                }
            )
            htime.del(it, 0)
        end
    end
end
hitem.pickRect = function(u, x, y, w, h)
    for k = #hRuntime.itemPickPool, 1, -1 do
        local xi = cj.GetItemX(hRuntime.itemPickPool[k])
        local yi = cj.GetItemY(hRuntime.itemPickPool[k])
        if (hitem.getEmptySlot(u) > 0) then
            local d = math.getDistanceBetweenXY(x, y, xi, yi)
            local deg = math.getDegBetweenXY(x, y, xi, yi)
            local distance = math.getMaxDistanceInRect(w, h, deg)
            if (d <= distance) then
                hitem.pick(hRuntime.itemPickPool[k], u)
            end
        else
            break
        end
    end
end
hitem.pickRound = function(u, x, y, r)
    for k = #hRuntime.itemPickPool, 1, -1 do
        local xi = cj.GetItemX(hRuntime.itemPickPool[k])
        local yi = cj.GetItemY(hRuntime.itemPickPool[k])
        local d = math.getDistanceBetweenXY(x, y, xi, yi)
        if (d <= r and hitem.getEmptySlot(u) > 0) then
            hitem.pick(hRuntime.itemPickPool[k], u)
        else
            break
        end
    end
end
hdialog = {
    trigger = nil
}
hdialog.hotkey = function(key)
    if (key == nil) then
        return 0
    elseif (type(key) == "number") then
        return key
    elseif (type(key) == "string") then
        return string.byte(key, 1)
    else
        return 0
    end
end
hdialog.del = function(whichDialog)
    hRuntime.clear(whichDialog)
    cj.DialogClear(whichDialog)
    cj.DialogDestroy(whichDialog)
end
hdialog.create = function(whichPlayer, options, action)
    
    local d = cj.DialogCreate()
    if (#options.buttons <= 0) then
        print_err("Dialog buttons is empty")
        return
    end
    hRuntime.dialog[d] = {
        action = action,
        buttons = {}
    }
    cj.DialogSetMessage(d, options.title)
    for i = 1, #options.buttons, 1 do
        if (type(options.buttons[i]) == "table") then
            local b = cj.DialogAddButton(d, options.buttons[i].label, hdialog.hotkey(options.buttons[i].value))
            table.insert(hRuntime.dialog[d].buttons, {
                button = b,
                value = options.buttons[i].value
            })
        else
            local b = cj.DialogAddButton(d, options.buttons[i], hdialog.hotkey(options.buttons[i]))
            table.insert(hRuntime.dialog[d].buttons, {
                button = b,
                value = options.buttons[i]
            })
        end
    end
    hevent.pool(d, hevent_default_actions.dialog.click, function(tgr)
        cj.TriggerRegisterDialogEvent(tgr, d)
    end)
    if (whichPlayer == nil) then
        for i = 1, bj_MAX_PLAYERS, 1 do
            if (cj.GetPlayerController(hplayer.players[i]) == MAP_CONTROL_USER and
                cj.GetPlayerSlotState(hplayer.players[i]) == PLAYER_SLOT_STATE_PLAYING) then
                whichPlayer = hplayer.players[i]
                break
            end
        end
    end
    cj.DialogDisplay(whichPlayer, d, true)
end
hleaderBoard = {}
hleaderBoard.LeaderboardResize = function(lb)
    local size = cj.LeaderboardGetItemCount(lb)
    if cj.LeaderboardGetLabelText(lb) == "" then
        size = size - 1
    end
    cj.LeaderboardSetSizeByItemCount(lb, size)
end
hleaderBoard.create = function(key, refreshFrequency, yourData)
    
    if (hRuntime.leaderBoard[key] == nil) then
        cj.DestroyLeaderboard(hRuntime.leaderBoard[key])
        hRuntime.leaderBoard[key] = cj.CreateLeaderboard()
    end
    cj.LeaderboardSetLabel(hRuntime.leaderBoard[key], "排行榜")
    htime.setInterval(
        refreshFrequency,
        function(t)
            local data = yourData(hRuntime.leaderBoard[key])
            for _, d in ipairs(data) do
                local playerIndex = d.playerIndex
                local value = d.value
                if cj.LeaderboardHasPlayerItem(hRuntime.leaderBoard[key], hplayer.players[playerIndex]) then
                    cj.LeaderboardRemovePlayerItem(hRuntime.leaderBoard[key], hplayer.players[playerIndex])
                end
                cj.PlayerSetLeaderboard(hplayer.players[playerIndex], hRuntime.leaderBoard[key])
                cj.LeaderboardAddItem(
                    hRuntime.leaderBoard[key],
                    cj.GetPlayerName(hplayer.players[playerIndex]),
                    value,
                    hplayer.players[playerIndex]
                )
            end
            cj.LeaderboardSortItemsByValue(hRuntime.leaderBoard[key], false) 
            hleaderBoard.LeaderboardResize(hRuntime.leaderBoard[key])
        end
    )
    cj.LeaderboardDisplay(hRuntime.leaderBoard[key], true)
    return hRuntime.leaderBoard[key]
end
hleaderBoard.setTitle = function(whichBoard, title)
    cj.LeaderboardSetLabel(whichBoard, title)
end
hleaderBoard.pos = function(whichBoard, n)
    if (n < 1 or n > hplayer.qty_max) then
        return
    end
    local pos
    n = n - 1
    for i = 1, hplayer.qty_max, 1 do
        if (cj.LeaderboardGetPlayerIndex(whichBoard, hplayer.players[i]) == n) then
            pos = hplayer.players[i]
            break
        end
    end
    return pos
end
hleaderBoard.top = function(whichBoard)
    return hleaderBoard.pos(whichBoard, 1)
end
hleaderBoard.bottom = function(whichBoard)
    return hleaderBoard.pos(whichBoard, hplayer.qty_max)
end
hmultiBoard = {}
hmultiBoard.create = function(key, refreshFrequency, yourData)
    
    for pi = 1, hplayer.qty_max, 1 do
        local p = hplayer.players[pi]
        if (his.playing(p)) then
            if (hRuntime.multiBoard[pi] == nil) then
                hRuntime.multiBoard[pi] = {
                    visible = true,
                    timer = nil,
                    borads = {}
                }
            end
            if (hRuntime.multiBoard[pi].borads[key] ~= nil) then
                cj.DestroyMultiboard(hRuntime.multiBoard[pi].borads[key])
            end
            hRuntime.multiBoard[pi].borads[key] = cj.CreateMultiboard()
            
            cj.MultiboardSetTitleText(hRuntime.multiBoard[pi].borads[key], "多面板")
            
            hRuntime.multiBoard[pi].timer = htime.setInterval(
                refreshFrequency,
                function()
                    
                    if (hRuntime.multiBoard[pi].visible ~= true) then
                        if (cj.GetLocalPlayer() == p) then
                            cj.MultiboardDisplay(hRuntime.multiBoard[pi].borads[key], false)
                        end
                        
                        return
                    end
                    local data = yourData(hRuntime.multiBoard[pi].borads[key], pi)
                    local totalRow = #data
                    local totalCol = 0
                    if (totalRow > 0) then
                        totalCol = #data[1]
                    end
                    if (totalRow <= 0 or totalCol <= 0) then
                        print_err("Multiboard:-totalRow -totalCol")
                        return
                    end
                    
                    cj.MultiboardSetRowCount(hRuntime.multiBoard[pi].borads[key], totalRow)
                    cj.MultiboardSetColumnCount(hRuntime.multiBoard[pi].borads[key], totalCol)
                    local widthCol = {}
                    for row = 1, totalRow, 1 do
                        for col = 1, totalCol, 1 do
                            local item = cj.MultiboardGetItem(hRuntime.multiBoard[pi].borads[key], row - 1, col - 1)
                            local isSetValue = false
                            local isSetIcon = false
                            local width = 0
                            local valueType = type(data[row][col].value)
                            if (valueType == "string" or valueType == "number") then
                                isSetValue = true
                                if (valueType == "number") then
                                    data[row][col].value = tostring(data[row][col].value)
                                end
                                width = width + string.mb_len(data[row][col].value)
                                if ((row - 1) == pi) then
                                    data[row][col].value = hColor.yellow(data[row][col].value)
                                end
                                cj.MultiboardSetItemValue(item, data[row][col].value)
                            end
                            if (type(data[row][col].icon) == "string") then
                                isSetIcon = true
                                cj.MultiboardSetItemIcon(item, data[row][col].icon)
                                width = width + 3
                            end
                            cj.MultiboardSetItemStyle(item, isSetValue, isSetIcon)
                            if (widthCol[col] == nil) then
                                widthCol[col] = 0
                            end
                            if (width > widthCol[col]) then
                                widthCol[col] = width
                            end
                        end
                    end
                    for row = 1, totalRow, 1 do
                        for col = 1, totalCol, 1 do
                            cj.MultiboardSetItemWidth(
                                cj.MultiboardGetItem(hRuntime.multiBoard[pi].borads[key], row - 1, col - 1),
                                widthCol[col] / 140
                            )
                        end
                    end
                    
                    if (cj.GetLocalPlayer() == p) then
                        cj.MultiboardDisplay(hRuntime.multiBoard[pi].borads[key], true)
                    end
                end
            )
        end
    end
end
hmultiBoard.setTitle = function(whichBoard, title)
    cj.MultiboardSetTitleText(whichBoard, title)
end
hquest = {}
hquest.del = function(q, delay)
    if (delay == nil or delay <= 0) then
        cj.DestroyQuest(q)
    else
        htime.setTimeout(
            delay,
            function(t)
                htime.delTimer(t)
                cj.DestroyQuest(q)
            end
        )
    end
end
hquest.create = function(options)
    
    local side = options.side or "left"
    local title = options.title
    local content = options.content
    local isFinish = options.isFinish
    if (title == nil) then
        return
    end
    if (type(options.content) == "table") then
        content = string.implode("|n", options.content)
    end
    if (content == nil) then
        return
    end
    local questType = bj_QUESTTYPE_REQ_DISCOVERED
    if (side == "right") then
        questType = bj_QUESTTYPE_OPT_DISCOVERED
    end
    local icon = options.icon or "ReplaceableTextures\\CommandButtons\\BTNTomeOfRetraining.blp"
    local required = questType == bj_QUESTTYPE_REQ_DISCOVERED or questType == bj_QUESTTYPE_REQ_UNDISCOVERED
    local discovered = questType == bj_QUESTTYPE_REQ_DISCOVERED or questType == bj_QUESTTYPE_OPT_DISCOVERED
    local q = cj.CreateQuest()
    cj.QuestSetTitle(q, title)
    cj.QuestSetDescription(q, content)
    cj.QuestSetIconPath(q, icon)
    cj.QuestSetRequired(q, required)
    cj.QuestSetDiscovered(q, discovered)
    if (isFinish == true) then
        cj.QuestSetCompleted(q, true)
    else
        cj.QuestSetCompleted(q, false)
    end
    if (options.during ~= nil and options.during > 0) then
        hquest.del(q, options.during)
    end
    return q
end
hquest.flash = function()
    cj.FlashQuestDialogButton()
end
hquest.setCompleted = function(q)
    cj.QuestSetCompleted(q, true)
end
hquest.setFailed = function(q)
    cj.QuestSetFailed(q, true)
end
hquest.setDiscovered = function(q)
    cj.QuestSetDiscovered(q, true)
end
hmatcher = {
    ITEM_MATCHER = {},
    RING_MATCHER = {},
}
hmatcher.item = function(conf)
    if (#conf <= 0) then
        return
    end
    for _, v in ipairs(conf) do
        if (type(v[1]) == "string" and type(v[2]) == "function") then
            table.insert(hmatcher.ITEM_MATCHER, v)
        end
    end
end
hmatcher.ring = function(conf)
    if (#conf <= 0) then
        return
    end
    for _, v in ipairs(conf) do
        if (type(v[1]) == "string" and type(v[2]) == "function") then
            table.insert(hmatcher.RING_MATCHER, v)
        end
    end
end
httg = htextTag
hattr = hattribute
cj.TimerStart(cj.CreateTimer(), 1.00, true, htime.clock)
local preread_u = cj.CreateUnit(hplayer.player_passive, hslk.unit_token, 0, 0, 0)
hattr.regAllAbility(preread_u)
hunit.del(preread_u)
hevent.pool('global', hevent_default_actions.player.apm, function(tgr)
    for i = 1, bj_MAX_PLAYERS, 1 do
        cj.TriggerRegisterPlayerUnitEvent(tgr, cj.Player(i - 1), EVENT_PLAYER_UNIT_ISSUED_TARGET_ORDER, nil)
        cj.TriggerRegisterPlayerUnitEvent(tgr, cj.Player(i - 1), EVENT_PLAYER_UNIT_ISSUED_POINT_ORDER, nil)
        cj.TriggerRegisterPlayerUnitEvent(tgr, cj.Player(i - 1), EVENT_PLAYER_UNIT_ISSUED_ORDER, nil)
    end
end)
for i = 1, bj_MAX_PLAYERS, 1 do
    hplayer.players[i] = cj.Player(i - 1)
    
    hhero.player_allow_qty[i] = 1
    hhero.player_heroes[i] = {}
    cj.SetPlayerHandicapXP(hplayer.players[i], 0) 
    hplayer.set(hplayer.players[i], "index", i)
    hplayer.set(hplayer.players[i], "prevGold", 0)
    hplayer.set(hplayer.players[i], "prevLumber", 0)
    hplayer.set(hplayer.players[i], "totalGold", 0)
    hplayer.set(hplayer.players[i], "totalGoldCost", 0)
    hplayer.set(hplayer.players[i], "totalLumber", 0)
    hplayer.set(hplayer.players[i], "totalLumberCost", 0)
    hplayer.set(hplayer.players[i], "goldRatio", 100)
    hplayer.set(hplayer.players[i], "lumberRatio", 100)
    hplayer.set(hplayer.players[i], "expRatio", 100)
    hplayer.set(hplayer.players[i], "sellRatio", 50)
    hplayer.set(hplayer.players[i], "apm", 0)
    hplayer.set(hplayer.players[i], "damage", 0)
    hplayer.set(hplayer.players[i], "beDamage", 0)
    hplayer.set(hplayer.players[i], "kill", 0)
    if ((cj.GetPlayerController(hplayer.players[i]) == MAP_CONTROL_USER)
        and (cj.GetPlayerSlotState(hplayer.players[i]) == PLAYER_SLOT_STATE_PLAYING)) then
        
        hplayer.qty_current = hplayer.qty_current + 1
        
        hplayer.setIsAutoConvert(hplayer.players[i], true)
        hplayer.set(hplayer.players[i], "status", hplayer.player_status.gaming)
        hevent.onChat(
            hplayer.players[i], '+', false,
            hevent_default_actions.player.command
        )
        hevent.onChat(
            hplayer.players[i], '-', false,
            hevent_default_actions.player.command
        )
        
        hevent.pool(hplayer.players[i], hevent_default_actions.player.leave, function(tgr)
            cj.TriggerRegisterPlayerEvent(tgr, hplayer.players[i], EVENT_PLAYER_LEAVE)
        end)
        
        hevent.onDeSelection(hplayer.players[i], function(evtData)
            hplayer.set(evtData.triggerPlayer, "selection", nil)
        end)
        
        hevent.pool(hplayer.players[i], hevent_default_actions.player.selection, function(tgr)
            cj.TriggerRegisterPlayerUnitEvent(tgr, hplayer.players[i], EVENT_PLAYER_UNIT_SELECTED, nil)
        end)
        hevent.onSelection(hplayer.players[i], 1, function(evtData)
            hplayer.set(evtData.triggerPlayer, "selection", evtData.triggerUnit)
        end)
    else
        hplayer.set(hplayer.players[i], "status", hplayer.player_status.none)
    end
end
htime.setInterval(
    0.5,
    function()
        for agk, agu in ipairs(hRuntime.attributeGroup.life_back) do
            if (his.deleted(agu) == true) then
                table.remove(hRuntime.attributeGroup.life_back, agk)
            else
                if (his.alive(agu) and 100 > hunit.getCurLifePercent(agu)) then
                    local val = hattr.get(agu, "life_back") or 0
                    if (val ~= 0) then
                        hunit.addCurLife(agu, val * 0.5)
                    end
                end
            end
        end
        for agk, agu in ipairs(hRuntime.attributeGroup.mana_back) do
            if (his.deleted(agu) == true) then
                table.remove(hRuntime.attributeGroup.mana_back, agk)
            else
                if (his.alive(agu) and 100 > hunit.getCurManaPercent(agu)) then
                    local val = hattr.get(agu, "mana_back") or 0
                    if (val ~= 0) then
                        hunit.addCurMana(agu, val * 0.5)
                    end
                end
            end
        end
    end
)
htime.setInterval(
    1.5,
    function()
        for agk, agu in ipairs(hRuntime.attributeGroup.punish) do
            if (his.deleted(agu) == true) then
                table.remove(hRuntime.attributeGroup.punish, agk)
            elseif (his.alive(agu) == true and his.beDamaging(agu) == false) then
                local punish_current = hattr.get(agu, "punish_current")
                local punish = hattr.get(agu, "punish")
                if (punish_current < punish) then
                    local val = math.floor(0.015 * punish)
                    if (punish_current + val > punish) then
                        hattr.set(agu, 0, { punish_current = "=" .. punish })
                    else
                        hattr.set(agu, 0, { punish_current = "+" .. val })
                    end
                end
            end
        end
    end
)
hcamera.setModel("normal")
hplayer.qty_max = 1 
hplayer.convert_ratio = 1000000 
henemy.setName("怪物")
henemy.setColor(cj.ConvertPlayerColor(12)) 
henemy.setPlayer(hplayer.players[2])
if (HLUA_DEBUG == true) then
    henv.setFogStatus(false, false)
else
    henv.setFogStatus(true, true)
end
local startTrigger = cj.CreateTrigger()
cj.TriggerRegisterTimerEvent(startTrigger, 0.1, false)
cj.TriggerAddAction(startTrigger, function()
    cj.DisableTrigger(startTrigger)
    cj.DestroyTrigger(startTrigger)
    
    local uidMe = hslk.name2Value.unit["剑士"].UNIT_ID
    local uidEnemy = hslk.name2Value.unit["骑士"].UNIT_ID
    
    local me = hunit.create({
        whichPlayer = hplayer.players[1],
        unitId = uidMe,
        x = 0,
        y = 0,
    })
    hattr.set(me, 0, {
        attack_damage_type = "+fire",
        attack_speed = "+500",
        life = "+2000",
        life_back = "+100",
        attack_white = "+10000000",
        attack_effect = {
            add = {
                { attr = "knocking", odds = 10, percent = 30, effect = nil },
                { attr = "knocking", odds = 15, percent = 30, effect = nil },
                { attr = "knocking", odds = 20, percent = 30, effect = nil },
                { attr = "knocking", odds = 25, percent = 30, effect = nil },
                { attr = "knocking", odds = 30, percent = 30, effect = nil },
                { attr = "crack_fly", odds = 20, val = 20, during = 0.6, effect = nil, distance = 100, high = 500 }
            }
        }
    })
    local enemy = henemy.create({
        whichPlayer = hplayer.players[1],
        unitId = uidEnemy,
        x = 0,
        y = 0,
    })
    hattr.set(enemy, 0, {
        attack_white = "+150",
        life = "+5000000",
        life_back = "+100000",
        toughness = "+12000000",
        attack_effect = {
            add = {
                { attr = "swim", odds = 10, val = 10, during = 2, effect = nil },
                { attr = "lightning_chain", odds = 75, val = 30, effect = nil, qty = 1, reduce = 0.0 },
            }
        }
    })
    
    hevent.onDamage(me, function(evtData)
        haward.forUnitExp(evtData.triggerUnit, evtData.damage)
    end)
    hevent.onDamage(enemy, function(evtData)
        haward.forUnitExp(evtData.triggerUnit, evtData.damage)
    end)
    hevent.onBeAttack(me, function(evtData)
        print_mb(hunit.getName(evtData.triggerUnit), hunit.getName(evtData.attacker))
    end)
end)

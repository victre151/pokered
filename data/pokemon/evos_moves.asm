; Evos+moves data structure:
; - Evolution methods:
;    * db EVOLVE_LEVEL, level, species
;    * db EVOLVE_ITEM, used item, min level (1), species
;    * db EVOLVE_TRADE, min level (1), species
; - db 0 ; no more evolutions
; - Learnset (in increasing level order):
;    * db level, move
; - db 0 ; no more level-up moves

EvosMovesPointerTable:
	table_width 2
	dw RhydonEvosMoves
	dw KangaskhanEvosMoves
	dw NidoranMEvosMoves
	dw ClefairyEvosMoves
	dw SpearowEvosMoves
	dw VoltorbEvosMoves
	dw NidokingEvosMoves
	dw SlowbroEvosMoves
	dw IvysaurEvosMoves
	dw ExeggutorEvosMoves
	dw LickitungEvosMoves
	dw ExeggcuteEvosMoves
	dw GrimerEvosMoves
	dw GengarEvosMoves
	dw NidoranFEvosMoves
	dw NidoqueenEvosMoves
	dw CuboneEvosMoves
	dw RhyhornEvosMoves
	dw LaprasEvosMoves
	dw ArcanineEvosMoves
	dw MewEvosMoves
	dw GyaradosEvosMoves
	dw ShellderEvosMoves
	dw TentacoolEvosMoves
	dw GastlyEvosMoves
	dw ScytherEvosMoves
	dw StaryuEvosMoves
	dw BlastoiseEvosMoves
	dw PinsirEvosMoves
	dw TangelaEvosMoves
	dw MissingNo1FEvosMoves
	dw MissingNo20EvosMoves
	dw GrowlitheEvosMoves
	dw OnixEvosMoves
	dw FearowEvosMoves
	dw PidgeyEvosMoves
	dw SlowpokeEvosMoves
	dw KadabraEvosMoves
	dw GravelerEvosMoves
	dw ChanseyEvosMoves
	dw MachokeEvosMoves
	dw MrMimeEvosMoves
	dw HitmonleeEvosMoves
	dw HitmonchanEvosMoves
	dw ArbokEvosMoves
	dw ParasectEvosMoves
	dw PsyduckEvosMoves
	dw DrowzeeEvosMoves
	dw GolemEvosMoves
	dw MissingNo32EvosMoves
	dw MagmarEvosMoves
	dw MissingNo34EvosMoves
	dw ElectabuzzEvosMoves
	dw MagnetonEvosMoves
	dw KoffingEvosMoves
	dw MissingNo38EvosMoves
	dw MankeyEvosMoves
	dw SeelEvosMoves
	dw DiglettEvosMoves
	dw TaurosEvosMoves
	dw MissingNo3DEvosMoves
	dw MissingNo3EEvosMoves
	dw MissingNo3FEvosMoves
	dw FarfetchdEvosMoves
	dw VenonatEvosMoves
	dw DragoniteEvosMoves
	dw MissingNo43EvosMoves
	dw MissingNo44EvosMoves
	dw MissingNo45EvosMoves
	dw DoduoEvosMoves
	dw PoliwagEvosMoves
	dw JynxEvosMoves
	dw MoltresEvosMoves
	dw ArticunoEvosMoves
	dw ZapdosEvosMoves
	dw DittoEvosMoves
	dw MeowthEvosMoves
	dw KrabbyEvosMoves
	dw MissingNo4FEvosMoves
	dw MissingNo50EvosMoves
	dw MissingNo51EvosMoves
	dw VulpixEvosMoves
	dw NinetalesEvosMoves
	dw PikachuEvosMoves
	dw RaichuEvosMoves
	dw MissingNo56EvosMoves
	dw MissingNo57EvosMoves
	dw DratiniEvosMoves
	dw DragonairEvosMoves
	dw KabutoEvosMoves
	dw KabutopsEvosMoves
	dw HorseaEvosMoves
	dw SeadraEvosMoves
	dw MissingNo5EEvosMoves
	dw MissingNo5FEvosMoves
	dw SandshrewEvosMoves
	dw SandslashEvosMoves
	dw OmanyteEvosMoves
	dw OmastarEvosMoves
	dw JigglypuffEvosMoves
	dw WigglytuffEvosMoves
	dw EeveeEvosMoves
	dw FlareonEvosMoves
	dw JolteonEvosMoves
	dw VaporeonEvosMoves
	dw MachopEvosMoves
	dw ZubatEvosMoves
	dw EkansEvosMoves
	dw ParasEvosMoves
	dw PoliwhirlEvosMoves
	dw PoliwrathEvosMoves
	dw WeedleEvosMoves
	dw KakunaEvosMoves
	dw BeedrillEvosMoves
	dw MissingNo73EvosMoves
	dw DodrioEvosMoves
	dw PrimeapeEvosMoves
	dw DugtrioEvosMoves
	dw VenomothEvosMoves
	dw DewgongEvosMoves
	dw MissingNo79EvosMoves
	dw MissingNo7AEvosMoves
	dw CaterpieEvosMoves
	dw MetapodEvosMoves
	dw ButterfreeEvosMoves
	dw MachampEvosMoves
	dw MissingNo7FEvosMoves
	dw GolduckEvosMoves
	dw HypnoEvosMoves
	dw GolbatEvosMoves
	dw MewtwoEvosMoves
	dw SnorlaxEvosMoves
	dw MagikarpEvosMoves
	dw MissingNo86EvosMoves
	dw MissingNo87EvosMoves
	dw MukEvosMoves
	dw MissingNo8AEvosMoves
	dw KinglerEvosMoves
	dw CloysterEvosMoves
	dw MissingNo8CEvosMoves
	dw ElectrodeEvosMoves
	dw ClefableEvosMoves
	dw WeezingEvosMoves
	dw PersianEvosMoves
	dw MarowakEvosMoves
	dw MissingNo92EvosMoves
	dw HaunterEvosMoves
	dw AbraEvosMoves
	dw AlakazamEvosMoves
	dw PidgeottoEvosMoves
	dw PidgeotEvosMoves
	dw StarmieEvosMoves
	dw BulbasaurEvosMoves
	dw VenusaurEvosMoves
	dw TentacruelEvosMoves
	dw MissingNo9CEvosMoves
	dw GoldeenEvosMoves
	dw SeakingEvosMoves
	dw MissingNo9FEvosMoves
	dw MissingNoA0EvosMoves
	dw MissingNoA1EvosMoves
	dw MissingNoA2EvosMoves
	dw PonytaEvosMoves
	dw RapidashEvosMoves
	dw RattataEvosMoves
	dw RaticateEvosMoves
	dw NidorinoEvosMoves
	dw NidorinaEvosMoves
	dw GeodudeEvosMoves
	dw PorygonEvosMoves
	dw AerodactylEvosMoves
	dw MissingNoACEvosMoves
	dw MagnemiteEvosMoves
	dw MissingNoAEEvosMoves
	dw MissingNoAFEvosMoves
	dw CharmanderEvosMoves
	dw SquirtleEvosMoves
	dw CharmeleonEvosMoves
	dw WartortleEvosMoves
	dw CharizardEvosMoves
	dw MissingNoB5EvosMoves
	dw FossilKabutopsEvosMoves
	dw FossilAerodactylEvosMoves
	dw MonGhostEvosMoves
	dw OddishEvosMoves
	dw GloomEvosMoves
	dw VileplumeEvosMoves
	dw BellsproutEvosMoves
	dw WeepinbellEvosMoves
	dw VictreebelEvosMoves
	assert_table_length NUM_POKEMON_INDEXES

RhydonEvosMoves:
; Evolutions
	db 0
; Learnset
	db 9, ROCK_THROW
	db 11, HEADBUTT
	db 17, STOMP
	db 25, ROCK_SLIDE
	db 31, BODY_SLAM
	db 37, TAKE_DOWN
	db 43, FISSURE
	db 45, DOUBLE_EDGE
	db 48, EARTHQUAKE
	db 56, SKULL_BASH
	db 62, HORN_DRILL
	db 0

KangaskhanEvosMoves:
; Evolutions
	db 0
; Learnset
	db 9, TAIL_WHIP
	db 11, HEADBUTT
	db 13, BITE
	db 15, SEISMIC_TOSS
	db 22, RAGE
	db 24, TAKE_DOWN
	db 26, ROCK_SLIDE
	db 29, MEGA_PUNCH
	db 31, BODY_SLAM
	db 33, DIZZY_PUNCH
	db 35, SUBMISSION
	db 37, SKULL_BASH
	db 43, FISSURE
	db 48, EARTHQUAKE
	db 0

NidoranMEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 16, NIDORINO
	db 0
; Learnset
	db 7, FOCUS_ENERGY
	db 9, DOUBLE_KICK
	db 11, HEADBUTT
	db 13, POISON_STING
	db 15, SLUDGE
	db 17, SCREECH
	db 19, FURY_ATTACK
	db 21, HORN_ATTACK
	db 23, BITE
	db 25, TAKE_DOWN
	db 28, BODY_SLAM
	db 36, SKULL_BASH
	db 38, DOUBLE_EDGE
	db 40, TOXIC
	db 45, HORN_DRILL
	db 0

ClefairyEvosMoves:
; Evolutions
	db EVOLVE_ITEM, MOON_STONE, 1, CLEFABLE
	db 0
; Learnset
	db 7, SING
	db 10, DOUBLESLAP
	db 13, DEFENSE_CURL
	db 15, CONFUSION
	db 19, DOUBLE_TEAM
	db 25, MINIMIZE
	db 33, REFLECT
	db 40, PSYCHIC_M
	db 40, BODY_SLAM
	db 47, TAKE_DOWN
	db 48, LIGHT_SCREEN
	db 0

SpearowEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 20, FEAROW
	db 0
; Learnset
	db 4, LEER
	db 7, QUICK_ATTACK
	db 11, FURY_ATTACK
	db 19, DOUBLE_TEAM 
	db 21, GUST
	db 23, TAKE_DOWN
	db 25, AGILITY
	db 27, SCREECH
	db 29, WING_ATTACK
	db 31, FOCUS_ENERGY
	db 33, RAZOR_WIND
	db 36, DRILL_PECK
	db 0

VoltorbEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 30, ELECTRODE
	db 0
; Learnset
	db 4, SONICBOOM
	db 13, SCREECH
	db 19, DOUBLE_TEAM
	db 19, THUNDERSHOCK
	db 20, SWIFT
	db 22, THUNDER_WAVE
	db 24, TAKE_DOWN
	db 29, LIGHT_SCREEN
	db 43, THUNDERBOLT
	db 50, THUNDER
	db 0

NidokingEvosMoves:
; Evolutions
	db 0
; Learnset
	db 11, HEADBUTT
	db 15, SLUDGE
	db 17, SCREECH
	db 20, FURY_ATTACK
	db 23, HORN_ATTACK
	db 25, BITE
	db 27, TAKE_DOWN
	db 29, BODY_SLAM
	db 33, ROCK_SLIDE
	db 35, THRASH
	db 38, DOUBLE_EDGE
	db 40, SKULL_BASH
	db 50, TOXIC
	db 58, HORN_DRILL
	db 45, EARTHQUAKE
	db 0

SlowbroEvosMoves:
; Evolutions
	db 0
; Learnset
	db 7, BUBBLE
	db 9, WATER_GUN
	db 14, CONFUSION
	db 17, DOUBLE_TEAM
	db 19, DISABLE
	db 20, BUBBLEBEAM
	db 23, HEADBUTT
	db 28, TAKE_DOWN
	db 34, BODY_SLAM
	db 36, LIGHT_SCREEN
	db 38, DOUBLE_EDGE
	db 41, AMNESIA
	db 49, PSYCHIC_M
	db 56, SKULL_BASH
	db 0

IvysaurEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 34, VENUSAUR
	db 0
; Learnset
	db 5, WRAP
	db 9, VINE_WHIP
	db 12, HEADBUTT
	db 14, POISONPOWDER
	db 14, SLEEP_POWDER
	db 14, STUN_SPORE
	db 15, TAKE_DOWN
	db 20, RAZOR_LEAF
	db 26, MEGA_DRAIN
	db 28, GROWTH
	db 30, BODY_SLAM
	db 31, DOUBLE_EDGE
	db 44, SOLARBEAM
	db 50, SKULL_BASH
	db 59, PETAL_DANCE
	db 0


ExeggutorEvosMoves:
; Evolutions
	db 0
; Learnset
	db 7, REFLECT
	db 11, LEECH_SEED
	db 17, STOMP
	db 19, STUN_SPORE
	db 21, POISONPOWDER
	db 23, SLEEP_POWDER
	db 25, MEGA_DRAIN
	db 27, CONFUSION
	db 29, EGG_BOMB
	db 31, LIGHT_SCREEN
	db 33, BODY_SLAM
	db 35, PSYCHIC_M
	db 39, DOUBLE_EDGE
	db 41, TOXIC
	db 43, SOLARBEAM
	db 0
LickitungEvosMoves:
; Evolutions
	db 0
; Learnset
	db 5, SUPERSONIC
	db 7, VINE_WHIP
	db 9, DEFENSE_CURL
	db 17, WRAP
	db 21, STOMP
	db 23, TAKE_DOWN
	db 25, DISABLE
	db 33, BODY_SLAM
	db 35, ROCK_SLIDE
	db 39, DOUBLE_EDGE
	db 41, EARTHQUAKE
	db 49, SCREECH
	db 0

ExeggcuteEvosMoves:
; Evolutions
	db EVOLVE_ITEM, LEAF_STONE, 1, EXEGGUTOR
	db 0
; Learnset
	db 7, REFLECT
	db 11, LEECH_SEED
	db 19, STUN_SPORE
	db 21, POISONPOWDER
	db 23, SLEEP_POWDER
	db 25, MEGA_DRAIN
	db 27, CONFUSION
	db 29, EGG_BOMB
	db 31, LIGHT_SCREEN
	db 33, BODY_SLAM
	db 35, PSYCHIC_M
	db 39, DOUBLE_EDGE
	db 41, TOXIC
	db 43, SOLARBEAM
	db 0

GrimerEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 38, MUK
	db 0
; Learnset
	db 4, HARDEN
	db 6, LICK
	db 12, DISABLE
	db 15, SLUDGE
	db 28, BODY_SLAM
	db 21, MINIMIZE
	db 34, ROCK_SLIDE
	db 37, SCREECH
	db 41, EARTHQUAKE
	db 43, ACID_ARMOR
	db 45, FISSURE
	db 47, TOXIC
	db 0

GengarEvosMoves:
; Evolutions
	db 0
; Learnset
	db 4, SMOG
	db 6, POISON_GAS
	db 13, ACID
	db 15, NIGHT_SHADE
	db 17, SLUDGE
	db 19, CONFUSE_RAY
	db 36, ACID_ARMOR
	db 39, DREAM_EATER
	db 41, TOXIC
	db 43, ICE_BEAM
	db 45, ICE_PUNCH
	db 0

NidoranFEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 16, NIDORINA
	db 0
; Learnset
	db 5, TAIL_WHIP
	db 7, FOCUS_ENERGY
	db 9, DOUBLE_KICK
	db 11, HEADBUTT
	db 13, POISON_STING
	db 15, SLUDGE
	db 17, SCREECH
	db 19, FURY_SWIPES
	db 21, BITE
	db 23, TAKE_DOWN
	db 28, BODY_SLAM
	db 36, SKULL_BASH
	db 38, DOUBLE_EDGE
	db 40, TOXIC
	db 0

NidoqueenEvosMoves:
; Evolutions
	db 0
; Learnset
	db 7, FOCUS_ENERGY
	db 11, HEADBUTT
	db 15, SLUDGE
	db 17, SCREECH
	db 20, FURY_SWIPES
	db 22, ROCK_SLIDE
	db 23, BITE
	db 25, TAKE_DOWN
	db 35, BODY_SLAM
	db 40, DOUBLE_EDGE
	db 45, EARTHQUAKE
	db 50, TOXIC
	db 56, SKULL_BASH
	db 0

CuboneEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 28, MAROWAK
	db 0
; Learnset
	db 3, TAIL_WHIP
	db 5, LICK
	db 7, BONE_CLUB
	db 9, DOUBLE_KICK
	db 11, HEADBUTT
	db 13, LEER
	db 15, NIGHT_SHADE
	db 17, FOCUS_ENERGY
	db 19, TAKE_DOWN
	db 21, BONEMERANG
	db 23, RAGE
	db 25, CONFUSE_RAY
	db 28, BODY_SLAM
	db 31, THRASH
	db 33, ROCK_SLIDE
	db 35, MEGA_PUNCH
	db 39, SWORDS_DANCE
	db 41, EARTHQUAKE
	db 43, DOUBLE_EDGE
	db 45, DIG
	db 47, FISSURE
	db 49, SKULL_BASH
	db 53, MEGA_KICK
	db 0

RhyhornEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 42, RHYDON
	db 0
; Learnset
	db 5, FURY_ATTACK
	db 9, ROCK_THROW
	db 11, HEADBUTT
	db 17, STOMP
	db 25, ROCK_SLIDE
	db 31, BODY_SLAM
	db 37, TAKE_DOWN
	db 43, FISSURE
	db 45, EARTHQUAKE
	db 47, DOUBLE_EDGE
	db 53, HORN_DRILL
	db 56, SKULL_BASH
	db 0

LaprasEvosMoves:
; Evolutions
	db 0
; Learnset
	db 3, MIST
	db 5, BUBBLE
	db 7, CONFUSE_RAY
	db 12, HEADBUTT
	db 18, DRAGON_RAGE
	db 20, BODY_SLAM
	db 22, BUBBLEBEAM
	db 30, AURORA_BEAM
	db 32, ICE_BEAM
	db 37, TAKE_DOWN
	db 43, DOUBLE_EDGE
	db 47, HYDRO_PUMP
	db 56, SKULL_BASH
	db 60, BLIZZARD
	db 0

ArcanineEvosMoves:
; Evolutions
	db 0
; Learnset
	db 6, EMBER
	db 8, LEER
	db 12, HEADBUTT
	db 16, SWIFT
	db 18, DRAGON_RAGE
	db 21, DOUBLE_TEAM
	db 23, TAKE_DOWN
	db 25, FIRE_SPIN
	db 30, AGILITY
	db 34, FLAMETHROWER
	db 36, BODY_SLAM
	db 40, DOUBLE_EDGE
	db 42, THRASH
	db 46, FIRE_BLAST
	db 50, SKULL_BASH
	db 0

MewEvosMoves:
; Evolutions
	db 0
; Learnset
	db 8, SWIFT
	db 10, MEGA_PUNCH
	db 22, DOUBLE_TEAM
	db 25, BODY_SLAM
	db 28, LIGHT_SCREEN
	db 30, TAKE_DOWN
	db 32, PSYCHIC_M
	db 40, BARRIER
	db 48, DOUBLE_EDGE
	db 50, RECOVER
	db 60, AMNESIA
	db 75, HYPER_BEAM
	db 0

GyaradosEvosMoves:
; Evolutions
	db 0
; Learnset
	db 7, BUBBLE
	db 9, WATER_GUN
	db 11, BITE
	db 13, HEADBUTT
	db 20, BUBBLEBEAM
	db 29, TAKE_DOWN
	db 31, BODY_SLAM
	db 36, DRAGON_RAGE
	db 38, SCREECH
	db 40, THRASH
	db 42, HYDRO_PUMP
	db 44, DOUBLE_EDGE
	db 46, SKULL_BASH
	db 54, HYPER_BEAM
	db 0

ShellderEvosMoves:
; Evolutions
	db EVOLVE_ITEM, WATER_STONE, 1, CLOYSTER
	db 0
; Learnset
	db 4, WITHDRAW
	db 6, BUBBLE
	db 8, SUPERSONIC
	db 13, SPIKE_CANNON
	db 19, LEER
	db 21, TAKE_DOWN
	db 23, REST
	db 25, CLAMP
	db 27, BUBBLEBEAM
	db 31, BODY_SLAM
	db 35, SCREECH
	db 37, AURORA_BEAM
	db 40, DOUBLE_EDGE
	db 52, ICE_BEAM
	db 60, BLIZZARD
	db 62, HYDRO_PUMP
	db 0

TentacoolEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 30, TENTACRUEL
	db 0
; Learnset
	db 3, SUPERSONIC
	db 5, BUBBLE
	db 7, WATER_GUN
	db 9, CONSTRICT
	db 11, ACID
	db 13, VINE_WHIP
	db 16, SLUDGE
	db 19, WRAP
	db 21, MEGA_DRAIN
	db 23, TAKE_DOWN
	db 25, BUBBLEBEAM
	db 28, BARRIER
	db 31, BODY_SLAM
	db 33, LEECH_LIFE
	db 37, SCREECH
	db 40, DOUBLE_EDGE
	db 46, HYDRO_PUMP
	db 0

GastlyEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 25, HAUNTER
	db 0
; Learnset
	db 4, SMOG
	db 6, POISON_GAS
	db 13, ACID
	db 15, NIGHT_SHADE
	db 17, SLUDGE
	db 19, CONFUSE_RAY
	db 33, DREAM_EATER
	db 36, ACID_ARMOR
	db 40, TOXIC
	db 43, ICE_BEAM
	db 45, ICE_PUNCH
	db 0

ScytherEvosMoves:
; Evolutions
	db 0
; Learnset
	db 3, LOW_KICK
	db 5, FOCUS_ENERGY
	db 7, DOUBLE_KICK
	db 9, KARATE_CHOP
	db 11, QUICK_ATTACK
	db 13, HEADBUTT
	db 15, TWINEEDLE
	db 17, SEISMIC_TOSS
	db 19, AGILITY
	db 21, WING_ATTACK
	db 23, TAKE_DOWN
	db 27, PIN_MISSILE
	db 29, SLASH
	db 31, BODY_SLAM
	db 33, RAZOR_WIND
	db 35, SUBMISSION
	db 37, DOUBLE_TEAM
	db 39, ROCK_SLIDE
	db 42, DOUBLE_EDGE
	db 55, SKULL_BASH
	db 57, SWORDS_DANCE
	db 0

StaryuEvosMoves:
; Evolutions
	db EVOLVE_ITEM, WATER_STONE, 1, STARMIE
	db 0
; Learnset
	db 4, WATER_GUN
	db 6, BUBBLE
	db 10, RECOVER
	db 16, SWIFT
	db 18, BUBBLEBEAM
	db 23, TAKE_DOWN
	db 31, MINIMIZE
	db 33, AURORA_BEAM
	db 40, CONFUSE_RAY
	db 42, DOUBLE_EDGE
	db 44, PSYCHIC_M
	db 46, LIGHT_SCREEN
	db 53, HYDRO_PUMP
	db 0

BlastoiseEvosMoves:
; Evolutions
	db 0
; Learnset
	db 12, HEADBUTT
	db 14, BUBBLE
	db 16, BUBBLEBEAM
	db 18, BITE
	db 28, TAKE_DOWN
	db 30, BODY_SLAM
	db 33, AURORA_BEAM
	db 35, ROCK_SLIDE
	db 40, SKULL_BASH
	db 42, ICE_BEAM
	db 44, DOUBLE_EDGE
	db 47, EARTHQUAKE
	db 57, BLIZZARD
	db 60, HYDRO_PUMP
	db 0

PinsirEvosMoves:
; Evolutions
	db 0
; Learnset
	db 2, BIND
	db 5, FOCUS_ENERGY
	db 7, DOUBLE_KICK
	db 9, KARATE_CHOP
	db 11, QUICK_ATTACK
	db 13, HEADBUTT
	db 15, FURY_ATTACK
	db 17, SEISMIC_TOSS
	db 19, TWINEEDLE
	db 21, RAGE
	db 23, HORN_ATTACK
	db 27, PIN_MISSILE
	db 25, TAKE_DOWN
	db 29, DOUBLE_TEAM
	db 31, SLASH
	db 33, BODY_SLAM
	db 35, SUBMISSION
	db 39, ROCK_SLIDE
	db 41, SWORDS_DANCE
	db 43, DOUBLE_EDGE
	db 45, THRASH
	db 47, HORN_DRILL
	db 50, GUILLOTINE
	db 56, SKULL_BASH
	db 0
	
TangelaEvosMoves:
; Evolutions
	db 0
; Learnset
	db 4, SLEEP_POWDER
	db 7, VINE_WHIP
	db 9, LEECH_SEED
	db 11, ABSORB
	db 14, POISONPOWDER
	db 17, BIND
	db 20, GROWTH
	db 23, MEGA_DRAIN
	db 25, TAKE_DOWN
	db 27, BODY_SLAM
	db 29, RAZOR_LEAF
	db 31, STUN_SPORE
	db 40, DOUBLE_EDGE
	db 44, SOLARBEAM
	db 51, PETAL_DANCE
	db 0

MissingNo1FEvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

MissingNo20EvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

GrowlitheEvosMoves:
; Evolutions
	db EVOLVE_ITEM, FIRE_STONE, 1, ARCANINE
	db 0
; Learnset
	db 6, EMBER
	db 8, LEER
	db 12, HEADBUTT
	db 16, SWIFT
	db 18, DRAGON_RAGE
	db 21, DOUBLE_TEAM
	db 23, TAKE_DOWN
	db 25, FIRE_SPIN
	db 28, BODY_SLAM
	db 30, AGILITY
	db 34, FLAMETHROWER
	db 40, DOUBLE_EDGE
	db 42, THRASH
	db 46, FIRE_BLAST
	db 50, SKULL_BASH
	db 0

OnixEvosMoves:
; Evolutions
	db 0
; Learnset
	db 7, ROCK_THROW
	db 11, HEADBUTT
	db 13, RAGE
	db 18, DRAGON_RAGE
	db 21, DOUBLE_TEAM
	db 23, TAKE_DOWN
	db 26, BODY_SLAM
	db 28, SLAM
	db 31, SCREECH
	db 34, ROCK_SLIDE
	db 39, EARTHQUAKE
	db 43, DIG
	db 45, FISSURE
	db 49, DOUBLE_EDGE
	db 51, SKULL_BASH
	db 0

FearowEvosMoves:
; Evolutions
	db 0
; Learnset
	db 7, QUICK_ATTACK
	db 11, FURY_ATTACK
	db 20, DOUBLE_TEAM 
	db 22, GUST
	db 24, TAKE_DOWN
	db 26, AGILITY
	db 28, SCREECH
	db 30, WING_ATTACK
	db 32, FOCUS_ENERGY
	db 35, RAZOR_WIND
	db 41, DRILL_PECK
	db 0

PidgeyEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 18, PIDGEOTTO
	db 0
; Learnset
	db 5, SAND_ATTACK
	db 9, GUST
	db 13, QUICK_ATTACK
	db 24, TAKE_DOWN
	db 29, AGILITY
	db 30, DOUBLE_TEAM
	db 33, WING_ATTACK
	db 35, RAZOR_WIND
	db 37, DRILL_PECK
	db 40, DOUBLE_EDGE
	db 0

SlowpokeEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 37, SLOWBRO
	db 0
; Learnset
	db 5, GROWL
	db 7, BUBBLE
	db 9, WATER_GUN
	db 14, CONFUSION
	db 17, DOUBLE_TEAM
	db 19, DISABLE
	db 20, BUBBLEBEAM
	db 23, HEADBUTT
	db 28, TAKE_DOWN
	db 34, BODY_SLAM
	db 36, LIGHT_SCREEN
	db 38, DOUBLE_EDGE
	db 41, AMNESIA
	db 45, PSYCHIC_M
	db 50, SKULL_BASH
	db 0

KadabraEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 45, ALAKAZAM
	db 0
; Learnset
	db 18, DISABLE
	db 21, PSYBEAM
	db 23, REFLECT
	db 26, TRI_ATTACK
	db 28, TAKE_DOWN
	db 30, RECOVER
	db 32, LIGHT_SCREEN
	db 34, BODY_SLAM
	db 36, DOUBLE_EDGE
	db 38, PSYCHIC_M
	db 0

GravelerEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 45, GOLEM
	db 0
; Learnset
	db 12, HEADBUTT
	db 16, ROCK_THROW
	db 26, HARDEN
	db 30, TAKE_DOWN
	db 32, BODY_SLAM
	db 40, EARTHQUAKE
	db 46, FISSURE
	db 50, DOUBLE_EDGE
	db 54, SKULL_BASH
	db 56, ROCK_SLIDE
	db 0

ChanseyEvosMoves:
; Evolutions
	db 0
; Learnset
	db 5, TAIL_WHIP
	db 12, DOUBLESLAP
	db 16, SOFTBOILED
	db 23, MINIMIZE
	db 27, TAKE_DOWN
	db 31, SING
	db 42, EGG_BOMB
	db 46, LIGHT_SCREEN
	db 54, DOUBLE_EDGE
	db 0

MachokeEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 45, MACHAMP
	db 0
; Learnset
	db 15, SEISMIC_TOSS
	db 25, TAKE_DOWN
	db 28, BODY_SLAM
	db 30, STRENGTH
	db 32, DOUBLE_EDGE
	db 36, MEGA_PUNCH
	db 38, SUBMISSION
	db 42, EARTHQUAKE
	db 44, FISSURE
	db 52, MEGA_KICK
	db 54, ROCK_SLIDE
	db 0

MrMimeEvosMoves:
; Evolutions
	db 0
; Learnset
	db 8, MEDITATE
	db 11, DOUBLESLAP
	db 15, CONFUSION
	db 17, DOUBLE_TEAM
	db 22, LIGHT_SCREEN
	db 22, REFLECT
	db 25, PSYBEAM
	db 27, TAKE_DOWN
	db 29, BODY_SLAM
	db 31, SUBSTITUTE
	db 33, DOUBLE_EDGE
	db 39, PSYCHIC_M
	db 0

HitmonleeEvosMoves:
; Evolutions
	db 0
; Learnset
	db 5, MEDITATE
	db 7, AGILITY
	db 9, ROLLING_KICK
	db 11, SEISMIC_TOSS
	db 13, JUMP_KICK
	db 21, FOCUS_ENERGY
	db 23, TAKE_DOWN
	db 26, BODY_SLAM
	db 29, HI_JUMP_KICK
	db 33, SUBMISSION
	db 35, ROCK_SLIDE
	db 49, DOUBLE_EDGE
	db 53, MEGA_KICK
	db 61, COUNTER
	db 0

HitmonchanEvosMoves:
; Evolutions
	db 0
; Learnset
	db 5, MEDITATE
	db 7, AGILITY
	db 11, SEISMIC_TOSS
	db 21, FOCUS_ENERGY
	db 23, TAKE_DOWN
	db 26, BODY_SLAM
	db 32, SUBMISSION
	db 34, ROCK_SLIDE
	db 36, FIRE_PUNCH
	db 36, ICE_PUNCH
	db 36, THUNDERPUNCH
	db 46, MEGA_PUNCH
	db 49, DOUBLE_EDGE
	db 61, COUNTER
	db 0

ArbokEvosMoves:
; Evolutions
	db 0
; Learnset
	db 12, GLARE
	db 14, SLUDGE
	db 16, SCREECH
	db 18, DOUBLE_TEAM
	db 20, ACID
	db 22, ROCK_SLIDE
	db 24, TAKE_DOWN
	db 28, BODY_SLAM
	db 40, TOXIC
	db 45, EARTHQUAKE
	db 50, SKULL_BASH
	db 52, HAZE
	db 0

ParasectEvosMoves:
; Evolutions
	db 0
; Learnset
	db 9, LEECH_SEED
	db 11, ABSORB
	db 13, SLUDGE
	db 15, NIGHT_SHADE
	db 17, TWINEEDLE
	db 19, PSYBEAM
	db 21, MEGA_DRAIN
	db 23, SPORE
	db 25, TAKE_DOWN
	db 27, PIN_MISSILE
	db 29, CONFUSE_RAY
	db 31, SLASH
	db 33, BODY_SLAM
	db 35, LEECH_LIFE
	db 37, LIGHT_SCREEN
	db 39, GROWTH
	db 50, TOXIC
	db 0


PsyduckEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 33, GOLDUCK
	db 0
; Learnset
	db 3, TAIL_WHIP
	db 5, BUBBLE
	db 7, WATER_GUN
	db 10, CONFUSION
	db 12, HEADBUTT
	db 14, FURY_SWIPES
	db 16, SWIFT
	db 18, DISABLE
	db 20, BUBBLEBEAM
	db 22, SCREECH
	db 24, PSYBEAM
	db 26, TAKE_DOWN
	db 28, BODY_SLAM
	db 30, LIGHT_SCREEN
	db 33, DOUBLE_EDGE
	db 35, SKULL_BASH
	db 37, AMNESIA
	db 40, HYDRO_PUMP
	db 43, PSYCHIC_M
	db 0

DrowzeeEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 26, HYPNO
	db 0
; Learnset
	db 3, SMOG
	db 5, DISABLE
	db 7, LICK
	db 9, CONFUSION
	db 13, HEADBUTT
	db 15, BARRIER
	db 17, POISON_GAS
	db 19, CONFUSE_RAY
	db 21, MEDITATE
	db 23, NIGHT_SHADE
	db 25, PSYBEAM
	db 27, ICE_PUNCH
	db 29, AMNESIA
	db 31, LIGHT_SCREEN
	db 33, DREAM_EATER
	db 39, ICE_BEAM
	db 49, PSYCHIC_M
	db 51, TOXIC
	db 0

GolemEvosMoves:
; Evolutions
	db 0
; Learnset
	db 12, HEADBUTT
	db 16, ROCK_THROW
	db 26, HARDEN
	db 30, TAKE_DOWN
	db 32, BODY_SLAM
	db 40, EARTHQUAKE
	db 46, FISSURE
	db 50, DOUBLE_EDGE
	db 54, SKULL_BASH
	db 56, ROCK_SLIDE
	db 0

MissingNo32EvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

MagmarEvosMoves:
; Evolutions
	db 0
; Learnset
	db 5, MEDITATE
	db 7, SMOKESCREEN
	db 9, HEADBUTT
	db 11, QUICK_ATTACK
	db 13, SWIFT
	db 17, FIRE_SPIN
	db 21, DOUBLE_TEAM
	db 25, CONFUSE_RAY
	db 27, TAKE_DOWN
	db 29, FIRE_PUNCH
	db 31, DOUBLE_EDGE
	db 33, BODY_SLAM
	db 42, SCREECH
	db 49, FLAMETHROWER
	db 55, FIRE_BLAST
	db 58, SKULL_BASH
	db 0

MissingNo34EvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

ElectabuzzEvosMoves:
; Evolutions
	db 0
; Learnset
	db 8, LOW_KICK
	db 9, HEADBUTT
	db 11, QUICK_ATTACK
	db 13, SWIFT
	db 15, SEISMIC_TOSS
	db 21, DOUBLE_TEAM
	db 25, LIGHT_SCREEN
	db 27, TAKE_DOWN
	db 29, THUNDERPUNCH
	db 31, DOUBLE_EDGE
	db 33, BODY_SLAM
	db 35, SUBMISSION
	db 37, MEGA_PUNCH
	db 42, SCREECH
	db 49, THUNDERBOLT
	db 53, MEGA_KICK
	db 55, THUNDER
	db 58, SKULL_BASH
	db 61, COUNTER
	db 0

MagnetonEvosMoves:
; Evolutions
	db 0
; Learnset
	db 11, THUNDER_WAVE
	db 13, LIGHT_SCREEN
	db 15, REFLECT
	db 17, SONICBOOM
	db 19, SWIFT
	db 21, DOUBLE_TEAM
	db 25, TAKE_DOWN
	db 28, SUPERSONIC
	db 30, TRI_ATTACK
	db 40, SCREECH
	db 42, DOUBLE_EDGE
	db 45, THUNDERBOLT
	db 56, THUNDER
	db 0

KoffingEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 35, WEEZING
	db 0
; Learnset
	db 3, SMOG
	db 5, EMBER
	db 7, SMOKESCREEN
	db 18, SLUDGE
	db 21, PSYBEAM
	db 25, FIRE_SPIN
	db 27, TAKE_DOWN
	db 29, HAZE
	db 31, BODY_SLAM
	db 39, FLAMETHROWER
	db 40, TOXIC
	db 46, FIRE_BLAST
	db 0

MissingNo38EvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

MankeyEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 28, PRIMEAPE
	db 0
; Learnset
	db 5, FURY_SWIPES
	db 8, KARATE_CHOP
	db 12, HEADBUTT
	db 15, SEISMIC_TOSS
	db 24, ROCK_SLIDE
	db 26, TAKE_DOWN
	db 28, BODY_SLAM
	db 31, SUBMISSION
	db 33, THRASH
	db 35, MEGA_PUNCH
	db 37, DOUBLE_EDGE
	db 40, SCREECH
	db 50, SKULL_BASH
	db 53, MEGA_KICK
	db 0

SeelEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 34, DEWGONG
	db 0
; Learnset
	db 3, GROWL
	db 5, BUBBLE
	db 7, WATER_GUN
	db 9, LICK
	db 19, BUBBLEBEAM
	db 21, REST
	db 27, AURORA_BEAM
	db 29, BODY_SLAM
	db 37, TAKE_DOWN
	db 39, DOUBLE_EDGE
	db 45, HORN_DRILL
	db 47, ICE_BEAM
	db 50, SKULL_BASH
	db 60, BLIZZARD
	db 0

DiglettEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 26, DUGTRIO
	db 0
; Learnset
	db 4, GROWL
	db 14, FURY_SWIPES
	db 22, DOUBLE_TEAM
	db 24, ROCK_SLIDE
	db 26, TAKE_DOWN
	db 28, BODY_SLAM
	db 31, DIG
	db 33, DOUBLE_EDGE
	db 35, SLASH
	db 39, EARTHQUAKE
	db 43, FISSURE
	db 0

TaurosEvosMoves:
; Evolutions
	db 0
; Learnset
	db 3, TAIL_WHIP
	db 5, RAGE
	db 7, LEER
	db 9, HORN_ATTACK
	db 13, HEADBUTT
	db 20, STOMP
	db 22, DOUBLE_TEAM
	db 28, BODY_SLAM
	db 32, DOUBLE_EDGE
	db 34, ROCK_SLIDE
	db 39, EARTHQUAKE
	db 41, TAKE_DOWN
	db 43, FISSURE
	db 45, HORN_DRILL
	db 50, THRASH
	db 56, SKULL_BASH
	db 0

MissingNo3DEvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

MissingNo3EEvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

MissingNo3FEvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

FarfetchdEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, LOW_KICK
	db 3, VINE_WHIP
	db 5, FURY_ATTACK
	db 7, KARATE_CHOP
	db 9, QUICK_ATTACK
	db 11, DOUBLE_KICK
	db 13, HEADBUTT
	db 15, SUBMISSION
	db 17, SWIFT
	db 19, DOUBLE_TEAM
	db 21, SLASH
	db 23, BODY_SLAM
	db 25, TAKE_DOWN
	db 27, SWORDS_DANCE
	db 29, AGILITY
	db 31, SUBMISSION
	db 33, DOUBLE_EDGE
	db 35, RAZOR_WIND
	db 40, SKULL_BASH
	db 0

VenonatEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 31, VENOMOTH
	db 0
; Learnset
	db 5, ABSORB
	db 7, SUPERSONIC
	db 11, CONFUSION
	db 17, PSYBEAM
	db 19, REFLECT
	db 21, MEGA_DRAIN
	db 23, STUN_SPORE
	db 25, TAKE_DOWN
	db 27, AGILITY
	db 29, SLEEP_POWDER
	db 31, DOUBLE_EDGE
	db 35, LEECH_LIFE
	db 47, PSYCHIC_M
	db 0

DragoniteEvosMoves:
; Evolutions
	db 0
; Learnset
	db 3, BUBBLE
	db 5, THUNDER_WAVE
	db 9, WATER_GUN
	db 11, HEADBUTT
	db 15, DRAGON_RAGE
	db 17, RAGE
	db 21, SLAM
	db 23, BUBBLEBEAM
	db 25, TAKE_DOWN
	db 27, AGILITY
	db 30, BODY_SLAM
	db 34, ROCK_SLIDE
	db 42, DOUBLE_EDGE
	db 44, SKULL_BASH
	db 55, WING_ATTACK
	db 65, HYDRO_PUMP
	db 75, HYPER_BEAM
	db 0

MissingNo43EvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

MissingNo44EvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

MissingNo45EvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

DoduoEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 31, DODRIO
	db 0
; Learnset
	db 3, SAND_ATTACK
	db 5, QUICK_ATTACK
	db 8, RAGE
	db 12, FURY_ATTACK
	db 15, SWIFT
	db 18, DOUBLE_TEAM
	db 21, BODY_SLAM
	db 23, TAKE_DOWN
	db 26, AGILITY
	db 36, SWORDS_DANCE
	db 38, JUMP_KICK
	db 40, TRI_ATTACK
	db 42, DRILL_PECK
	db 44, EARTHQUAKE
	db 46, FISSURE
	db 50, THRASH
	db 56, SKULL_BASH
	db 0

PoliwagEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 25, POLIWHIRL
	db 0
; Learnset
	db 5, WATER_GUN
	db 8, HYPNOSIS
	db 11, BUBBLE
	db 15, DOUBLESLAP
	db 21, BODY_SLAM
	db 23, TAKE_DOWN
	db 25, BUBBLEBEAM
	db 29, AMNESIA
	db 32, DOUBLE_EDGE
	db 38, HYDRO_PUMP
	db 0

JynxEvosMoves:
; Evolutions
	db 0
; Learnset
	db 8, LOVELY_KISS
	db 11, MEDITATE
	db 13, CONFUSION
	db 15, DOUBLESLAP
	db 17, REFLECT
	db 19, ICE_PUNCH
	db 21, CONFUSE_RAY
	db 23, TAKE_DOWN
	db 32, AURORA_BEAM
	db 34, DOUBLE_EDGE
	db 36, LIGHT_SCREEN
	db 40, THRASH
	db 42, ICE_BEAM
	db 44, BODY_SLAM
	db 46, PSYCHIC_M
	db 60, BLIZZARD
	db 0

MoltresEvosMoves:
; Evolutions
	db 0
; Learnset
	db 8, FIRE_SPIN
	db 12, RAGE
	db 14, QUICK_ATTACK
	db 16, AGILITY
	db 24, TAKE_DOWN
	db 30, DOUBLE_TEAM
	db 34, WING_ATTACK
	db 36, FLAMETHROWER
	db 38, RAZOR_WIND
	db 40, DRILL_PECK
	db 42, DOUBLE_EDGE
	db 50, REFLECT
	db 52, HYPER_BEAM
	db 55, AGILITY
	db 76, FIRE_BLAST
	db 78, SKY_ATTACK
	db 0

ArticunoEvosMoves:
; Evolutions
	db 0
; Learnset
	db 8, MIST
	db 12, RAGE
	db 14, QUICK_ATTACK
	db 24, TAKE_DOWN
	db 30, DOUBLE_TEAM
	db 32, AURORA_BEAM
	db 34, WING_ATTACK
	db 36, AGILITY
	db 38, RAZOR_WIND
	db 40, DRILL_PECK
	db 42, DOUBLE_EDGE
	db 50, REFLECT
	db 52, HYPER_BEAM
	db 71, ICE_BEAM
	db 76, BLIZZARD
	db 78, SKY_ATTACK
	db 0

ZapdosEvosMoves:
; Evolutions
	db 0
; Learnset
	db 8, THUNDER_WAVE
	db 12, RAGE
	db 14, QUICK_ATTACK
	db 24, TAKE_DOWN
	db 30, DOUBLE_TEAM
	db 34, WING_ATTACK
	db 38, RAZOR_WIND
	db 42, DOUBLE_EDGE
	db 44, AGILITY
	db 46, THUNDERBOLT
	db 52, HYPER_BEAM
	db 60, LIGHT_SCREEN
	db 71, DRILL_PECK
	db 76, THUNDER
	db 78, SKY_ATTACK
	db 0

DittoEvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

MeowthEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 28, PERSIAN
	db 0
; Learnset
	db 3, TAIL_WHIP
	db 6, BITE
	db 14, FURY_SWIPES
	db 17, SCREECH
	db 22, DOUBLE_TEAM
	db 24, TAKE_DOWN
	db 28, BODY_SLAM
	db 30, PAY_DAY
	db 32, DOUBLE_EDGE
	db 34, SLASH
	db 36, SKULL_BASH
	db 41, EARTHQUAKE
	db 43, FISSURE
	db 0

KrabbyEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 28, KINGLER
	db 0
; Learnset
	db 5, VICEGRIP
	db 7, WATER_GUN
	db 9, LEER
	db 11, HARDEN
	db 13, RAGE
	db 15, BUBBLEBEAM
	db 19, AGILITY
	db 21, DOUBLE_TEAM
	db 23, TAKE_DOWN
	db 25, STOMP
	db 27, BODY_SLAM
	db 29, DIG
	db 31, GUILLOTINE
	db 33, DOUBLE_EDGE
	db 37, ROCK_SLIDE
	db 41, CRABHAMMER
	db 47, HYDRO_PUMP
	db 0

MissingNo4FEvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

MissingNo50EvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

MissingNo51EvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

VulpixEvosMoves:
; Evolutions
	db EVOLVE_ITEM, FIRE_STONE, 1, NINETALES
	db 0
; Learnset
	db 7, QUICK_ATTACK
	db 9, CONFUSION
	db 11, HEADBUTT
	db 13, CONFUSE_RAY
	db 15, FIRE_SPIN
	db 17, SWIFT
	db 22, DOUBLE_TEAM
	db 24, REFLECT
	db 28, BODY_SLAM
	db 30, LIGHT_SCREEN
	db 32, DOUBLE_EDGE
	db 36, FLAMETHROWER
	db 39, NIGHT_SHADE
	db 42, FIRE_BLAST
	db 44, PSYCHIC_M
	db 46, EARTHQUAKE
	db 50, SKULL_BASH
	db 0

NinetalesEvosMoves:
; Evolutions
	db 0
; Learnset
	db 9, CONFUSION
	db 11, HEADBUTT
	db 15, FIRE_SPIN
	db 17, SWIFT
	db 22, DOUBLE_TEAM
	db 24, REFLECT
	db 28, BODY_SLAM
	db 30, LIGHT_SCREEN
	db 32, DOUBLE_EDGE
	db 36, NIGHT_SHADE
	db 42, FIRE_BLAST
	db 46, PSYCHIC_M
	db 50, EARTHQUAKE
	db 56, SKULL_BASH
	db 0

PikachuEvosMoves:
; Evolutions
	db EVOLVE_ITEM, THUNDER_STONE, 1, RAICHU
	db 0
; Learnset
	db 5, GROWL
	db 7, KARATE_CHOP
	db 9, DOUBLE_KICK
	db 10, QUICK_ATTACK
	db 13, SEISMIC_TOSS
	db 16, SWIFT
	db 18, THUNDER_WAVE
	db 22, DOUBLE_TEAM
	db 24, TAKE_DOWN
	db 26, THUNDERPUNCH
	db 28, BODY_SLAM
	db 30, SUBMISSION
	db 32, DOUBLE_EDGE
	db 35, MEGA_PUNCH
	db 42, THUNDERBOLT
	db 45, AGILITY
	db 51, MEGA_KICK
	db 53, LIGHT_SCREEN
	db 58, THUNDER
	db 0

RaichuEvosMoves:
; Evolutions
	db 0
; Learnset
	db 5, GROWL
	db 7, KARATE_CHOP
	db 9, DOUBLE_KICK
	db 10, QUICK_ATTACK
	db 13, SEISMIC_TOSS
	db 16, SWIFT
	db 18, THUNDER_WAVE
	db 22, DOUBLE_TEAM
	db 24, TAKE_DOWN
	db 27, BODY_SLAM
	db 29, SUBMISSION
	db 31, THUNDERPUNCH
	db 33, DOUBLE_EDGE
	db 35, MEGA_PUNCH
	db 42, THUNDERBOLT
	db 45, AGILITY
	db 51, MEGA_KICK
	db 53, LIGHT_SCREEN
	db 58, THUNDER
	db 0

MissingNo56EvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

MissingNo57EvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

DratiniEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 30, DRAGONAIR
	db 0
; Learnset
	db 3, BUBBLE
	db 5, THUNDER_WAVE
	db 9, WATER_GUN
	db 11, HEADBUTT
	db 15, DRAGON_RAGE
	db 17, RAGE
	db 21, SLAM
	db 23, BUBBLEBEAM
	db 25, TAKE_DOWN
	db 27, AGILITY
	db 30, BODY_SLAM
	db 34, ROCK_SLIDE
	db 42, DOUBLE_EDGE
	db 44, SKULL_BASH
	db 55, HYDRO_PUMP
	db 61, HYPER_BEAM
	db 0

DragonairEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 55, DRAGONITE
	db 0
; Learnset
	db 3, BUBBLE
	db 5, THUNDER_WAVE
	db 9, WATER_GUN
	db 11, HEADBUTT
	db 15, DRAGON_RAGE
	db 17, RAGE
	db 21, SLAM
	db 23, BUBBLEBEAM
	db 25, TAKE_DOWN
	db 27, AGILITY
	db 30, BODY_SLAM
	db 34, ROCK_SLIDE
	db 42, DOUBLE_EDGE
	db 44, SKULL_BASH
	db 55, HYDRO_PUMP
	db 75, HYPER_BEAM
	db 0

KabutoEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 40, KABUTOPS
	db 0
; Learnset
	db 3, BUBBLE
	db 6, ABSORB
	db 9, WATER_GUN
	db 11, HEADBUTT
	db 13, LEER
	db 15, RAGE
	db 21, SAND_ATTACK
	db 23, BUBBLEBEAM
	db 25, TAKE_DOWN
	db 30, BODY_SLAM
	db 32, LEECH_LIFE
	db 34, ROCK_SLIDE
	db 36, MEGA_DRAIN
	db 39, SLASH
	db 42, DOUBLE_EDGE
	db 44, SKULL_BASH
	db 55, HYDRO_PUMP
	db 0

KabutopsEvosMoves:
; Evolutions
	db 0
; Learnset
	db 3, BUBBLE
	db 6, ABSORB
	db 9, WATER_GUN
	db 11, HEADBUTT
	db 13, LEER
	db 15, RAGE
	db 21, SAND_ATTACK
	db 23, BUBBLEBEAM
	db 25, TAKE_DOWN
	db 30, BODY_SLAM
	db 32, LEECH_LIFE
	db 34, ROCK_SLIDE
	db 36, MEGA_DRAIN
	db 39, SLASH
	db 42, DOUBLE_EDGE
	db 44, SKULL_BASH
	db 75, HYDRO_PUMP
	db 0

HorseaEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 32, SEADRA
	db 0
; Learnset
	db 5, SMOKESCREEN
	db 7, LEER
	db 9, HEADBUTT
	db 13, WATER_GUN
	db 17, DRAGON_RAGE
	db 19, DOUBLE_TEAM
	db 21, BUBBLEBEAM
	db 26, FOCUS_ENERGY
	db 36, AGILITY
	db 42, DOUBLE_EDGE
	db 50, SKULL_BASH
	db 52, HYDRO_PUMP
	db 0

SeadraEvosMoves:
; Evolutions
	db 0
; Learnset
	db 17, DRAGON_RAGE
	db 19, DOUBLE_TEAM
	db 21, BUBBLEBEAM
	db 26, FOCUS_ENERGY
	db 36, AGILITY
	db 42, DOUBLE_EDGE
	db 55, SKULL_BASH
	db 60, HYDRO_PUMP
	db 0
	
MissingNo5EEvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

MissingNo5FEvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

SandshrewEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 22, SANDSLASH
	db 0
; Learnset
	db 3, SAND_ATTACK
	db 5, POISON_STING
	db 12, HEADBUTT
	db 17, SWIFT
	db 20, FURY_SWIPES
	db 22, ROCK_SLIDE
	db 24, TAKE_DOWN
	db 26, SLASH
	db 28, BODY_SLAM
	db 30, DIG
	db 38, SWORDS_DANCE
	db 40, TOXIC
	db 42, DOUBLE_EDGE
	db 46, EARTHQUAKE
	db 50, SKULL_BASH
	db 0

SandslashEvosMoves:
; Evolutions
	db 0
; Learnset
	db 12, HEADBUTT
	db 17, SWIFT
	db 20, FURY_SWIPES
	db 22, ROCK_SLIDE
	db 24, TAKE_DOWN
	db 28, SLASH
	db 30, BODY_SLAM
	db 33, DIG
	db 39, DOUBLE_EDGE
	db 43, SWORDS_DANCE
	db 48, TOXIC
	db 53, EARTHQUAKE
	db 56, SKULL_BASH
	db 0

OmanyteEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 40, OMASTAR
	db 0
; Learnset
	db 3, BUBBLE
	db 5, VINE_WHIP
	db 7, BITE
	db 9, HORN_ATTACK
	db 11, WATER_GUN
	db 13, HEADBUTT
	db 15, SPIKE_CANNON
	db 17, RAGE
	db 19, LEER
	db 21, BUBBLEBEAM
	db 25, TAKE_DOWN
	db 30, BODY_SLAM
	db 34, ROCK_SLIDE
	db 42, DOUBLE_EDGE
	db 44, SKULL_BASH
	db 55, HYDRO_PUMP
	db 0

OmastarEvosMoves:
; Evolutions
	db 0
; Learnset
	db 3, BUBBLE
	db 5, VINE_WHIP
	db 7, BITE
	db 9, HORN_ATTACK
	db 11, WATER_GUN
	db 13, HEADBUTT
	db 15, SPIKE_CANNON
	db 17, RAGE
	db 19, LEER
	db 21, BUBBLEBEAM
	db 25, TAKE_DOWN
	db 30, BODY_SLAM
	db 34, ROCK_SLIDE
	db 42, DOUBLE_EDGE
	db 44, SKULL_BASH
	db 75, HYDRO_PUMP
	db 0

JigglypuffEvosMoves:
; Evolutions
	db EVOLVE_ITEM, MOON_STONE, 1, WIGGLYTUFF
	db 0
; Learnset
	db 3, DEFENSE_CURL
	db 5, POUND
	db 13, DISABLE
	db 15, CONFUSION
	db 17, DOUBLESLAP
	db 30, REST
	db 32, BODY_SLAM
	db 34, REFLECT
	db 36, DREAM_EATER
	db 40, PSYCHIC_M
	db 45, DOUBLE_EDGE
	db 48, LIGHT_SCREEN
	db 0

WigglytuffEvosMoves:
; Evolutions
	db 0
; Learnset
	db 3, DEFENSE_CURL
	db 5, POUND
	db 13, DISABLE
	db 15, CONFUSION
	db 17, DOUBLESLAP
	db 30, REST
	db 32, BODY_SLAM
	db 34, REFLECT
	db 38, DREAM_EATER
	db 40, PSYCHIC_M
	db 45, DOUBLE_EDGE
	db 48, LIGHT_SCREEN
	db 0

EeveeEvosMoves:
; Evolutions
	db EVOLVE_ITEM, FIRE_STONE, 1, FLAREON
	db EVOLVE_ITEM, THUNDER_STONE, 1, JOLTEON
	db EVOLVE_ITEM, WATER_STONE, 1, VAPOREON
	db 0
; Learnset
	db 5, SAND_ATTACK
	db 11, HEADBUTT
	db 13, QUICK_ATTACK
	db 17, BITE
	db 17, SWIFT
	db 22, DOUBLE_TEAM
	db 25, TAKE_DOWN
	db 32, BODY_SLAM
	db 35, SKULL_BASH
	db 37, DOUBLE_EDGE
	db 0

FlareonEvosMoves:
; Evolutions
	db 0
; Learnset
	db 5, SAND_ATTACK
	db 11, HEADBUTT
	db 13, QUICK_ATTACK
	db 17, BITE
	db 17, SWIFT
	db 21, ROCK_THROW
	db 23, DOUBLE_TEAM
	db 25, FIRE_SPIN
	db 27, TAKE_DOWN
	db 32, BODY_SLAM
	db 34, ROCK_SLIDE
	db 36, SKULL_BASH
	db 38, DOUBLE_EDGE
	db 40, FLAMETHROWER
	db 42, EARTHQUAKE
	db 44, FISSURE
	db 46, FIRE_BLAST
	db 0

JolteonEvosMoves:
; Evolutions
	db 0
; Learnset
	db 5, SAND_ATTACK
	db 11, HEADBUTT
	db 13, QUICK_ATTACK
	db 17, BITE
	db 17, SWIFT
	db 21, SEISMIC_TOSS
	db 23, DOUBLE_KICK
	db 25, DOUBLE_TEAM
	db 27, TWINEEDLE
	db 29, PIN_MISSILE
	db 31, TAKE_DOWN
	db 33, AGILITY
	db 35, BODY_SLAM
	db 37, THUNDER_WAVE
	db 39, SUBMISSION
	db 41, THUNDERBOLT
	db 43, SKULL_BASH
	db 45, DOUBLE_EDGE
	db 47, THUNDER
	db 0

VaporeonEvosMoves:
; Evolutions
	db 0
; Learnset
	db 5, SAND_ATTACK
	db 11, HEADBUTT
	db 13, QUICK_ATTACK
	db 17, BITE
	db 17, SWIFT
	db 21, BUBBLEBEAM
	db 23, ACID
	db 25, AURORA_BEAM
	db 27, SLUDGE
	db 29, QUICK_ATTACK
	db 31, DOUBLE_TEAM
	db 33, ACID_ARMOR
	db 35, TAKE_DOWN
	db 37, HAZE
	db 39, BODY_SLAM
	db 41, SKULL_BASH
	db 43, DOUBLE_EDGE
	db 45, ICE_BEAM
	db 47, HYDRO_PUMP
	db 50, TOXIC
	db 60, BLIZZARD
	db 0

MachopEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 25, MACHOKE
	db 0
; Learnset
	db 3, FOCUS_ENERGY
	db 7, KARATE_CHOP
	db 15, SEISMIC_TOSS
	db 25, TAKE_DOWN
	db 28, BODY_SLAM
	db 30, STRENGTH
	db 32, DOUBLE_EDGE
	db 34, SUBMISSION
	db 36, MEGA_PUNCH
	db 42, EARTHQUAKE
	db 44, FISSURE
	db 52, MEGA_KICK
	db 54, ROCK_SLIDE
	db 0

ZubatEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 22, GOLBAT
	db 0
; Learnset
	db 5, SUPERSONIC
	db 7, QUICK_ATTACK
	db 9, GUST
	db 11, BITE
	db 13, WING_ATTACK
	db 15, SLUDGE
	db 17, CONFUSE_RAY
	db 19, DOUBLE_TEAM
	db 21, MEGA_DRAIN
	db 23, SWIFT
	db 25, TAKE_DOWN
	db 27, DOUBLE_TEAM
	db 30, LEECH_LIFE
	db 32, DOUBLE_EDGE
	db 34, RAZOR_WIND
	db 36, HAZE
	db 40, TOXIC
	db 0

EkansEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 22, ARBOK
	db 0
; Learnset
	db 4, POISON_STING
	db 9, BITE
	db 12, GLARE
	db 14, SLUDGE
	db 16, SCREECH
	db 18, DOUBLE_TEAM
	db 20, ACID
	db 22, ROCK_SLIDE
	db 24, TAKE_DOWN
	db 28, BODY_SLAM
	db 33, SKULL_BASH
	db 38, EARTHQUAKE
	db 41, HAZE
	db 50, TOXIC
	db 0

ParasEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 24, PARASECT
	db 0
; Learnset
	db 6, POISONPOWDER
	db 6, STUN_SPORE
	db 6, SLEEP_POWDER
	db 9, LEECH_SEED
	db 11, ABSORB
	db 13, SLUDGE
	db 15, NIGHT_SHADE
	db 17, TWINEEDLE
	db 19, PSYBEAM                           
	db 21, MEGA_DRAIN
	db 23, SPORE
	db 25, TAKE_DOWN
	db 27, PIN_MISSILE
	db 29, CONFUSE_RAY
	db 31, SLASH
	db 33, BODY_SLAM
	db 35, GROWTH
	db 37, LEECH_LIFE
	db 39, LIGHT_SCREEN
	db 41, TOXIC
	db 0

PoliwhirlEvosMoves:
; Evolutions
	db EVOLVE_ITEM, WATER_STONE, 1, POLIWRATH
	db 0
; Learnset
	db 11, BUBBLE
	db 15, DOUBLESLAP
	db 23, TAKE_DOWN
	db 25, SUBMISSION
	db 27, SEISMIC_TOSS
	db 29, AMNESIA
	db 31, LOW_KICK
	db 33, DOUBLE_EDGE
	db 48, HYDRO_PUMP
	db 0

PoliwrathEvosMoves:
; Evolutions
	db 0
; Learnset
	db 11, BUBBLE
	db 15, DOUBLESLAP
	db 23, TAKE_DOWN
	db 25, SUBMISSION
	db 27, SEISMIC_TOSS
	db 29, AMNESIA
	db 31, LOW_KICK
	db 33, DOUBLE_EDGE
	db 48, HYDRO_PUMP
	db 0

WeedleEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 7, KAKUNA
	db 0
; Learnset
	db 6, HORN_ATTACK
	db 24, TAKE_DOWN
	db 40, TOXIC
	db 45, HORN_DRILL
	db 0

KakunaEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 10, BEEDRILL
	db 0
; Learnset
	db 7, HARDEN
	db 30, TAKE_DOWN
	db 0

BeedrillEvosMoves:
; Evolutions
	db 0
; Learnset
	db 11, HORN_ATTACK
	db 13, TWINEEDLE
	db 15, PECK
	db 17, FURY_ATTACK
	db 19, RAGE
	db 23, WING_ATTACK
	db 25, FOCUS_ENERGY
	db 27, TAKE_DOWN
	db 30, DOUBLE_TEAM
	db 32, PIN_MISSILE
	db 33, RAZOR_WIND
	db 38, AGILITY
	db 45, HORN_DRILL
	db 50, TOXIC
	db 56, SKULL_BASH
	db 0

MissingNo73EvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

DodrioEvosMoves:
; Evolutions
	db 0
; Learnset
	db 12, FURY_ATTACK
	db 15, SWIFT
	db 18, DOUBLE_TEAM
	db 21, BODY_SLAM
	db 23, TAKE_DOWN
	db 26, AGILITY
	db 38, SWORDS_DANCE
	db 40, TRI_ATTACK
	db 42, JUMP_KICK
	db 44, EARTHQUAKE
	db 46, FISSURE
	db 48, DRILL_PECK
	db 56, THRASH
	db 58, SKULL_BASH
	db 0

PrimeapeEvosMoves:
; Evolutions
	db 0
; Learnset
	db 5, FURY_SWIPES
	db 8, KARATE_CHOP
	db 12, HEADBUTT
	db 15, SEISMIC_TOSS
	db 24, ROCK_SLIDE
	db 26, TAKE_DOWN
	db 28, RAGE
	db 30, BODY_SLAM
	db 32, SUBMISSION
	db 34, THRASH
	db 36, MEGA_PUNCH
	db 38, DOUBLE_EDGE
	db 44, SCREECH
	db 50, SKULL_BASH
	db 53, MEGA_KICK
	db 0

DugtrioEvosMoves:
; Evolutions
	db 0
; Learnset
	db 14, FURY_SWIPES
	db 22, DOUBLE_TEAM
	db 24, ROCK_SLIDE
	db 26, TRI_ATTACK
	db 28, TAKE_DOWN
	db 30, BODY_SLAM
	db 33, DOUBLE_EDGE
	db 35, DIG
	db 41, SLASH
	db 47, EARTHQUAKE
	db 53, FISSURE
	db 0

VenomothEvosMoves:
; Evolutions
	db 0
; Learnset
	db 11, CONFUSION
	db 17, PSYBEAM
	db 19, REFLECT
	db 21, MEGA_DRAIN
	db 23, STUN_SPORE
	db 25, TAKE_DOWN
	db 27, AGILITY
	db 29, SLEEP_POWDER
	db 31, GUST
	db 31, DOUBLE_TEAM
	db 33, RAZOR_WIND
	db 35, DOUBLE_EDGE
	db 37, LEECH_LIFE
	db 55, PSYCHIC_M
	db 0

DewgongEvosMoves:
; Evolutions
	db 0
; Learnset
	db 5, BUBBLE
	db 7, WATER_GUN
	db 9, LICK
	db 19, BUBBLEBEAM
	db 21, REST
	db 27, AURORA_BEAM
	db 29, BODY_SLAM
	db 39, TAKE_DOWN
	db 41, DOUBLE_EDGE
	db 45, HORN_DRILL
	db 55, ICE_BEAM
	db 57, SKULL_BASH
	db 60, BLIZZARD
	db 0

MissingNo79EvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

MissingNo7AEvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

CaterpieEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 7, METAPOD
	db 0
; Learnset
	db 6, ABSORB
	db 21, MEGA_DRAIN
	db 30, TAKE_DOWN
	db 0

MetapodEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 10, BUTTERFREE
	db 0
; Learnset
	db 7, HARDEN
	db 21, MEGA_DRAIN
	db 24, TAKE_DOWN
	db 0

ButterfreeEvosMoves:
; Evolutions
	db 0
; Learnset
	db 10, GUST
	db 11, CONFUSION
	db 12, MEGA_DRAIN
	db 13, POISONPOWDER
	db 13, SLEEP_POWDER
	db 13, STUN_SPORE
	db 15, TWINEEDLE
	db 17, PSYBEAM
	db 19, WING_ATTACK
	db 21, REFLECT
	db 23, SUPERSONIC
	db 25, TAKE_DOWN
	db 27, PIN_MISSILE
	db 31, DOUBLE_TEAM
	db 33, RAZOR_WIND
	db 45, PSYCHIC_M
	db 0

MachampEvosMoves:
; Evolutions
	db 0
; Learnset
	db 15, SEISMIC_TOSS
	db 25, TAKE_DOWN
	db 28, BODY_SLAM
	db 30, STRENGTH
	db 32, DOUBLE_EDGE
	db 36, MEGA_PUNCH
	db 38, SUBMISSION
	db 42, EARTHQUAKE
	db 44, FISSURE
	db 52, MEGA_KICK
	db 54, ROCK_SLIDE
	db 0

MissingNo7FEvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

GolduckEvosMoves:
; Evolutions
	db 0
; Learnset
	db 10, CONFUSION
	db 12, HEADBUTT
	db 14, FURY_SWIPES
	db 16, SWIFT
	db 18, DISABLE
	db 20, BUBBLEBEAM
	db 22, SCREECH
	db 24, PSYBEAM
	db 26, TAKE_DOWN
	db 28, BODY_SLAM
	db 30, LIGHT_SCREEN
	db 33, DOUBLE_EDGE
	db 35, SKULL_BASH
	db 37, AMNESIA
	db 43, PSYCHIC_M
	db 46, HYDRO_PUMP
	db 0

HypnoEvosMoves:
; Evolutions
	db 0
; Learnset
	db 3, SMOG
	db 7, LICK
	db 13, HEADBUTT
	db 15, BARRIER
	db 17, POISON_GAS
	db 19, CONFUSE_RAY
	db 21, MEDITATE
	db 23, NIGHT_SHADE
	db 25, PSYBEAM
	db 27, ICE_PUNCH
	db 29, AMNESIA
	db 31, LIGHT_SCREEN
	db 33, DREAM_EATER
	db 39, ICE_BEAM
	db 49, PSYCHIC_M
	db 51, TOXIC
	db 0
GolbatEvosMoves:
; Evolutions
	db 0
; Learnset
	db 7, QUICK_ATTACK
	db 9, GUST
	db 13, WING_ATTACK
	db 15, SLUDGE
	db 17, CONFUSE_RAY
	db 19, DOUBLE_TEAM
	db 21, MEGA_DRAIN
	db 23, SCREECH
	db 25, SWIFT
	db 27, DOUBLE_TEAM
	db 30, TAKE_DOWN
	db 32, DOUBLE_EDGE
	db 34, RAZOR_WIND
	db 36, LEECH_LIFE
	db 40, HAZE
	db 50, TOXIC
	db 0

MewtwoEvosMoves:
; Evolutions
	db 0
; Learnset
	db 8, SWIFT
	db 10, HEADBUTT
	db 19, KARATE_CHOP
	db 22, DOUBLE_TEAM
	db 25, BODY_SLAM
	db 28, LIGHT_SCREEN
	db 30, TAKE_DOWN
	db 33, SUBMISSION
	db 35, ROCK_SLIDE
	db 39, HAZE
	db 41, EARTHQUAKE
	db 48, DOUBLE_EDGE
	db 50, RECOVER
	db 56, SKULL_BASH
	db 58, PSYCHIC_M
	db 64, BARRIER
	db 75, HYPER_BEAM
	db 79, AMNESIA
	db 86, MIST
	db 0

SnorlaxEvosMoves:
; Evolutions
	db 0
; Learnset
	db 4, DEFENSE_CURL
	db 8, AMNESIA
	db 10, HEADBUTT
	db 12, LICK
	db 14, SEISMIC_TOSS
	db 25, BODY_SLAM
	db 28, REST
	db 30, TAKE_DOWN
	db 33, SUBMISSION
	db 35, ROCK_SLIDE
	db 41, EARTHQUAKE
	db 46, HYPER_BEAM
	db 48, DOUBLE_EDGE
	db 50, SKULL_BASH
	db 0

MagikarpEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 20, GYARADOS
	db 0
; Learnset
	db 5, LEER
	db 7, BUBBLE
	db 9, WATER_GUN
	db 11, BITE
	db 13, HEADBUTT
	db 18, DRAGON_RAGE
	db 20, BUBBLEBEAM
	db 29, TAKE_DOWN
	db 31, BODY_SLAM
	db 38, SCREECH
	db 40, THRASH
	db 42, HYDRO_PUMP
	db 44, DOUBLE_EDGE
	db 46, SKULL_BASH
	db 54, HYPER_BEAM
	db 0

MissingNo86EvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

MissingNo87EvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

MukEvosMoves:
; Evolutions
	db 0
; Learnset
	db 6, LICK
	db 12, DISABLE
	db 15, SLUDGE
	db 28, BODY_SLAM
	db 21, MINIMIZE
	db 34, ROCK_SLIDE
	db 37, SCREECH
	db 41, EARTHQUAKE
	db 46, ACID_ARMOR
	db 49, FISSURE
	db 51, TOXIC
	db 0

MissingNo8AEvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

KinglerEvosMoves:
; Evolutions
	db 0
; Learnset
	db 5, VICEGRIP
	db 7, WATER_GUN
	db 9, LEER
	db 11, HARDEN
	db 13, RAGE
	db 15, BUBBLEBEAM
	db 19, AGILITY
	db 21, DOUBLE_TEAM
	db 23, TAKE_DOWN
	db 25, STOMP
	db 27, BODY_SLAM
	db 29, DIG
	db 31, GUILLOTINE
	db 33, DOUBLE_EDGE
	db 37, ROCK_SLIDE
	db 41, CRABHAMMER
	db 47, HYDRO_PUMP
	db 0
CloysterEvosMoves:
; Evolutions
	db 0
; Learnset
	db 13, SPIKE_CANNON
	db 19, LEER
	db 21, TAKE_DOWN
	db 23, REST
	db 25, CLAMP
	db 27, BUBBLEBEAM
	db 31, BODY_SLAM
	db 35, SCREECH
	db 37, AURORA_BEAM
	db 40, DOUBLE_EDGE
	db 52, ICE_BEAM
	db 60, BLIZZARD
	db 62, HYDRO_PUMP
	db 0

MissingNo8CEvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

ElectrodeEvosMoves:
; Evolutions
	db 0
; Learnset
	db 13, SCREECH
	db 19, DOUBLE_TEAM
	db 19, THUNDERSHOCK
	db 20, SWIFT
	db 22, THUNDER_WAVE
	db 24, TAKE_DOWN
	db 29, LIGHT_SCREEN
	db 43, THUNDERBOLT
	db 50, THUNDER
	db 0


ClefableEvosMoves:
; Evolutions
	db 0
; Learnset
	db 13, DEFENSE_CURL
	db 15, CONFUSION
	db 19, DOUBLE_TEAM
	db 25, MINIMIZE
	db 31, DOUBLE_EDGE
	db 33, REFLECT
	db 40, PSYCHIC_M
	db 40, BODY_SLAM
	db 47, TAKE_DOWN
	db 48, LIGHT_SCREEN

WeezingEvosMoves:
; Evolutions
	db 0
; Learnset
	db 3, SMOG
	db 5, EMBER
	db 7, SMOKESCREEN
	db 18, SLUDGE
	db 21, PSYBEAM
	db 25, FIRE_SPIN
	db 27, TAKE_DOWN
	db 29, HAZE
	db 31, BODY_SLAM
	db 33, DOUBLE_EDGE
	db 39, FLAMETHROWER
	db 40, TOXIC
	db 46, FIRE_BLAST
	db 0


PersianEvosMoves:
; Evolutions
	db 0
; Learnse
	db 14, FURY_SWIPES
	db 17, SCREECH
	db 22, DOUBLE_TEAM
	db 24, TAKE_DOWN
	db 26, BODY_SLAM
	db 28, SWIFT
	db 30, PAY_DAY
	db 32, DOUBLE_EDGE
	db 37, SLASH
	db 41, EARTHQUAKE
	db 43, FISSURE
	db 45, SKULL_BASH
	db 0

MarowakEvosMoves:
; Evolutions
	db 0
; Learnset
	db 5, LICK
	db 9, DOUBLE_KICK
	db 13, LEER
	db 15, NIGHT_SHADE
	db 17, FOCUS_ENERGY
	db 19, TAKE_DOWN
	db 21, BONEMERANG
	db 23, RAGE
	db 25, CONFUSE_RAY
	db 28, BODY_SLAM
	db 33, THRASH
	db 35, ROCK_SLIDE
	db 37, MEGA_PUNCH
	db 39, SWORDS_DANCE
	db 41, EARTHQUAKE
	db 45, DIG
	db 47, FISSURE
	db 49, SKULL_BASH
	db 53, DOUBLE_EDGE
	db 55, MEGA_KICK
	db 0

MissingNo92EvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

HaunterEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 45, GENGAR
	db 0
; Learnset
	db 4, SMOG
	db 6, POISON_GAS
	db 13, ACID
	db 15, NIGHT_SHADE
	db 17, SLUDGE
	db 19, CONFUSE_RAY
	db 36, ACID_ARMOR
	db 39, DREAM_EATER
	db 41, TOXIC
	db 43, ICE_BEAM
	db 45, ICE_PUNCH
	db 0

AbraEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 25, KADABRA
	db 0
; Learnset
	db 10, DISABLE
	db 12, CONFUSION
	db 14, RECOVER
	db 16, REFLECT
	db 18, KINESIS
	db 20, PSYBEAM
	db 28, TRI_ATTACK
	db 30, TAKE_DOWN
	db 32, LIGHT_SCREEN
	db 34, BODY_SLAM
	db 36, DOUBLE_EDGE
	db 44, PSYCHIC_M
	db 0

AlakazamEvosMoves:
; Evolutions
	db 0
; Learnset
	db 18, DISABLE
	db 21, PSYBEAM
	db 23, REFLECT
	db 26, TRI_ATTACK
	db 28, TAKE_DOWN
	db 30, RECOVER
	db 32, LIGHT_SCREEN
	db 34, BODY_SLAM
	db 36, DOUBLE_EDGE
	db 38, PSYCHIC_M
	db 0

PidgeottoEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 36, PIDGEOT
	db 0
; Learnset
	db 13, QUICK_ATTACK
	db 25, DOUBLE_TEAM
	db 30, TAKE_DOWN
	db 32, AGILITY
	db 34, DOUBLE_EDGE
	db 37, WING_ATTACK
	db 40, RAZOR_WIND
	db 45, DRILL_PECK
	db 0
	

PidgeotEvosMoves:
; Evolutions
	db 0
; Learnset
	db 25, DOUBLE_TEAM
	db 30, TAKE_DOWN
	db 32, AGILITY
	db 34, DOUBLE_EDGE
	db 38, WING_ATTACK
	db 40, RAZOR_WIND
	db 45, DRILL_PECK

StarmieEvosMoves:
; Evolutions
	db 0
; Learnset
	db 4, WATER_GUN
	db 6, BUBBLE
	db 10, RECOVER
	db 16, SWIFT
	db 18, BUBBLEBEAM
	db 23, TAKE_DOWN
	db 31, MINIMIZE
	db 33, AURORA_BEAM
	db 40, CONFUSE_RAY
	db 42, DOUBLE_EDGE
	db 44, PSYCHIC_M
	db 46, LIGHT_SCREEN
	db 53, HYDRO_PUMP
	db 0

BulbasaurEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 14, IVYSAUR
	db 0
; Learnset
	db 3, GROWL
	db 5, WRAP
	db 7, VINE_WHIP
	db 9, LEECH_SEED
	db 12, HEADBUTT
	db 19, RAZOR_LEAF
	db 21, TAKE_DOWN
	db 25, GROWTH
	db 26, MEGA_DRAIN
	db 27, DOUBLE_EDGE
	db 30, BODY_SLAM
	db 36, SKULL_BASH
	db 41, PETAL_DANCE
	db 0

VenusaurEvosMoves:
; Evolutions
	db 0
; Learnset
	db 12, HEADBUTT
	db 13, POISONPOWDER
	db 13, SLEEP_POWDER
	db 13, STUN_SPORE
	db 15, TAKE_DOWN
	db 20, RAZOR_LEAF
	db 28, GROWTH
	db 30, BODY_SLAM
	db 31, DOUBLE_EDGE
	db 40, TOXIC
	db 53, EARTHQUAKE
	db 53, SOLARBEAM
	db 56, SKULL_BASH
	db 59, PETAL_DANCE
	db 0

TentacruelEvosMoves:
; Evolutions
	db 0
; Learnset
	db 13, VINE_WHIP
	db 16, SLUDGE
	db 19, WRAP
	db 21, MEGA_DRAIN
	db 23, TAKE_DOWN
	db 25, BUBBLEBEAM
	db 28, BARRIER
	db 31, BODY_SLAM
	db 33, LEECH_LIFE
	db 37, SCREECH
	db 40, DOUBLE_EDGE
	db 56, HYDRO_PUMP
	db 0

MissingNo9CEvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

GoldeenEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 33, SEAKING
	db 0
; Learnset
	db 3, WATER_GUN
	db 5, SUPERSONIC
	db 7, BUBBLE
	db 8, HORN_ATTACK
	db 20, BUBBLEBEAM
	db 22, TAKE_DOWN
	db 24, FURY_ATTACK
	db 29, AGILITY
	db 32, WATERFALL
	db 40, HORN_DRILL
	db 42, DOUBLE_EDGE
	db 46, HYDRO_PUMP
	db 0

SeakingEvosMoves:
; Evolutions
	db 0
; Learnset
	db 3, WATER_GUN
	db 5, SUPERSONIC
	db 7, BUBBLE
	db 9, HORN_ATTACK
	db 20, BUBBLEBEAM
	db 22, TAKE_DOWN
	db 24, FURY_ATTACK
	db 29, AGILITY
	db 32, WATERFALL
	db 37, HORN_DRILL
	db 40, DOUBLE_EDGE
	db 46, HYDRO_PUMP
	db 0

MissingNo9FEvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

MissingNoA0EvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

MissingNoA1EvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

MissingNoA2EvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

PonytaEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 40, RAPIDASH
	db 0
; Learnset
	db 3, LOW_KICK
	db 5, TAIL_WHIP
	db 7, DOUBLE_KICK
	db 9, EMBER
	db 11, QUICK_ATTACK
	db 13, HEADBUTT
	db 17, STOMP
	db 25, FIRE_SPIN
	db 29, TAKE_DOWN
	db 31, EARTHQUAKE
	db 33, DOUBLE_EDGE
	db 35, BODY_SLAM
	db 37, AGILITY
	db 39, FLAMETHROWER
	db 41, FIRE_BLAST
	db 43, FURY_ATTACK
	db 45, SKULL_BASH
	db 47, FISSURE
	db 0

RapidashEvosMoves:
; Evolutions
	db 0
; Learnset
	db 3, LOW_KICK
	db 5, TAIL_WHIP
	db 7, DOUBLE_KICK
	db 9, EMBER
	db 11, QUICK_ATTACK
	db 13, HEADBUTT
	db 17, STOMP
	db 25, FIRE_SPIN
	db 29, TAKE_DOWN
	db 31, EARTHQUAKE
	db 33, DOUBLE_EDGE
	db 35, BODY_SLAM
	db 37, AGILITY
	db 39, FLAMETHROWER
	db 41, FIRE_BLAST
	db 43, FURY_ATTACK
	db 45, SKULL_BASH
	db 47, FISSURE
	db 0

RattataEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 20, RATICATE
	db 0
; Learnset
	db 3, SAND_ATTACK
	db 6, FOCUS_ENERGY
	db 8, QUICK_ATTACK
	db 10, BITE
	db 12, HEADBUTT
	db 14, FURY_SWIPES
	db 16, HYPER_FANG
	db 24, DOUBLE_TEAM
	db 26, SCREECH
	db 28, SUPER_FANG
	db 30, TAKE_DOWN
	db 32, DOUBLE_EDGE
	db 34, BODY_SLAM
	db 36, SKULL_BASH
	db 0

RaticateEvosMoves:
; Evolutions
	db 0
; Learnset
	db 10, BITE
	db 12, HEADBUTT
	db 14, FURY_SWIPES
	db 16, HYPER_FANG
	db 24, DOUBLE_TEAM
	db 26, SCREECH
	db 28, TAKE_DOWN
	db 30, BODY_SLAM
	db 34, SUPER_FANG
	db 39, DOUBLE_EDGE
	db 42, SKULL_BASH
	db 0

NidorinoEvosMoves:
; Evolutions
	db EVOLVE_ITEM, MOON_STONE, 1, NIDOKING
	db 0
; Learnset
	db 7, FOCUS_ENERGY
	db 9, DOUBLE_KICK
	db 11, HEADBUTT
	db 13, POISON_STING
	db 15, SLUDGE
	db 17, SCREECH
	db 20, FURY_ATTACK
	db 23, HORN_ATTACK
	db 25, BITE
	db 27, TAKE_DOWN
	db 29, BODY_SLAM
	db 38, DOUBLE_EDGE
	db 40, SKULL_BASH
	db 50, TOXIC
	db 58, HORN_DRILL
	db 0

NidorinaEvosMoves:
; Evolutions
	db EVOLVE_ITEM, MOON_STONE, 1, NIDOQUEEN
	db 0
; Learnset
	db 5, TAIL_WHIP
	db 7, FOCUS_ENERGY
	db 9, DOUBLE_KICK
	db 11, HEADBUTT
	db 13, POISON_STING
	db 15, SLUDGE
	db 17, SCREECH
	db 20, FURY_SWIPES
	db 23, BITE
	db 25, TAKE_DOWN
	db 30, BODY_SLAM
	db 35, DOUBLE_EDGE
	db 40, SKULL_BASH
	db 50, TOXIC
	db 0
	
GeodudeEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 25, GRAVELER
	db 0
; Learnset
	db 7, ROCK_THROW
	db 12, HEADBUTT
	db 16, ROCK_THROW
	db 26, HARDEN
	db 30, TAKE_DOWN
	db 32, BODY_SLAM
	db 34, EARTHQUAKE
	db 40, DOUBLE_EDGE
	db 43, FISSURE
	db 45, SKULL_BASH
	db 53, ROCK_SLIDE
	db 0

PorygonEvosMoves:
; Evolutions
	db 0
; Learnset
	db 3, THUNDERSHOCK
	db 7, PSYBEAM
	db 12, AGILITY
	db 14, CONFUSION
	db 16, SWIFT
	db 18, RECOVER
	db 20, THUNDER_WAVE
	db 22, CONFUSE_RAY
	db 30, TAKE_DOWN
	db 40, DOUBLE_EDGE
	db 43, PSYCHIC_M
	db 45, THUNDERBOLT
	db 50, TRI_ATTACK
	db 56, THUNDER
	db 0

AerodactylEvosMoves:
; Evolutions
	db 0
; Learnset
	db 12, HEADBUTT
	db 15, RAGE
	db 17, AGILITY
	db 19, DRAGON_RAGE
	db 33, RAZOR_WIND
	db 39, FLAMETHROWER
	db 41, TAKE_DOWN
	db 43, DOUBLE_EDGE
	db 45, SKULL_BASH
	db 65, HYPER_BEAM
	db 73, ROCK_SLIDE
	db 0

MissingNoACEvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

MagnemiteEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 30, MAGNETON
	db 0
; Learnset
	db 5, THUNDERSHOCK
	db 11, THUNDER_WAVE
	db 13, LIGHT_SCREEN
	db 15, REFLECT
	db 17, SONICBOOM
	db 19, SWIFT
	db 21, DOUBLE_TEAM
	db 25, TAKE_DOWN
	db 29, SUPERSONIC
	db 35, SCREECH
	db 40, DOUBLE_EDGE
	db 45, THUNDERBOLT
	db 56, THUNDER
	db 0

MissingNoAEEvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

MissingNoAFEvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

CharmanderEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 16, CHARMELEON
	db 0
; Learnset
	db 7, EMBER
	db 10, SMOKESCREEN
	db 12, HEADBUTT
	db 14, RAGE
	db 26, FIRE_PUNCH
	db 28, TAKE_DOWN
	db 30, BODY_SLAM
	db 30, FIRE_PUNCH
	db 32, SKULL_BASH
	db 34, SLASH
	db 36, FLAMETHROWER
	db 38, DOUBLE_EDGE
	db 43, FIRE_SPIN
	db 46, FIRE_BLAST
	db 0

SquirtleEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 16, WARTORTLE
	db 0
; Learnset
	db 4, TAIL_WHIP
	db 7, WATER_GUN
	db 10, WITHDRAW
	db 12, HEADBUTT
	db 14, BUBBLE
	db 16, BITE
	db 20, BUBBLEBEAM
	db 27, TAKE_DOWN
	db 30, BODY_SLAM
	db 31, SKULL_BASH
	db 38, DOUBLE_EDGE
	db 40, HYDRO_PUMP
	db 41, EARTHQUAKE
	db 0

CharmeleonEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 36, CHARIZARD
	db 0
; Learnset
	db 10, SMOKESCREEN
	db 12, HEADBUTT
	db 14, RAGE
	db 27, TAKE_DOWN
	db 29, BODY_SLAM
	db 31, FIRE_PUNCH
	db 33, DRAGON_RAGE
	db 37, SKULL_BASH
	db 39, SLASH
	db 41, DOUBLE_EDGE
	db 43, FLAMETHROWER
	db 46, FIRE_BLAST
	db 50, FIRE_SPIN
	db 0

WartortleEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 36, BLASTOISE
	db 0
; Learnset
	db 10, WITHDRAW
	db 12, HEADBUTT
	db 14, BUBBLE
	db 18, BITE
	db 22, BUBBLEBEAM
	db 27, TAKE_DOWN
	db 30, BODY_SLAM
	db 33, AURORA_BEAM
	db 35, ROCK_SLIDE
	db 37, SKULL_BASH
	db 39, DOUBLE_EDGE
	db 43, ICE_BEAM
	db 47, EARTHQUAKE
	db 49, HYDRO_PUMP
	db 60, BLIZZARD
	db 0

CharizardEvosMoves:
; Evolutions
	db 0
; Learnset
	db 10, SMOKESCREEN
	db 12, HEADBUTT
	db 14, RAGE
	db 28, TAKE_DOWN
	db 30, BODY_SLAM
	db 32, FIRE_PUNCH
	db 34, DRAGON_RAGE
	db 36, WING_ATTACK
	db 40, SKULL_BASH
	db 41, SLASH
	db 44, DOUBLE_EDGE
	db 46, FIRE_BLAST
	db 47, FLAMETHROWER
	db 53, ROCK_SLIDE
	db 56, FIRE_SPIN
	db 0

MissingNoB5EvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

FossilKabutopsEvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

FossilAerodactylEvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

MonGhostEvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

OddishEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 21, GLOOM
	db 0
; Learnset
	db 9, ACID
	db 13, POISONPOWDER
	db 14, STUN_SPORE
	db 15, SLEEP_POWDER
	db 17, SLUDGE
	db 19, MEGA_DRAIN
	db 25, TAKE_DOWN
	db 27, BODY_SLAM
	db 29, RAZOR_LEAF
	db 35, TOXIC
	db 38, DOUBLE_EDGE
	db 43, SOLARBEAM
	db 51, PETAL_DANCE
	db 0

GloomEvosMoves:
; Evolutions
	db EVOLVE_ITEM, LEAF_STONE, 1, VILEPLUME
	db 0
; Learnset
	db 15, SLEEP_POWDER
	db 17, SLUDGE
	db 25, TAKE_DOWN
	db 27, BODY_SLAM
	db 29, RAZOR_LEAF
	db 39, TOXIC
	db 38, DOUBLE_EDGE
	db 59, PETAL_DANCE
	db 69, SOLARBEAM
	db 0

VileplumeEvosMoves:
; Evolutions
	db 0
; Learnset
	db 13, POISONPOWDER
	db 14, STUN_SPORE
	db 15, SLEEP_POWDER
	db 17, SLUDGE
	db 19, MEGA_DRAIN
	db 25, TAKE_DOWN
	db 27, BODY_SLAM
	db 29, RAZOR_LEAF
	db 39, TOXIC
	db 38, DOUBLE_EDGE
	db 43, SOLARBEAM
	db 59, PETAL_DANCE
	db 0

BellsproutEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 21, WEEPINBELL
	db 0
; Learnset
	db 5, ABSORB
	db 7, GROWTH
	db 11, WRAP
	db 13, POISONPOWDER
	db 17, STUN_SPORE
	db 21, MEGA_DRAIN
	db 25, TAKE_DOWN
	db 33, LEECH_LIFE
	db 37, DOUBLE_EDGE
	db 39, RAZOR_LEAF
	db 41, BODY_SLAM
	db 43, SOLARBEAM
	db 0

WeepinbellEvosMoves:
; Evolutions
	db EVOLVE_ITEM, LEAF_STONE, 1, VICTREEBEL
	db 0
; Learnset
	db 15, SLEEP_POWDER
	db 17, STUN_SPORE
	db 21, MEGA_DRAIN
	db 23, ACID
	db 25, TAKE_DOWN
	db 27, POISONPOWDER
	db 29, SLUDGE
	db 33, LEECH_LIFE
	db 37, DOUBLE_EDGE
	db 39, BODY_SLAM
	db 44, RAZOR_LEAF
	db 46, SOLARBEAM
	db 0

VictreebelEvosMoves:
; Evolutions
	db 0
; Learnset
	db 15, SLEEP_POWDER
	db 17, STUN_SPORE
	db 21, MEGA_DRAIN
	db 23, ACID
	db 25, TAKE_DOWN
	db 27, POISONPOWDER
	db 29, SLUDGE
	db 33, LEECH_LIFE
	db 35, BODY_SLAM
	db 37, DOUBLE_EDGE
	db 44, RAZOR_LEAF
	db 46, SOLARBEAM
	db 0

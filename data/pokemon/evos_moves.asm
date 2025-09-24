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
	db 3, TAIL_WHIP
	db 5, HARDEN
	db 7, ROCK_THROW
	db 9, POUND
	db 11, BITE
	db 13, FOCUS_ENERGY
	db 15, FURY_ATTACK
	db 17, RAGE
	db 19, DIG
	db 21, FURY_SWIPES
	db 23, HORN_ATTACK
	db 25, HEADBUTT
	db 27, STOMP
	db 29, TAKE_DOWN
	db 31, SCREECH
	db 33, ROCK_SLIDE
	db 35, EARTHQUAKE
	db 37, BODY_SLAM
	db 50, THRASH
	db 0

KangaskhanEvosMoves:
; Evolutions
	db 0
; Learnset
	db 3, GROWL
	db 5, DEFENSE_CURL
	db 7, COMET_PUNCH
	db 9, KARATE_CHOP
	db 11, ROCK_THROW
	db 13, STOMP
	db 15, FOCUS_ENERGY
	db 17, FURY_SWIPES
	db 19, RAGE
	db 21, DIG
	db 23, LOW_KICK
	db 25, DIZZY_PUNCH
	db 27, HEADBUTT
	db 29, STOMP
	db 31, TAKE_DOWN
	db 33, SLASH
	db 35, SUBMISSION
	db 37, EARTHQUAKE
	db 39, ROCK_SLIDE
	db 41, BODY_SLAM
	db 43, SWORDS_DANCE
	db 50, THRASH
	db 0

NidoranMEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 25, NIDORINO
	db 0
; Learnset
	db 3, TAIL_WHIP
	db 5, SMOG
	db 7, ROCK_THROW
	db 9, QUICK_ATTACK
	db 11, BITE
	db 13, RAGE
	db 15, FOCUS_ENERGY
	db 17, FURY_SWIPES
	db 19, DIG
	db 21, FURY_ATTACK
	db 23, ACID
	db 25, HORN_ATTACK
	db 27, LOW_KICK
	db 29, HEADBUTT
	db 31, TAKE_DOWN
	db 33, SCREECH
	db 35, SLUDGE
	db 37, EARTHQUAKE
	db 39, DRILL_PECK
	db 41, ROCK_SLIDE
	db 43, BODY_SLAM
	db 50, THRASH
	db 0

ClefairyEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 35, CLEFABLE
	db 0
; Learnset
	db 3, TAIL_WHIP
	db 5, DEFENSE_CURL
	db 7, CONFUSION
	db 9, POUND
	db 11, COMET_PUNCH
	db 13, SING
	db 15, DOUBLESLAP
	db 17, FURY_SWIPES
	db 19, RECOVER
	db 21, SWIFT
	db 23, REFLECT
	db 25, PSYBEAM
	db 27, DIZZY_PUNCH
	db 29, TAKE_DOWN
	db 31, SLASH
	db 33, LIGHT_SCREEN
	db 35, PSYCHIC_M
	db 37, BODY_SLAM
	db 0

SpearowEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 20, FEAROW
	db 0
; Learnset
	db 3, GROWL
	db 5, LEER
	db 7, GUST
	db 9, QUICK_ATTACK
	db 11, SONICBOOM
	db 13, FOCUS_ENERGY
	db 15, FURY_SWIPES
	db 17, RAGE
	db 19, FURY_ATTACK
	db 21, SWIFT
	db 23, WING_ATTACK
	db 25, HEADBUTT
	db 25, TAKE_DOWN
	db 29, SLASH
	db 31, AGILITY 
	db 33, SCREECH
	db 35, DRILL_PECK
	db 37, BODY_SLAM
	db 39, SWORDS_DANCE
	db 50, RAZOR_WIND
	db 0

VoltorbEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 30, ELECTRODE
	db 0
; Learnset
	db 3, DEFENSE_CURL
	db 5, SUPERSONIC
	db 7, THUNDERSHOCK
	db 9, ROCK_THROW
	db 11, SONICBOOM
	db 13, FOCUS_ENERGY
	db 15, RAGE
	db 18, SWIFT
	db 21, REFLECT
	db 23, THUNDERPUNCH
	db 25, HEADBUTT
	db 27, BARRIER
	db 29, TAKE_DOWN
	db 31, AGILITY
	db 33, SCREECH
	db 35, THUNDERBOLT
	db 37, ROCK_SLIDE
	db 39, BODY_SLAM
	db 50, THRASH
	db 0

NidokingEvosMoves:
; Evolutions
	db 0
; Learnset
	db 3, TAIL_WHIP
	db 5, SMOG
	db 7, ROCK_THROW
	db 9, QUICK_ATTACK
	db 11, BITE
	db 13, RAGE
	db 15, FOCUS_ENERGY
	db 17, FURY_ATTACK
	db 19, DIG
	db 21, FURY_SWIPES
	db 23, ACID
	db 25, HORN_ATTACK
	db 27, LOW_KICK
	db 29, HEADBUTT
	db 31, TAKE_DOWN
	db 33, SCREECH
	db 35, SLUDGE
	db 37, EARTHQUAKE
	db 39, DRILL_PECK
	db 41, ROCK_SLIDE
	db 43, BODY_SLAM
	db 50, THRASH
	db 0

SlowbroEvosMoves:
; Evolutions
	db 0
; Learnsetdb
	db 5, TAIL_WHIP
	db 7, WATER_GUN
	db 9, CONFUSION
	db 11, POUND
	db 13, BITE
	db 15, DOUBLESLAP
	db 17, RAGE
	db 19, FURY_SWIPES
	db 21, SWIFT
	db 23, BUBBLEBEAM
	db 25, PSYBEAM
	db 27, HEADBUTT
	db 29, AMNESIA
	db 31, TAKE_DOWN
	db 33, LIGHT_SCREEN
	db 35, WATERFALL
	db 37, PSYCHIC_M
	db 39, BODY_SLAM
	db 50, THRASH
	db 0

IvysaurEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 34, VENUSAUR
	db 0
; Learnset
	db 3, GROWL
	db 5, TAIL_WHIP
	db 7, ABSORB
	db 9, SMOG
	db 11, BITE
	db 13, FOCUS_ENERGY
	db 15, RAGE
	db 17, GROWTH
	db 19, FURY_SWIPES
	db 21, SWIFT
	db 23, MEGA_DRAIN
	db 25, ACID
	db 27, HEADBUTT
	db 29, TAKE_DOWN
	db 31, SLASH
	db 33, SCREECH
	db 35, RAZOR_LEAF
	db 37, SLUDGE
	db 39, BODY_SLAM
	db 43, ACID_ARMOR
	db 50, THRASH
	db 0
	
ExeggutorEvosMoves:
; Evolutions
	db 0
; Learnset
	db 5, DEFENSE_CURL
	db 7, ABSORB
	db 9, CONFUSION
	db 11, POUND
	db 13, MEDITATE
	db 15, FOCUS_ENERGY
	db 17, RECOVER
	db 19, GROWTH
	db 21, SWIFT
	db 23, REFLECT
	db 25, MEGA_DRAIN
	db 27, PSYBEAM
	db 29, BARRAGE
	db 31, TAKE_DOWN
	db 33, LIGHT_SCREEN
	db 35, RAZOR_LEAF
	db 37, PSYCHIC_M
	db 39, EARTHQUAKE
	db 41, BODY_SLAM
	db 50, EGG_BOMB
	db 0
	
LickitungEvosMoves:
; Evolutions
	db 0
; Learnset
	db 3, TAIL_WHIP
	db 5, LICK
	db 7, DEFENSE_CURL
	db 9, SUPERSONIC
	db 11, POUND
	db 13, ROCK_THROW
	db 15, FOCUS_ENERGY
	db 17, DOUBLESLAP
	db 19, FURY_SWIPES
	db 21, SWIFT
	db 23, STOMP
	db 25, HEADBUTT
	db 27, SLASH
	db 29, TAKE_DOWN
	db 31, SCREECH
	db 33, BODY_SLAM
	db 35, ROCK_SLIDE
	db 37, EARTHQUAKE
	db 50, THRASH
	db 0

ExeggcuteEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 35, EXEGGUTOR
	db 0
; Learnset
	db 5, DEFENSE_CURL
	db 7, ABSORB
	db 9, CONFUSION
	db 11, POUND
	db 13, MEDITATE
	db 15, FOCUS_ENERGY
	db 17, RECOVER
	db 19, GROWTH
	db 21, SWIFT
	db 23, REFLECT
	db 25, MEGA_DRAIN
	db 27, PSYBEAM
	db 29, BARRAGE
	db 31, TAKE_DOWN
	db 33, LIGHT_SCREEN
	db 35, RAZOR_LEAF
	db 37, PSYCHIC_M
	db 39, EARTHQUAKE
	db 41, BODY_SLAM
	db 50, EGG_BOMB
	db 0

GrimerEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 38, MUK
	db 0
; Learnset
	db 5, HARDEN
	db 7, SMOG
	db 9, LICK
	db 11, ROCK_THROW
	db 13, POUND
	db 15, SMOKESCREEN
	db 15, DOUBLESLAP
	db 17, RAGE
	db 19, DIG
	db 21, CONFUSE_RAY
	db 23, REFLECT
	db 25, ACID
	db 27, BARRIER
	db 29, TAKE_DOWN
	db 31, SCREECH
	db 33, SLUDGE
	db 35, EARTHQUAKE
	db 37, ROCK_SLIDE
	db 39, BODY_SLAM
	db 43, ACID_ARMOR
	db 50, THRASH
	db 0

GengarEvosMoves:
; Evolutions
	db 0
; Learnset
	db 5, LICK
	db 7, SMOG
	db 9, AURORA_BEAM
	db 11, QUICK_ATTACK
	db 13, SMOKESCREEN
	db 15, BITE
	db 17, FOCUS_ENERGY
	db 19, RAGE
	db 21, FURY_SWIPES
	db 23, CONFUSE_RAY
	db 25, ACID
	db 27, ICE_PUNCH
	db 29, HEADBUTT
	db 31, TAKE_DOWN
	db 33, SLASH
	db 35, NIGHT_SHADE
	db 37, SLUDGE
	db 39, ICE_BEAM
	db 43, ACID_ARMOR
	db 50, THRASH
	db 0

NidoranFEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 25, NIDORINA
	db 0
; Learnset
	db 3, TAIL_WHIP
	db 5, SMOG
	db 7, ROCK_THROW
	db 9, QUICK_ATTACK
	db 11, BITE
	db 13, RAGE
	db 15, FOCUS_ENERGY
	db 17, FURY_SWIPES
	db 19, DIG
	db 21, FURY_ATTACK
	db 23, ACID
	db 25, HORN_ATTACK
	db 27, LOW_KICK
	db 29, HEADBUTT
	db 31, TAKE_DOWN
	db 33, SCREECH
	db 35, SLUDGE
	db 37, EARTHQUAKE
	db 39, DRILL_PECK
	db 41, ROCK_SLIDE
	db 43, BODY_SLAM
	db 50, THRASH
	db 0
	
NidoqueenEvosMoves:
; Evolutions
	db 0
; Learnset
	db 3, TAIL_WHIP
	db 5, SMOG
	db 7, ROCK_THROW
	db 9, QUICK_ATTACK
	db 11, BITE
	db 13, RAGE
	db 15, FOCUS_ENERGY
	db 17, FURY_SWIPES
	db 19, DIG
	db 21, FURY_ATTACK
	db 23, ACID
	db 25, HORN_ATTACK
	db 27, LOW_KICK
	db 29, HEADBUTT
	db 31, TAKE_DOWN
	db 33, SCREECH
	db 35, SLUDGE
	db 37, EARTHQUAKE
	db 39, DRILL_PECK
	db 41, ROCK_SLIDE
	db 43, BODY_SLAM
	db 50, THRASH
	db 0

CuboneEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 28, MAROWAK
	db 0
; Learnset
	db 3, GROWL
	db 5, LEER
	db 7, LICK
	db 9, ROCK_THROW
	db 11, POUND
	db 13, HORN_ATTACK
	db 15, FOCUS_ENERGY
	db 17, FURY_ATTACK
	db 19, RAGE
	db 21, DIG
	db 23, FURY_SWIPES
	db 25, BONE_CLUB
	db 27, HEADBUTT
	db 29, STOMP
	db 31, TAKE_DOWN
	db 33, SLASH
	db 35, EARTHQUAKE
	db 37, NIGHT_SHADE
	db 39, ROCK_SLIDE
	db 41, BODY_SLAM
	db 43, SWORDS_DANCE
	db 50, BONEMERANG
	db 0

RhyhornEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 42, RHYDON
	db 0
; Learnset
	db 3, TAIL_WHIP
	db 5, HARDEN
	db 7, ROCK_THROW
	db 9, POUND
	db 11, BITE
	db 13, FOCUS_ENERGY
	db 15, FURY_ATTACK
	db 17, RAGE
	db 19, DIG
	db 21, FURY_SWIPES
	db 23, HORN_ATTACK
	db 25, HEADBUTT
	db 27, STOMP
	db 29, TAKE_DOWN
	db 31, SCREECH
	db 33, ROCK_SLIDE
	db 35, EARTHQUAKE
	db 37, BODY_SLAM
	db 50, THRASH
	db 0

LaprasEvosMoves:
; Evolutions
	db 0
; Learnset
	db 3, DEFENSE_CURL
	db 5, SUPERSONIC
	db 7, WATER_GUN
	db 9, AURORA_BEAM
	db 11, HORN_ATTACK
	db 13, SING
	db 15, FURY_ATTACK
	db 17, RAGE
	db 19, SWIFT
	db 21, CONFUSE_RAY
	db 23, BUBBLEBEAM
	db 25, HEADBUTT
	db 27, TAKE_DOWN
	db 29, SLASH
	db 31, SCREECH
	db 33, WATERFALL
	db 35, ICE_BEAM
	db 37, ROCK_SLIDE
	db 39, BODY_SLAM
	db 41, SWORDS_DANCE
	db 50, THRASH
	db 0

ArcanineEvosMoves:
; Evolutions
	db 0
; Learnset
	db 3, GROWL
	db 5, LEER
	db 7, EMBER
	db 9, DRAGON_RAGE
	db 11, ROCK_THROW
	db 13, BITE
	db 15, FOCUS_ENERGY
	db 17, RAGE
	db 19, FURY_SWIPES
	db 21, SWIFT
	db 23, HEADBUTT
	db 25, FIRE_PUNCH
	db 27, TAKE_DOWN
	db 29, SLASH
	db 31, AGILITY
	db 33, SCREECH
	db 35, FLAMETHROWER
	db 37, SLAM
	db 39, ROCK_SLIDE
	db 41, BODY_SLAM
	db 43, EARTHQUAKE
	db 45, SWORDS_DANCE
	db 50, THRASH

MewEvosMoves:
; Evolutions
	db 0
; Learnset
	db 3, TAIL_WHIP
	db 5, DEFENSE_CURL
	db 7, CONFUSION
	db 9, QUICK_ATTACK
	db 11, MEDITATE
	db 13, FOCUS_ENERGY
	db 15, RECOVER
	db 17, FURY_SWIPES
	db 19, SWIFT
	db 21, CONFUSE_RAY
	db 23, REFLECT
	db 25, PSYBEAM
	db 27, BARRIER
	db 29, TAKE_DOWN
	db 31, AGILITY
	db 33, LIGHT_SCREEN
	db 35, PSYCHIC_M
	db 37, BODY_SLAM
	db 39, AMNESIA
	db 0

GyaradosEvosMoves:
; Evolutions
	db 0
; Learnset
	db 5, TAIL_WHIP
	db 7, WATER_GUN
	db 9, DRAGON_RAGE
	db 11, QUICK_ATTACK
	db 13, BITE
	db 15, FOCUS_ENERGY
	db 17, DOUBLESLAP
	db 19, RAGE
	db 21, FURY_ATTACK
	db 23, BUBBLEBEAM
	db 25, HEADBUTT
	db 27, TAKE_DOWN
	db 29, SLASH
	db 31, SCREECH
	db 33, WATERFALL
	db 35, SLAM
	db 37, ROCK_SLIDE
	db 39, BODY_SLAM
	db 50, THRASH
	db 0

ShellderEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 35, CLOYSTER
	db 0
; Learnset
	db 3, LEER
	db 5, DEFENSE_CURL
	db 7, WATER_GUN
	db 9, AURORA_BEAM
	db 11, WITHDRAW
	db 13, HORN_ATTACK
	db 15, SPIKE_CANNON
	db 17, RAGE
	db 19, BITE
	db 21, FURY_ATTACK
	db 23, SWIFT
	db 25, BUBBLEBEAM
	db 27, VICEGRIP
	db 29, TAKE_DOWN
	db 31, SLASH
	db 33, SCREECH
	db 35, ICE_BEAM
	db 37, WATERFALL
	db 39, BODY_SLAM
	db 50, THRASH
	db 0


TentacoolEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 30, TENTACRUEL
	db 0
; Learnset
	db 5, SUPERSONIC
	db 7, WATER_GUN
	db 9, SMOG
	db 11, ABSORB
	db 13, FOCUS_ENERGY
	db 15, DOUBLESLAP
	db 17, RAGE
	db 19, FURY_ATTACK
	db 21, SWIFT
	db 23, BUBBLEBEAM
	db 25, ACID
	db 27, VICEGRIP
	db 29, MEGA_DRAIN
	db 31, LEECH_LIFE
	db 33, SCREECH
	db 35, WATERFALL
	db 37, SLUDGE
	db 39, BODY_SLAM
	db 43, ACID_ARMOR
	db 50, THRASH
	db 0

GastlyEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 25, HAUNTER
	db 0
; Learnset
	db 5, LICK
	db 7, SMOG
	db 9, AURORA_BEAM
	db 11, QUICK_ATTACK
	db 13, SMOKESCREEN
	db 15, BITE
	db 17, FOCUS_ENERGY
	db 19, RAGE
	db 21, FURY_SWIPES
	db 23, CONFUSE_RAY
	db 25, ACID
	db 27, ICE_PUNCH
	db 29, HEADBUTT
	db 31, TAKE_DOWN
	db 33, SLASH
	db 35, NIGHT_SHADE
	db 37, SLUDGE
	db 39, ICE_BEAM
	db 43, ACID_ARMOR
	db 50, THRASH
	db 0

ScytherEvosMoves:
; Evolutions
	db 0
; Learnset
	db 3, LEER
	db 5, HARDEN
	db 7, PIN_MISSILE
	db 9, GUST
	db 11, KARATE_CHOP
	db 13, SONICBOOM
	db 15, ROCK_THROW
	db 17, FOCUS_ENERGY
	db 19, FURY_SWIPES
	db 21, SWIFT
	db 23, LEECH_LIFE
	db 25, WING_ATTACK
	db 27, TAKE_DOWN
	db 29, SLASH
	db 31, AGILITY
	db 33, SCREECH
	db 35, TWINEEDLE
	db 37, DRILL_PECK
	db 39, BODY_SLAM
	db 41, ROCK_SLIDE
	db 43, SWORDS_DANCE
	db 50, THRASH
	db 0

StaryuEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 35, STARMIE
	db 0
; Learnset
	db 5, SUPERSONIC
	db 7, WATER_GUN
	db 9, CONFUSION
	db 11, AURORA_BEAM
	db 13, FOCUS_ENERGY
	db 15, RAGE
	db 17, RECOVER
	db 19, SWIFT
	db 21, CONFUSE_RAY
	db 23, BUBBLEBEAM
	db 25, PSYBEAM
	db 27, BARRIER
	db 29, TAKE_DOWN
	db 31, SCREECH
	db 33, LIGHT_SCREEN
	db 35, WATERFALL
	db 37, PSYCHIC_M
	db 39, ICE_BEAM
	db 41, BODY_SLAM
	db 50, THRASH
	db 0

BlastoiseEvosMoves:
; Evolutions
	db 0
; Learnset
	db 3, TAIL_WHIP
	db 5, DEFENSE_CURL
	db 7, WATER_GUN
	db 9, AURORA_BEAM
	db 11, WITHDRAW
	db 13, BITE
	db 15, FOCUS_ENERGY
	db 17, RAGE
	db 19, FURY_SWIPES
	db 21, SWIFT
	db 23, BUBBLEBEAM
	db 25, ICE_PUNCH
	db 27, HEADBUTT
	db 29, TAKE_DOWN
	db 31, SLASH
	db 33, SCREECH
	db 35, WATERFALL
	db 37, ICE_BEAM
	db 39, BODY_SLAM
	db 41, AMNESIA
	db 50, THRASH
	db 0

PinsirEvosMoves:
; Evolutions
	db 0
; Learnset
	db 5, PIN_MISSILE
	db 7, COMET_PUNCH
	db 9, KARATE_CHOP
	db 11, ROCK_THROW
	db 13, HORN_ATTACK
	db 15, FOCUS_ENERGY
	db 17, FURY_ATTACK
	db 19, RAGE
	db 21, FURY_SWIPES
	db 23, LEECH_LIFE
	db 25, LOW_KICK
	db 27, HEADBUTT
	db 29, SLASH
	db 31, TAKE_DOWN
	db 33, TWINEEDLE
	db 35, SUBMISSION
	db 37, BODY_SLAM
	db 39, ROCK_SLIDE
	db 41, SWORDS_DANCE
	db 50, THRASH
	db 0
	
TangelaEvosMoves:
; Evolutions
	db 0
; Learnset
	db 3, DEFENSE_CURL
	db 5, LEER
	db 7, ABSORB
	db 9, ROCK_THROW
	db 11, POUND
	db 13, FOCUS_ENERGY
	db 15, DOUBLESLAP
	db 17, FURY_ATTACK
	db 19, RAGE
	db 21, GROWTH
	db 23, FURY_SWIPES
	db 25, MEGA_DRAIN
	db 27, HEADBUTT
	db 29, TAKE_DOWN
	db 31, SLASH
	db 33, RAZOR_LEAF
	db 35, ROCK_SLIDE
	db 37, BODY_SLAM
	db 50, THRASH
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
	db EVOLVE_LEVEL, 35, ARCANINE
	db 0
; Learnset
	db 3, GROWL
	db 5, LEER
	db 7, EMBER
	db 9, DRAGON_RAGE
	db 11, ROCK_THROW
	db 13, BITE
	db 15, FOCUS_ENERGY
	db 17, RAGE
	db 19, FURY_SWIPES
	db 21, SWIFT
	db 23, HEADBUTT
	db 25, FIRE_PUNCH
	db 27, TAKE_DOWN
	db 29, SLASH
	db 31, AGILITY
	db 33, SCREECH
	db 35, FLAMETHROWER
	db 37, SLAM
	db 39, ROCK_SLIDE
	db 41, BODY_SLAM
	db 43, EARTHQUAKE
	db 45, SWORDS_DANCE
	db 50, THRASH

OnixEvosMoves:
; Evolutions
	db 0
; Learnset
	db 3, SUPERSONIC
	db 5, DEFENSE_CURL
	db 7, ROCK_THROW
	db 9, DRAGON_RAGE
	db 11, POUND
	db 13, BITE
	db 15, RAGE
	db 17, FURY_ATTACK
	db 19, DIG
	db 21, SWIFT
	db 23, HEADBUTT
	db 25, VICEGRIP
	db 27, HORN_ATTACK
	db 29, TAKE_DOWN
	db 31, SLASH
	db 33, SCREECH
	db 35, ROCK_SLIDE
	db 37, SLAM
	db 39, EARTHQUAKE
	db 41, BODY_SLAM
	db 50, THRASH
	db 0

FearowEvosMoves:
; Evolutions
	db 0
; Learnset
	db 3, GROWL
	db 5, LEER
	db 7, GUST
	db 9, QUICK_ATTACK
	db 11, SONICBOOM
	db 13, FOCUS_ENERGY
	db 15, FURY_SWIPES
	db 17, RAGE
	db 19, FURY_ATTACK
	db 21, SWIFT
	db 23, WING_ATTACK
	db 25, HEADBUTT
	db 25, TAKE_DOWN
	db 29, SLASH
	db 31, AGILITY 
	db 33, SCREECH
	db 35, DRILL_PECK
	db 37, BODY_SLAM
	db 39, SWORDS_DANCE
	db 50, RAZOR_WIND
	db 0

PidgeyEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 18, PIDGEOTTO
	db 0
; Learnset
	db 3, GROWL
	db 5, LEER
	db 7, GUST
	db 9, QUICK_ATTACK
	db 11, SONICBOOM
	db 13, FOCUS_ENERGY
	db 15, FURY_SWIPES
	db 17, RAGE
	db 19, FURY_ATTACK
	db 21, SWIFT
	db 23, WING_ATTACK
	db 25, HEADBUTT
	db 27, SLASH
	db 29, TAKE_DOWN
	db 31, AGILITY
	db 33, SCREECH
	db 35, DRILL_PECK
	db 37, BODY_SLAM
	db 39, SWORDS_DANCE
	db 50, RAZOR_WIND
	db 0

SlowpokeEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 37, SLOWBRO
	db 0
; Learnset
	db 5, TAIL_WHIP
	db 7, WATER_GUN
	db 9, CONFUSION
	db 11, POUND
	db 13, BITE
	db 15, DOUBLESLAP
	db 17, RAGE
	db 19, FURY_SWIPES
	db 21, SWIFT
	db 23, BUBBLEBEAM
	db 25, PSYBEAM
	db 27, HEADBUTT
	db 29, AMNESIA
	db 31, TAKE_DOWN
	db 33, LIGHT_SCREEN
	db 35, WATERFALL
	db 37, PSYCHIC_M
	db 39, BODY_SLAM
	db 50, THRASH
	db 0

KadabraEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 45, ALAKAZAM
	db 0
; Learnset
	db 3, TAIL_WHIP
	db 5, DEFENSE_CURL
	db 7, CONFUSION
	db 9, QUICK_ATTACK
	db 11, FOCUS_ENERGY
	db 13, DOUBLESLAP
	db 15, FURY_SWIPES
	db 17, RECOVER
	db 19, KINESIS
	db 21, SWIFT
	db 23, REFLECT
	db 25, PSYBEAM
	db 27, HEADBUTT
	db 29, TAKE_DOWN
	db 31, SLASH
	db 33, LIGHT_SCREEN
	db 35, PSYCHIC_M
	db 37, TRI_ATTACK
	db 39, BODY_SLAM
	db 0
	
GravelerEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 45, GOLEM
	db 0
; Learnset
	db 3, LEER
	db 5, DEFENSE_CURL
	db 7, ROCK_THROW
	db 9, COMET_PUNCH
	db 11, POUND
	db 13, FOCUS_ENERGY
	db 15, DOUBLESLAP
	db 17, RAGE
	db 19, DIG
	db 21, SWIFT
	db 23, HEADBUTT
	db 25, DIZZY_PUNCH
	db 27, STOMP
	db 29, TAKE_DOWN
	db 31, SCREECH
	db 33, ROCK_SLIDE
	db 35, EARTHQUAKE
	db 37, BODY_SLAM
	db 50, THRASH
	db 0

ChanseyEvosMoves:
; Evolutions
	db 0
; Learnset
	db 3, TAIL_WHIP
	db 5, DEFENSE_CURL
	db 7, CONFUSION
	db 9, POUND
	db 11, FOCUS_ENERGY
	db 13, DOUBLESLAP
	db 15, SING
	db 17, SOFTBOILED
	db 19, SWIFT
	db 21, CONFUSE_RAY
	db 23, REFLECT
	db 25, PSYBEAM
	db 27, HEADBUTT
	db 29, BARRIER
	db 31, TAKE_DOWN
	db 33, LIGHT_SCREEN
	db 35, PSYCHIC_M
	db 37, BODY_SLAM
	db 50, EGG_BOMB
	db 0

MachokeEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 45, MACHAMP
	db 0
; Learnset
	db 5, LEER
	db 7, KARATE_CHOP
	db 9, COMET_PUNCH
	db 11, ROCK_THROW
	db 13, SONICBOOM
	db 15, FOCUS_ENERGY
	db 17, DOUBLESLAP
	db 19, RAGE
	db 21, SWIFT
	db 23, LOW_KICK
	db 25, DIZZY_PUNCH
	db 27, STOMP
	db 29, HEADBUTT
	db 31, TAKE_DOWN
	db 33, AGILITY
	db 35, SUBMISSION
	db 37, ROCK_SLIDE
	db 39, BODY_SLAM
	db 50, THRASH
	db 0

MrMimeEvosMoves:
; Evolutions
	db 0
; Learnset
	db 5, DEFENSE_CURL
	db 7, CONFUSION
	db 9, POUND
	db 11, QUICK_ATTACK
	db 13, MEDITATE
	db 15, DOUBLESLAP
	db 17, FURY_SWIPES
	db 19, SWIFT
	db 21, CONFUSE_RAY
	db 23, REFLECT
	db 25, PSYBEAM
	db 27, HEADBUTT
	db 29, BARRIER
	db 31, TAKE_DOWN
	db 33, LIGHT_SCREEN
	db 35, PSYCHIC_M
	db 37, BODY_SLAM
	db 0

HitmonleeEvosMoves:
; Evolutions
	db 0
; Learnset
	db 5, LEER
	db 7, KARATE_CHOP
	db 9, ROCK_THROW
	db 11, QUICK_ATTACK
	db 13, MEDITATE
	db 15, SONICBOOM
	db 17, FOCUS_ENERGY
	db 19, DOUBLESLAP
	db 21, RAGE
	db 23, ROLLING_KICK
	db 25, LOW_KICK
	db 27, HEADBUTT
	db 29, TAKE_DOWN
	db 31, AGILITY
	db 33, JUMP_KICK
	db 35, SUBMISSION
	db 37, ROCK_SLIDE
	db 39, BODY_SLAM
	db 50, HI_JUMP_KICK
	db 0

HitmonchanEvosMoves:
; Evolutions
	db 0
; Learnset
	db 5, LEER
	db 7, COMET_PUNCH
	db 9, KARATE_CHOP
	db 11, ROCK_THROW
	db 13, MEDITATE
	db 15, SONICBOOM
	db 17, FOCUS_ENERGY
	db 19, DOUBLESLAP
	db 21, FURY_ATTACK
	db 23, DIZZY_PUNCH
	db 25, FIRE_PUNCH
	db 27, THUNDERPUNCH
	db 29, ICE_PUNCH
	db 31, TAKE_DOWN
	db 33, AGILITY
	db 35, SUBMISSION
	db 37, ROCK_SLIDE
	db 39, BODY_SLAM
	db 50, THRASH
	db 0

ArbokEvosMoves:
; Evolutions
	db 0
; Learnset
	db 3, GROWL
	db 5, TAIL_WHIP
	db 7, SMOG
	db 9, DRAGON_RAGE
	db 11, ROCK_THROW
	db 13, BITE
	db 15, FOCUS_ENERGY
	db 17, FURY_ATTACK
	db 19, RAGE
	db 21, SWIFT
	db 23, ACID
	db 25, HEADBUTT
	db 27, TAKE_DOWN
	db 29, SLASH
	db 31, AGILITY
	db 33, SCREECH
	db 35, SLUDGE
	db 37, SLAM
	db 39, ROCK_SLIDE
	db 41, BODY_SLAM
	db 50, THRASH
	db 0

ParasectEvosMoves:
; Evolutions
	db 0
; Learnset
	db 3, GROWL
	db 5, DEFENSE_CURL
	db 7, PIN_MISSILE
	db 9, SMOG
	db 11, ABSORB
	db 13, FURY_SWIPES
	db 15, RAGE
	db 17, GROWTH
	db 19, FURY_ATTACK
	db 21, CONFUSE_RAY
	db 23, SPORE
	db 25, LEECH_LIFE
	db 27, ACID
	db 29, MEGA_DRAIN
	db 31, TAKE_DOWN
	db 33, SLASH
	db 35, TWINEEDLE
	db 37, NIGHT_SHADE
	db 39, SLUDGE
	db 41, BODY_SLAM
	db 50, THRASH
	db 0

PsyduckEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 33, GOLDUCK
	db 0
; Learnset
	db 3, TAIL_WHIP
	db 5, DEFENSE_CURL
	db 7, WATER_GUN
	db 9, CONFUSION
	db 11, POUND
	db 13, FOCUS_ENERGY
	db 15, DOUBLESLAP
	db 17, RAGE
	db 19, FURY_SWIPES
	db 21, SWIFT
	db 23, BUBBLEBEAM
	db 25, PSYBEAM
	db 27, HEADBUTT
	db 29, TAKE_DOWN
	db 31, SLASH
	db 33, SCREECH
	db 35, WATERFALL
	db 37, PSYCHIC_M
	db 39, BODY_SLAM
	db 50, THRASH
	db 0

DrowzeeEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 26, HYPNO
	db 0
; Learnset
	db 7, CONFUSION
	db 9, LICK
	db 11, AURORA_BEAM
	db 13, POUND
	db 15, DOUBLESLAP
	db 17, RAGE
	db 19, FURY_SWIPES
	db 21, CONFUSE_RAY
	db 23, PSYBEAM
	db 25, ICE_PUNCH
	db 27, HEADBUTT
	db 29, BARRIER
	db 31, AMNESIA
	db 33, LIGHT_SCREEN
	db 35, PSYCHIC_M
	db 37, NIGHT_SHADE
	db 39, ICE_BEAM
	db 50, THRASH
	db 0

GolemEvosMoves:
; Evolutions
	db 0
; Learnset
	db 3, LEER
	db 5, DEFENSE_CURL
	db 7, ROCK_THROW
	db 9, COMET_PUNCH
	db 11, POUND
	db 13, FOCUS_ENERGY
	db 15, DOUBLESLAP
	db 17, RAGE
	db 19, DIG
	db 21, SWIFT
	db 23, HEADBUTT
	db 25, DIZZY_PUNCH
	db 27, STOMP
	db 29, TAKE_DOWN
	db 31, SCREECH
	db 33, ROCK_SLIDE
	db 35, EARTHQUAKE
	db 37, BODY_SLAM
	db 50, THRASH
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
	db 4, TAIL_WHIP
	db 7, EMBER
	db 9, QUICK_ATTACK
	db 11, SMOKESCREEN
	db 13, MEDITATE
	db 15, BITE
	db 17, FURY_ATTACK
	db 19, FURY_SWIPES
	db 21, SWIFT
	db 23, CONFUSE_RAY
	db 25, FIRE_PUNCH
	db 27, HEADBUTT
	db 29, TAKE_DOWN
	db 31, SLASH
	db 33, LIGHT_SCREEN
	db 35, FLAMETHROWER
	db 37, BODY_SLAM
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
	db 4, TAIL_WHIP
	db 7, THUNDERSHOCK
	db 9, KARATE_CHOP
	db 11, COMET_PUNCH
	db 13, QUICK_ATTACK
	db 15, FOCUS_ENERGY
	db 18, FURY_SWIPES
	db 20, SWIFT
	db 22, THUNDERPUNCH
	db 24, LOW_KICK
	db 26, DIZZY_PUNCH
	db 28, HEADBUTT
	db 30, TAKE_DOWN
	db 32, SLASH
	db 34, LIGHT_SCREEN
	db 36, THUNDERBOLT
	db 40, SUBMISSION
	db 42, BODY_SLAM
	db 0

MagnetonEvosMoves:
; Evolutions
	db 0
; Learnset
	db 3, SUPERSONIC
	db 5, HARDEN
	db 7, THUNDERSHOCK
	db 11, QUICK_ATTACK
	db 13, SONICBOOM
	db 15, FOCUS_ENERGY
	db 17, RAGE
	db 19, SWIFT
	db 21, REFLECT
	db 23, THUNDERPUNCH
	db 25, HEADBUTT
	db 27, BARRIER
	db 29, TAKE_DOWN
	db 31, SCREECH
	db 33, LIGHT_SCREEN
	db 35, THUNDERBOLT
	db 37, TRI_ATTACK
	db 39, BODY_SLAM
	db 50, THRASH, 
	db 0

KoffingEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 35, WEEZING
	db 0
; Learnset
	db 5, DEFENSE_CURL
	db 7, SMOG
	db 9, EMBER
	db 11, SMOKESCREEN
	db 13, SONICBOOM
	db 15, FOCUS_ENERGY
	db 17, RAGE
	db 19, SWIFT
	db 21, CONFUSE_RAY
	db 23, ACID
	db 25, PSYBEAM
	db 29, HEADBUTT
	db 31, TAKE_DOWN
	db 33, SCREECH
	db 35, FLAMETHROWER
	db 37, SLUDGE
	db 39, BODY_SLAM
	db 50, THRASH
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
	db 3, LEER
	db 5, KARATE_CHOP
	db 7, COMET_PUNCH
	db 9, LICK
	db 11, ROCK_THROW
	db 13, BITE
	db 15, FOCUS_ENERGY
	db 17, RAGE
	db 19, FURY_SWIPES
	db 21, SWIFT
	db 23, LOW_KICK
	db 25, ICE_PUNCH
	db 27, TAKE_DOWN
	db 29, SLASH
	db 31, SCREECH
	db 33, SUBMISSION
	db 35, NIGHT_SHADE
	db 37, ROCK_SLIDE
	db 39, BODY_SLAM
	db 50, THRASH
	db 0

SeelEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 34, DEWGONG
	db 0
; Learnset
	db 3, GROWL
	db 5, DEFENSE_CURL
	db 7, WATER_GUN
	db 9, AURORA_BEAM
	db 11, LICK
	db 13, BITE
	db 15, DOUBLESLAP
	db 17, FURY_ATTACK
	db 19, RAGE
	db 21, FURY_SWIPES
	db 23, BUBBLEBEAM
	db 25, ICE_PUNCH
	db 27, TAKE_DOWN
	db 29, SLASH
	db 31, SCREECH
	db 33, WATERFALL
	db 35, ICE_BEAM
	db 37, DRILL_PECK
	db 39, EARTHQUAKE
	db 41, BODY_SLAM
	db 50, THRASH
	db 0

DiglettEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 26, DUGTRIO
	db 0
; Learnset
	db 3, GROWL
	db 5, DEFENSE_CURL
	db 7, ROCK_THROW
	db 9, QUICK_ATTACK
	db 11, FOCUS_ENERGY
	db 13, DOUBLESLAP
	db 15, FURY_SWIPES
	db 17, RAGE
	db 19, DIG
	db 21, SWIFT
	db 23, REFLECT
	db 25, HEADBUTT
	db 27, TAKE_DOWN
	db 29, SLASH
	db 31, AGILITY
	db 33, SCREECH
	db 35, EARTHQUAKE
	db 37, ROCK_SLIDE
	db 39, TRI_ATTACK
	db 41, BODY_SLAM
	db 50, THRASH
	db 0

TaurosEvosMoves:
; Evolutions
	db 0
; Learnset
	db 3, TAIL_WHIP
	db 5, LEER
	db 7, QUICK_ATTACK
	db 9, ROCK_THROW
	db 11, HORN_ATTACK
	db 13, BITE
	db 15, FOCUS_ENERGY
	db 17, RAGE
	db 19, DIG
	db 21, FURY_ATTACK
	db 23, HEADBUTT
	db 25, STOMP
	db 27, LOW_KICK
	db 29, SLASH
	db 31, TAKE_DOWN
	db 33, AGILITY
	db 35, BODY_SLAM
	db 37, EARTHQUAKE
	db 39, ROCK_SLIDE
	db 43, SWORDS_DANCE
	db 50, THRASH
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
	db 3, TAIL_WHIP
	db 5, LEER
	db 7, KARATE_CHOP
	db 9, GUST
	db 11, QUICK_ATTACK
	db 13, FOCUS_ENERGY
	db 15, FURY_ATTACK
	db 17, RAGE
	db 19, FURY_SWIPES
	db 21, SWIFT
	db 23, WING_ATTACK
	db 25, LOW_KICK
	db 27, DIZZY_PUNCH
	db 29, TAKE_DOWN
	db 31, SLASH
	db 33, AGILITY
	db 35, DRILL_PECK
	db 37, SUBMISSION
	db 39, BODY_SLAM
	db 41, SWORDS_DANCE
	db 50, THRASH
	db 0

VenonatEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 31, VENOMOTH
	db 0
; Learnset
	db 3, LEER
	db 5, SUPERSONIC
	db 7, SMOG
	db 9, CONFUSION
	db 11, PIN_MISSILE
	db 13, RAGE
	db 15, QUICK_ATTACK
	db 17, BITE
	db 19, FURY_SWIPES
	db 21, REFLECT
	db 23, ACID
	db 25, PSYBEAM
	db 27, LEECH_LIFE
	db 29, MEGA_DRAIN
	db 31, TAKE_DOWN
	db 33, SLASH
	db 35, SLUDGE
	db 37, PSYCHIC_M
	db 39, TWINEEDLE
	db 41, BODY_SLAM
	db 50, THRASH
	db 0

DragoniteEvosMoves:
; Evolutions
	db 0
; Learnset
	db 5, TAIL_WHIP
	db 7, DRAGON_RAGE
	db 9, WATER_GUN
	db 11, THUNDERSHOCK
	db 13, BITE
	db 15, FOCUS_ENERGY
	db 17, SWIFT
	db 19, FURY_ATTACK
	db 21, RAGE
	db 23, BUBBLEBEAM
	db 25, HORN_ATTACK
	db 27, HEADBUTT
	db 29, TAKE_DOWN
	db 31, AGILITY
	db 33, SLAM
	db 35, WATERFALL
	db 37, THUNDERBOLT
	db 39, BODY_SLAM
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
	db 3, GROWL
	db 5, SUPERSONIC
	db 7, GUST
	db 9, QUICK_ATTACK
	db 11, FOCUS_ENERGY
	db 13, FURY_ATTACK
	db 15, RAGE
	db 17, DIG
	db 19, FURY_SWIPES
	db 21, SWIFT
	db 23, WING_ATTACK
	db 25, LOW_KICK
	db 27, HEADBUTT
	db 29, STOMP
	db 31, SLASH
	db 33, TAKE_DOWN
	db 35, AGILITY
	db 37, DRILL_PECK
	db 39, EARTHQUAKE
	db 41, JUMP_KICK
	db 43, BODY_SLAM
	db 45, TRI_ATTACK
	db 47, SWORDS_DANCE
	db 50, THRASH
	db 0

PoliwagEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 25, POLIWHIRL
	db 0
; Learnset
	db 5, TAIL_WHIP
	db 7, WATER_GUN
	db 9, KARATE_CHOP
	db 11, CONFUSION
	db 13, FOCUS_ENERGY
	db 15, DOUBLESLAP
	db 17, RAGE
	db 19, SWIFT
	db 21, CONFUSE_RAY
	db 23, BUBBLEBEAM
	db 25, LOW_KICK
	db 27, PSYBEAM
	db 29, ICE_PUNCH
	db 31, AMNESIA
	db 33, TAKE_DOWN
	db 35, WATERFALL
	db 37, SUBMISSION
	db 39, PSYCHIC_M
	db 41, BODY_SLAM
	db 50, THRASH
	db 0

JynxEvosMoves:
; Evolutions
	db 0
; Learnset
	db 3, LEER
	db 5, LOVELY_KISS
	db 7, AURORA_BEAM
	db 9, CONFUSION
	db 11, QUICK_ATTACK
	db 13, MEDITATE
	db 15, DOUBLESLAP
	db 17, RAGE
	db 19, CONFUSE_RAY
	db 21, REFLECT
	db 23, ICE_PUNCH
	db 25, PSYBEAM
	db 27, TAKE_DOWN
	db 29, SLASH
	db 31, SCREECH
	db 33, LIGHT_SCREEN
	db 35, ICE_BEAM
	db 37, PSYCHIC_M
	db 39, BODY_SLAM
	db 50, THRASH
	db 0

MoltresEvosMoves:
; Evolutions
	db 0
; Learnset
	db 5, LEER
	db 7, EMBER
	db 9, GUST
	db 11, QUICK_ATTACK
	db 13, SONICBOOM
	db 15, FOCUS_ENERGY
	db 17, FURY_ATTACK
	db 19, RAGE
	db 21, SWIFT
	db 23, REFLECT
	db 25, WING_ATTACK
	db 27, TAKE_DOWN
	db 29, SLASH
	db 31, SCREECH
	db 33, AGILITY
	db 35, FLAMETHROWER
	db 37, DRILL_PECK
	db 39, BODY_SLAM
	db 41, TRI_ATTACK
	db 50, SKY_ATTACK
	db 0

ArticunoEvosMoves:
; Evolutions
	db 0
; Learnset
	db 5, LEER
	db 7, AURORA_BEAM
	db 9, GUST
	db 11, QUICK_ATTACK
	db 13, SONICBOOM
	db 15, FOCUS_ENERGY
	db 17, FURY_ATTACK
	db 19, RAGE
	db 21, SWIFT
	db 23, REFLECT
	db 25, WING_ATTACK
	db 27, TAKE_DOWN
	db 29, SLASH
	db 31, SCREECH
	db 33, AGILITY
	db 35, ICE_BEAM
	db 37, DRILL_PECK
	db 39, BODY_SLAM
	db 41, TRI_ATTACK
	db 50, SKY_ATTACK
	db 0

ZapdosEvosMoves:
; Evolutions
	db 0
; Learnset
	db 5, LEER
	db 7, THUNDERSHOCK
	db 9, GUST
	db 11, QUICK_ATTACK
	db 13, SONICBOOM
	db 15, FOCUS_ENERGY
	db 17, FURY_ATTACK
	db 19, RAGE
	db 21, SWIFT
	db 23, REFLECT
	db 25, WING_ATTACK
	db 27, TAKE_DOWN
	db 29, SLASH
	db 31, SCREECH
	db 33, AGILITY
	db 35, THUNDERBOLT
	db 37, DRILL_PECK
	db 39, BODY_SLAM
	db 41, TRI_ATTACK
	db 50, SKY_ATTACK
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
	db 5, LEER
	db 7, PAY_DAY
	db 9, QUICK_ATTACK
	db 11, ROCK_THROW
	db 13, BITE
	db 15, FOCUS_ENERGY
	db 17, FURY_SWIPES
	db 19, RAGE
	db 21, DIG
	db 23, HEADBUTT
	db 25, STOMP
	db 27, TAKE_DOWN
	db 29, SLASH
	db 31, LIGHT_SCREEN
	db 33, SCREECH
	db 35, EARTHQUAKE
	db 37, BODY_SLAM
	db 39, ROCK_SLIDE
	db 50, THRASH
	db 0

KrabbyEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 28, KINGLER
	db 0
; Learnset
	db 3, LEER
	db 5, HARDEN
	db 7, WATER_GUN
	db 9, ROCK_THROW
	db 11, FOCUS_ENERGY
	db 13, FURY_SWIPES
	db 15, RAGE
	db 17, DIG
	db 19, FURY_ATTACK
	db 21, REFLECT
	db 23, BUBBLEBEAM
	db 25, VICEGRIP
	db 27, HEADBUTT
	db 29, SLASH
	db 31, TAKE_DOWN
	db 33, AGILITY
	db 35, WATERFALL
	db 37, ROCK_SLIDE
	db 39, EARTHQUAKE
	db 41, BODY_SLAM 
	db 50, CRABHAMMER
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
	db EVOLVE_LEVEL, 35, NINETALES
	db 0
; Learnset
	db 5, TAIL_WHIP
	db 7, EMBER
	db 9, LICK
	db 11, CONFUSION
	db 13, QUICK_ATTACK
	db 15, BITE
	db 17, FOCUS_ENERGY
	db 19, FURY_SWIPES
	db 21, CONFUSE_RAY
	db 23, REFLECT
	db 25, PSYBEAM
	db 27, HEADBUTT
	db 29, SLASH
	db 31, TAKE_DOWN
	db 33, LIGHT_SCREEN
	db 35, FLAMETHROWER
	db 37, NIGHT_SHADE
	db 39, PSYCHIC_M
	db 41, BODY_SLAM
	db 0

NinetalesEvosMoves:
; Evolutions
	db 0
; Learnset
	db 5, TAIL_WHIP
	db 7, EMBER
	db 9, LICK
	db 11, CONFUSION
	db 13, QUICK_ATTACK
	db 15, BITE
	db 17, FOCUS_ENERGY
	db 19, FURY_SWIPES
	db 21, CONFUSE_RAY
	db 23, REFLECT
	db 25, PSYBEAM
	db 27, HEADBUTT
	db 29, SLASH
	db 31, TAKE_DOWN
	db 33, LIGHT_SCREEN
	db 35, FLAMETHROWER
	db 37, NIGHT_SHADE
	db 39, PSYCHIC_M
	db 41, BODY_SLAM
	db 0

PikachuEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 35, RAICHU
	db 0
; Learnset
	db 3, GROWL
	db 5, TAIL_WHIP
	db 7, THUNDERSHOCK
	db 9, QUICK_ATTACK
	db 11, KARATE_CHOP
	db 13, SONICBOOM
	db 17, FURY_SWIPES
	db 19, SWIFT
	db 23, THUNDERPUNCH
	db 25, DIZZY_PUNCH
	db 27, HEADBUTT
	db 29, TAKE_DOWN
	db 31, SLASH
	db 33, AGILITY
	db 35, THUNDERBOLT
	db 37, BODY_SLAM
	db 50, THRASH
	db 0

RaichuEvosMoves:
; Evolutions
	db 0
; Learnset
	db 3, GROWL
	db 5, TAIL_WHIP
	db 7, THUNDERSHOCK
	db 9, QUICK_ATTACK
	db 11, KARATE_CHOP
	db 13, SONICBOOM
	db 17, FURY_SWIPES
	db 19, SWIFT
	db 23, THUNDERPUNCH
	db 25, DIZZY_PUNCH
	db 27, HEADBUTT
	db 29, TAKE_DOWN
	db 31, SLASH
	db 33, AGILITY
	db 35, THUNDERBOLT
	db 37, BODY_SLAM
	db 50, THRASH
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
	db 5, TAIL_WHIP
	db 7, DRAGON_RAGE
	db 9, WATER_GUN
	db 11, THUNDERSHOCK
	db 13, BITE
	db 15, FOCUS_ENERGY
	db 17, SWIFT
	db 19, FURY_ATTACK
	db 21, RAGE
	db 23, BUBBLEBEAM
	db 25, HORN_ATTACK
	db 27, HEADBUTT
	db 29, TAKE_DOWN
	db 31, AGILITY
	db 33, SLAM
	db 35, WATERFALL
	db 37, THUNDERBOLT
	db 39, BODY_SLAM
	db 0

DragonairEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 55, DRAGONITE
	db 0
; Learnset
	db 5, TAIL_WHIP
	db 7, DRAGON_RAGE
	db 9, WATER_GUN
	db 11, THUNDERSHOCK
	db 13, BITE
	db 15, FOCUS_ENERGY
	db 17, SWIFT
	db 19, FURY_ATTACK
	db 21, RAGE
	db 23, BUBBLEBEAM
	db 25, HORN_ATTACK
	db 27, HEADBUTT
	db 29, TAKE_DOWN
	db 31, AGILITY
	db 33, SLAM
	db 35, WATERFALL
	db 37, THUNDERBOLT
	db 39, BODY_SLAM
	db 0

KabutoEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 40, KABUTOPS
	db 0
; Learnset
	db 3, LEER
	db 5, HARDEN
	db 7, ROCK_THROW
	db 9, PIN_MISSILE
	db 11, ABSORB
	db 13, FURY_SWIPES
	db 15, RAGE
	db 17, DIG
	db 19, FURY_ATTACK
	db 21, SWIFT
	db 23, LEECH_LIFE
	db 25, MEGA_DRAIN
	db 27, HEADBUTT
	db 29, SLASH
	db 31, TAKE_DOWN
	db 33, ROCK_SLIDE
	db 35, TWINEEDLE
	db 37, EARTHQUAKE
	db 39, BODY_SLAM
	db 41, SWORDS_DANCE
	db 50, THRASH
	db 0

KabutopsEvosMoves:
; Evolutions
	db 0
; Learnset
	db 3, LEER
	db 5, HARDEN
	db 7, ROCK_THROW
	db 9, PIN_MISSILE
	db 11, ABSORB
	db 13, FURY_SWIPES
	db 15, RAGE
	db 17, DIG
	db 19, FURY_ATTACK
	db 21, SWIFT
	db 23, LEECH_LIFE
	db 25, MEGA_DRAIN
	db 27, HEADBUTT
	db 29, SLASH
	db 31, TAKE_DOWN
	db 33, ROCK_SLIDE
	db 35, TWINEEDLE
	db 37, EARTHQUAKE
	db 39, BODY_SLAM
	db 41, SWORDS_DANCE
	db 50, THRASH
	db 0

HorseaEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 32, SEADRA
	db 0
; Learnset
	db 3, TAIL_WHIP
	db 5, LEER
	db 7, WATER_GUN
	db 9, DRAGON_RAGE
	db 11, QUICK_ATTACK
	db 13, SONICBOOM
	db 15, SMOKESCREEN
	db 17, FOCUS_ENERGY
	db 19, RAGE
	db 21, SWIFT
	db 23, BUBBLEBEAM
	db 25, HEADBUTT
	db 27, TAKE_DOWN
	db 29, SLASH
	db 31, AGILITY
	db 33, SCREECH
	db 35, WATERFALL
	db 37, SLAM
	db 39, BODY_SLAM
	db 41, SWORDS_DANCE
	db 50, THRASH
	db 0

SeadraEvosMoves:
; Evolutions
	db 0
; Learnset
	db 3, TAIL_WHIP
	db 5, LEER
	db 7, WATER_GUN
	db 9, DRAGON_RAGE
	db 11, QUICK_ATTACK
	db 13, SONICBOOM
	db 15, SMOKESCREEN
	db 17, FOCUS_ENERGY
	db 19, RAGE
	db 21, SWIFT
	db 23, BUBBLEBEAM
	db 25, HEADBUTT
	db 27, TAKE_DOWN
	db 29, SLASH
	db 31, AGILITY
	db 33, SCREECH
	db 35, WATERFALL
	db 37, SLAM
	db 39, BODY_SLAM
	db 41, SWORDS_DANCE
	db 50, THRASH
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
	db 3, TAIL_WHIP
	db 5, DEFENSE_CURL
	db 7, ROCK_THROW
	db 9, SMOG
	db 11, QUICK_ATTACK
	db 13, FOCUS_ENERGY
	db 15, FURY_SWIPES
	db 17, RAGE
	db 19, DIG
	db 21, FURY_ATTACK
	db 23, SWIFT
	db 25, ACID
	db 27, HEADBUTT
	db 29, TAKE_DOWN
	db 31, SLASH
	db 33, EARTHQUAKE
	db 35, SLUDGE
	db 37, ROCK_SLIDE
	db 39, BODY_SLAM
	db 41, SWORDS_DANCE
	db 43, ACID_ARMOR
	db 50, THRASH
	db 0

SandslashEvosMoves:
; Evolutions
	db 0
; Learnset
	db 3, TAIL_WHIP
	db 5, DEFENSE_CURL
	db 7, ROCK_THROW
	db 9, SMOG
	db 11, QUICK_ATTACK
	db 13, FOCUS_ENERGY
	db 15, FURY_SWIPES
	db 17, RAGE
	db 19, DIG
	db 21, FURY_ATTACK
	db 23, SWIFT
	db 25, ACID
	db 27, HEADBUTT
	db 29, TAKE_DOWN
	db 31, SLASH
	db 33, EARTHQUAKE
	db 35, SLUDGE
	db 37, ROCK_SLIDE
	db 39, BODY_SLAM
	db 41, SWORDS_DANCE
	db 43, ACID_ARMOR
	db 50, THRASH
	db 0

OmanyteEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 40, OMASTAR
	db 0
; Learnset
	db 3, LEER
	db 5, DEFENSE_CURL
	db 7, ROCK_THROW
	db 9, WATER_GUN
	db 11, WITHDRAW
	db 13, HORN_ATTACK
	db 15, SPIKE_CANNON
	db 17, RAGE
	db 19, BITE
	db 21, FURY_ATTACK
	db 23, SWIFT
	db 25, BUBBLEBEAM
	db 27, HEADBUTT
	db 29, TAKE_DOWN
	db 31, SLASH
	db 33, SCREECH
	db 35, ROCK_SLIDE
	db 37, WATERFALL
	db 39, BODY_SLAM
	db 50, THRASH
	db 0
	
OmastarEvosMoves:
; Evolutions
	db 0
; Learnset
	db 3, LEER
	db 5, DEFENSE_CURL
	db 7, ROCK_THROW
	db 9, WATER_GUN
	db 11, WITHDRAW
	db 13, HORN_ATTACK
	db 15, SPIKE_CANNON
	db 17, RAGE
	db 19, BITE
	db 21, FURY_ATTACK
	db 23, SWIFT
	db 25, BUBBLEBEAM
	db 27, HEADBUTT
	db 29, TAKE_DOWN
	db 31, SLASH
	db 33, SCREECH
	db 35, ROCK_SLIDE
	db 37, WATERFALL
	db 39, BODY_SLAM
	db 50, THRASH
	db 0

JigglypuffEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 35, WIGGLYTUFF
	db 0
; Learnset
	db 3, SUPERSONIC
	db 5, DEFENSE_CURL
	db 7, POUND
	db 9, QUICK_ATTACK
	db 11, SONICBOOM
	db 13, FOCUS_ENERGY
	db 15, DOUBLESLAP
	db 17, RAGE
	db 19, SWIFT
	db 21, CONFUSE_RAY
	db 23, REFLECT
	db 25, HEADBUTT
	db 27, TAKE_DOWN
	db 29, BARRIER
	db 31, AGILITY
	db 33, LIGHT_SCREEN
	db 35, BODY_SLAM
	db 39, SWORDS_DANCE
	db 43, ACID_ARMOR
	db 50, THRASH
	db 0

WigglytuffEvosMoves:
; Evolutions
	db 0
; Learnset
	db 3, SUPERSONIC
	db 5, DEFENSE_CURL
	db 7, POUND
	db 9, QUICK_ATTACK
	db 11, SONICBOOM
	db 13, FOCUS_ENERGY
	db 15, DOUBLESLAP
	db 17, RAGE
	db 19, SWIFT
	db 21, CONFUSE_RAY
	db 23, REFLECT
	db 25, HEADBUTT
	db 27, TAKE_DOWN
	db 29, BARRIER
	db 31, AGILITY
	db 33, LIGHT_SCREEN
	db 35, BODY_SLAM
	db 39, SWORDS_DANCE
	db 43, ACID_ARMOR
	db 50, THRASH
	db 0

EeveeEvosMoves:
; Evolutions
	db EVOLVE_ITEM, FIRE_STONE, 1, FLAREON
	db EVOLVE_ITEM, THUNDER_STONE, 1, JOLTEON
	db EVOLVE_ITEM, WATER_STONE, 1, VAPOREON
	db 0
; Learnset
	db 3, GROWL
	db 5, TAIL_WHIP
	db 7, QUICK_ATTACK
	db 12, BITE
	db 14, FOCUS_ENERGY
	db 17, RAGE
	db 19, FURY_SWIPES
	db 21, SWIFT
	db 25, HEADBUTT
	db 27, LOW_KICK
	db 29, TAKE_DOWN
	db 31, SLASH
	db 33, SCREECH
	db 35, BODY_SLAM
	db 37, JUMP_KICK
	db 50, THRASH
	db 0

FlareonEvosMoves:
; Evolutions
	db 0
; Learnset
	db 3, GROWL
	db 5, TAIL_WHIP
	db 7, EMBER
	db 9, ROCK_THROW
	db 11, QUICK_ATTACK
	db 13, BITE
	db 15, FOCUS_ENERGY
	db 17, RAGE
	db 19, DIG
	db 21, FURY_SWIPES
	db 23, SWIFT
	db 25, FIRE_PUNCH
	db 27, HEADBUTT
	db 29, TAKE_DOWN
	db 31, SLASH
	db 33, FLAMETHROWER
	db 35, EARTHQUAKE
	db 37, ROCK_SLIDE
	db 39, BODY_SLAM
	db 41, SWORDS_DANCE
	db 50, THRASH
	db 0

JolteonEvosMoves:
; Evolutions
	db 0
; Learnset
	db 3, GROWL
	db 5, TAIL_WHIP
	db 7, THUNDERSHOCK
	db 9, KARATE_CHOP
	db 11, PIN_MISSILE
	db 13, QUICK_ATTACK
	db 15, BITE
	db 17, FOCUS_ENERGY
	db 19, RAGE
	db 21, FURY_SWIPES
	db 23, SWIFT
	db 25, THUNDERPUNCH
	db 27, HEADBUTT
	db 29, TAKE_DOWN
	db 31, SLASH
	db 33, AGILITY
	db 35, THUNDERBOLT
	db 37, JUMP_KICK
	db 39, TWINEEDLE
	db 41, BODY_SLAM
	db 50, THRASH
	db 0

VaporeonEvosMoves:
; Evolutions
	db 0
; Learnset
	db 3, GROWL
	db 5, TAIL_WHIP
	db 7, WATER_GUN
	db 9, SMOG
	db 11, AURORA_BEAM
	db 13, QUICK_ATTACK
	db 15, BITE
	db 17, RAGE
	db 19, FURY_SWIPES
	db 21, SWIFT
	db 23, BUBBLEBEAM
	db 25, ACID
	db 27, ICE_PUNCH
	db 29, HEADBUTT
	db 31, TAKE_DOWN
	db 33, SLASH
	db 35, WATERFALL
	db 37, SLUDGE
	db 39, ICE_BEAM
	db 41, BODY_SLAM
	db 43, ACID_ARMOR
	db 50, THRASH
	db 0

MachopEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 25, MACHOKE
	db 0
; Learnset
	db 5, LEER
	db 7, KARATE_CHOP
	db 9, COMET_PUNCH
	db 11, ROCK_THROW
	db 13, SONICBOOM
	db 15, FOCUS_ENERGY
	db 17, DOUBLESLAP
	db 19, RAGE
	db 21, SWIFT
	db 23, LOW_KICK
	db 25, DIZZY_PUNCH
	db 27, STOMP
	db 29, HEADBUTT
	db 31, TAKE_DOWN
	db 33, AGILITY
	db 35, SUBMISSION
	db 37, ROCK_SLIDE
	db 39, BODY_SLAM
	db 50, THRASH
	db 0
	
ZubatEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 22, GOLBAT
	db 0
; Learnset
	db 5, SUPERSONIC
	db 7, SMOG
	db 9, GUST
	db 11, QUICK_ATTACK
	db 13, BITE
	db 15, FOCUS_ENERGY
	db 17, FURY_SWIPES
	db 19, RAGE
	db 21, FURY_ATTACK
	db 23, ACID
	db 25, WING_ATTACK
	db 27, LEECH_LIFE
	db 29, MEGA_DRAIN
	db 31, SLASH
	db 33, SCREECH
	db 35, SLUDGE
	db 37, DRILL_PECK
	db 39, BODY_SLAM
	db 43, ACID_ARMOR
	db 50, THRASH
	db 0

EkansEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 22, ARBOK
	db 0
; Learnset
	db 3, GROWL
	db 5, TAIL_WHIP
	db 7, SMOG
	db 9, DRAGON_RAGE
	db 11, ROCK_THROW
	db 13, BITE
	db 15, FOCUS_ENERGY
	db 17, FURY_ATTACK
	db 19, RAGE
	db 21, SWIFT
	db 23, ACID
	db 25, HEADBUTT
	db 27, TAKE_DOWN
	db 29, SLASH
	db 31, AGILITY
	db 33, SCREECH
	db 35, SLUDGE
	db 37, SLAM
	db 39, ROCK_SLIDE
	db 41, BODY_SLAM
	db 50, THRASH
	db 0

ParasEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 24, PARASECT
	db 0
; Learnset
	db 3, GROWL
	db 5, DEFENSE_CURL
	db 7, PIN_MISSILE
	db 9, SMOG
	db 11, ABSORB
	db 13, FURY_SWIPES
	db 15, RAGE
	db 17, GROWTH
	db 19, FURY_ATTACK
	db 21, CONFUSE_RAY
	db 23, SPORE
	db 25, LEECH_LIFE
	db 27, ACID
	db 29, MEGA_DRAIN
	db 31, TAKE_DOWN
	db 33, SLASH
	db 35, TWINEEDLE
	db 37, NIGHT_SHADE
	db 39, SLUDGE
	db 41, BODY_SLAM
	db 50, THRASH
	db 0

PoliwhirlEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 45, POLIWRATH
	db 0
; Learnset
	db 5, TAIL_WHIP
	db 7, WATER_GUN
	db 9, KARATE_CHOP
	db 11, CONFUSION
	db 13, FOCUS_ENERGY
	db 15, DOUBLESLAP
	db 17, RAGE
	db 19, SWIFT
	db 21, CONFUSE_RAY
	db 23, BUBBLEBEAM
	db 25, LOW_KICK
	db 27, PSYBEAM
	db 29, ICE_PUNCH
	db 31, AMNESIA
	db 33, TAKE_DOWN
	db 35, WATERFALL
	db 37, SUBMISSION
	db 39, PSYCHIC_M
	db 41, BODY_SLAM
	db 50, THRASH
	db 0

PoliwrathEvosMoves:
; Evolutions
	db 0
; Learnset
	db 5, TAIL_WHIP
	db 7, WATER_GUN
	db 9, KARATE_CHOP
	db 12, FOCUS_ENERGY
	db 14, DOUBLESLAP
	db 16, RAGE
	db 18, SWIFT
	db 20, CONFUSE_RAY
	db 23, BUBBLEBEAM
	db 25, LOW_KICK
	db 27, ICE_PUNCH
	db 29, AMNESIA
	db 31, TAKE_DOWN
	db 35, WATERFALL
	db 37, SUBMISSION
	db 41, BODY_SLAM
	db 50, THRASH
	db 0

WeedleEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 7, KAKUNA
	db 0
; Learnset
	db 3, LEER
	db 5, PIN_MISSILE
	db 9, SMOG
	db 11, ABSORB
	db 13, HORN_ATTACK
	db 15, FOCUS_ENERGY
	db 17, FURY_ATTACK
	db 19, RAGE
	db 23, ACID
	db 25, LEECH_LIFE
	db 27, HEADBUTT
	db 29, TAKE_DOWN
	db 31, SLASH
	db 33, TWINEEDLE
	db 35, SLUDGE
	db 37, BODY_SLAM
	db 41, SWORDS_DANCE
	db 50, THRASH
	db 0

KakunaEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 10, BEEDRILL
	db 0
; Learnset
	db 3, LEER
	db 5, PIN_MISSILE
	db 7, HARDEN
	db 9, SMOG
	db 11, ABSORB
	db 13, HORN_ATTACK
	db 15, FOCUS_ENERGY
	db 17, FURY_ATTACK
	db 19, RAGE
	db 23, ACID
	db 25, LEECH_LIFE
	db 27, HEADBUTT
	db 29, TAKE_DOWN
	db 31, SLASH
	db 33, TWINEEDLE
	db 35, SLUDGE
	db 37, BODY_SLAM
	db 41, SWORDS_DANCE
	db 50, THRASH
	db 0

BeedrillEvosMoves:
; Evolutions
	db 0
; Learnset
	db 3, LEER
	db 5, PIN_MISSILE
	db 7, SMOG
	db 11, SONICBOOM
	db 13, HORN_ATTACK
	db 15, FOCUS_ENERGY
	db 17, FURY_ATTACK
	db 19, RAGE
	db 23, ACID
	db 25, LEECH_LIFE
	db 27, WING_ATTACK
	db 29, TAKE_DOWN
	db 31, SLASH
	db 33, AGILITY
	db 35, SLUDGE
	db 37, TWINEEDLE
	db 39, DRILL_PECK
	db 41, BODY_SLAM
	db 43, SWORDS_DANCE
	db 50, THRASH
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
	db 3, GROWL
	db 5, SUPERSONIC
	db 7, GUST
	db 9, QUICK_ATTACK
	db 11, FOCUS_ENERGY
	db 13, FURY_ATTACK
	db 15, RAGE
	db 17, DIG
	db 19, FURY_SWIPES
	db 21, SWIFT
	db 23, WING_ATTACK
	db 25, LOW_KICK
	db 27, HEADBUTT
	db 29, STOMP
	db 31, SLASH
	db 33, TAKE_DOWN
	db 35, AGILITY
	db 37, DRILL_PECK
	db 39, EARTHQUAKE
	db 41, JUMP_KICK
	db 43, BODY_SLAM
	db 45, TRI_ATTACK
	db 47, SWORDS_DANCE
	db 50, THRASH
	db 0

PrimeapeEvosMoves:
; Evolutions
	db 0
; Learnset
	db 3, LEER
	db 5, KARATE_CHOP
	db 7, COMET_PUNCH
	db 9, LICK
	db 11, ROCK_THROW
	db 13, BITE
	db 15, FOCUS_ENERGY
	db 17, RAGE
	db 19, FURY_SWIPES
	db 21, SWIFT
	db 23, LOW_KICK
	db 25, ICE_PUNCH
	db 27, TAKE_DOWN
	db 29, SLASH
	db 31, SCREECH
	db 33, SUBMISSION
	db 35, NIGHT_SHADE
	db 37, ROCK_SLIDE
	db 39, BODY_SLAM
	db 50, THRASH
	db 0
	
DugtrioEvosMoves:
; Evolutions
	db 0
; Learnset
	db 3, GROWL
	db 5, DEFENSE_CURL
	db 7, ROCK_THROW
	db 9, QUICK_ATTACK
	db 11, FOCUS_ENERGY
	db 13, DOUBLESLAP
	db 15, FURY_SWIPES
	db 17, RAGE
	db 19, DIG
	db 21, SWIFT
	db 23, REFLECT
	db 25, HEADBUTT
	db 27, TAKE_DOWN
	db 29, SLASH
	db 31, AGILITY
	db 33, SCREECH
	db 35, EARTHQUAKE
	db 37, ROCK_SLIDE
	db 39, TRI_ATTACK
	db 41, BODY_SLAM
	db 50, THRASH
	db 0

VenomothEvosMoves:
; Evolutions
	db 0
; Learnset
	db 3, LEER
	db 5, SUPERSONIC
	db 7, SMOG
	db 9, CONFUSION
	db 11, PIN_MISSILE
	db 13, RAGE
	db 15, QUICK_ATTACK
	db 17, BITE
	db 19, FURY_SWIPES
	db 21, REFLECT
	db 23, ACID
	db 25, PSYBEAM
	db 27, LEECH_LIFE
	db 29, MEGA_DRAIN
	db 31, TAKE_DOWN
	db 33, SLASH
	db 35, SLUDGE
	db 37, PSYCHIC_M
	db 39, TWINEEDLE
	db 41, BODY_SLAM
	db 50, THRASH
	db 0

DewgongEvosMoves:
; Evolutions
	db 0
; Learnset
	db 3, GROWL
	db 5, DEFENSE_CURL
	db 7, WATER_GUN
	db 9, AURORA_BEAM
	db 11, LICK
	db 13, BITE
	db 15, DOUBLESLAP
	db 17, FURY_ATTACK
	db 19, RAGE
	db 21, FURY_SWIPES
	db 23, BUBBLEBEAM
	db 25, ICE_PUNCH
	db 27, TAKE_DOWN
	db 29, SLASH
	db 31, SCREECH
	db 33, WATERFALL
	db 35, ICE_BEAM
	db 37, DRILL_PECK
	db 39, EARTHQUAKE
	db 41, BODY_SLAM
	db 50, THRASH
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
	db 3, TAIL_WHIP
	db 5, PIN_MISSILE
	db 12, FOCUS_ENERGY
	db 18, SWIFT
	db 25, LEECH_LIFE
	db 27, MEGA_DRAIN
	db 29, BARRIER
	db 31, TAKE_DOWN
	db 33, AGILITY
	db 35, TWINEEDLE
	db 39, BODY_SLAM
	db 0

MetapodEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 10, BUTTERFREE
	db 0
; Learnset
	db 3, TAIL_WHIP
	db 5, PIN_MISSILE
	db 7, HARDEN
	db 12, FOCUS_ENERGY
	db 18, SWIFT
	db 25, LEECH_LIFE
	db 27, MEGA_DRAIN
	db 29, BARRIER
	db 31, TAKE_DOWN
	db 33, AGILITY
	db 35, TWINEEDLE
	db 39, BODY_SLAM
	db 0
ButterfreeEvosMoves:
; Evolutions
	db 0
; Learnset
	db 5, PIN_MISSILE
	db 11, SONICBOOM
	db 13, FOCUS_ENERGY
	db 15, RECOVER
	db 17, SWIFT
	db 19, REFLECT
	db 21, LEECH_LIFE
	db 23, PSYBEAM
	db 25, WING_ATTACK
	db 27, MEGA_DRAIN
	db 29, TAKE_DOWN
	db 31, AGILITY
	db 33, SCREECH
	db 35, TWINEEDLE
	db 37, PSYCHIC_M
	db 39, BODY_SLAM
	db 50, RAZOR_WIND
	db 0

MachampEvosMoves:
; Evolutions
	db 0
; Learnset
	db 5, LEER
	db 7, KARATE_CHOP
	db 9, COMET_PUNCH
	db 11, ROCK_THROW
	db 13, SONICBOOM
	db 15, FOCUS_ENERGY
	db 17, DOUBLESLAP
	db 19, RAGE
	db 21, SWIFT
	db 23, LOW_KICK
	db 25, DIZZY_PUNCH
	db 27, STOMP
	db 29, HEADBUTT
	db 31, TAKE_DOWN
	db 33, AGILITY
	db 35, SUBMISSION
	db 37, ROCK_SLIDE
	db 39, BODY_SLAM
	db 50, THRASH
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
	db 3, TAIL_WHIP
	db 5, DEFENSE_CURL
	db 7, WATER_GUN
	db 9, CONFUSION
	db 11, POUND
	db 13, FOCUS_ENERGY
	db 15, DOUBLESLAP
	db 17, RAGE
	db 19, FURY_SWIPES
	db 21, SWIFT
	db 23, BUBBLEBEAM
	db 25, PSYBEAM
	db 27, HEADBUTT
	db 29, TAKE_DOWN
	db 31, SLASH
	db 33, SCREECH
	db 35, WATERFALL
	db 37, PSYCHIC_M
	db 39, BODY_SLAM
	db 50, THRASH
	db 0

HypnoEvosMoves:
; Evolutions
	db 0
; Learnset
	db 7, CONFUSION
	db 9, LICK
	db 11, AURORA_BEAM
	db 13, POUND
	db 15, DOUBLESLAP
	db 17, RAGE
	db 19, FURY_SWIPES
	db 21, CONFUSE_RAY
	db 23, PSYBEAM
	db 25, ICE_PUNCH
	db 27, HEADBUTT
	db 29, BARRIER
	db 31, AMNESIA
	db 33, LIGHT_SCREEN
	db 35, PSYCHIC_M
	db 37, NIGHT_SHADE
	db 39, ICE_BEAM
	db 50, THRASH
	db 0
	
GolbatEvosMoves:
; Evolutions
	db 0
; Learnset
	db 5, SUPERSONIC
	db 7, SMOG
	db 9, GUST
	db 11, QUICK_ATTACK
	db 13, BITE
	db 15, FOCUS_ENERGY
	db 17, FURY_SWIPES
	db 19, RAGE
	db 21, FURY_ATTACK
	db 23, ACID
	db 25, WING_ATTACK
	db 27, LEECH_LIFE
	db 29, MEGA_DRAIN
	db 31, SLASH
	db 33, SCREECH
	db 35, SLUDGE
	db 37, DRILL_PECK
	db 39, BODY_SLAM
	db 43, ACID_ARMOR
	db 50, THRASH
	db 0

MewtwoEvosMoves:
; Evolutions
	db 0
; Learnset
	db 3, GROWL
	db 5, LEER
	db 7, CONFUSION
	db 9, KARATE_CHOP
	db 11, COMET_PUNCH
	db 13, RECOVER
	db 15, FOCUS_ENERGY
	db 17, RAGE
	db 19, FURY_SWIPES
	db 21, SWIFT
	db 23, PSYBEAM
	db 25, LOW_KICK
	db 27, BARRIER
	db 29, TAKE_DOWN
	db 31, LIGHT_SCREEN
	db 33, PSYCHIC_M
	db 35, SUBMISSION
	db 39, BODY_SLAM
	db 50, THRASH
	db 0

SnorlaxEvosMoves:
; Evolutions
	db 0
; Learnset
	db 5, DEFENSE_CURL
	db 7, POUND
	db 9, LICK
	db 12, FOCUS_ENERGY
	db 14, DOUBLESLAP
	db 16, RAGE
	db 18, FURY_SWIPES
	db 25, HEADBUTT
	db 27, STOMP
	db 29, AMNESIA
	db 31, TAKE_DOWN
	db 33, SLASH
	db 35, BODY_SLAM
	db 37, ROCK_SLIDE
	db 39, EARTHQUAKE
	db 50, THRASH
	db 0

MagikarpEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 20, GYARADOS
	db 0
; Learnset
	db 5, TAIL_WHIP
	db 7, WATER_GUN
	db 9, DRAGON_RAGE
	db 11, QUICK_ATTACK
	db 13, BITE
	db 15, FOCUS_ENERGY
	db 17, DOUBLESLAP
	db 19, RAGE
	db 21, FURY_ATTACK
	db 23, BUBBLEBEAM
	db 25, HEADBUTT
	db 27, TAKE_DOWN
	db 29, SLASH
	db 31, SCREECH
	db 33, WATERFALL
	db 35, SLAM
	db 37, ROCK_SLIDE
	db 39, BODY_SLAM
	db 50, THRASH
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
	db 5, HARDEN
	db 7, SMOG
	db 9, LICK
	db 11, ROCK_THROW
	db 13, POUND
	db 15, SMOKESCREEN
	db 15, DOUBLESLAP
	db 17, RAGE
	db 19, DIG
	db 21, CONFUSE_RAY
	db 23, REFLECT
	db 25, ACID
	db 27, BARRIER
	db 29, TAKE_DOWN
	db 31, SCREECH
	db 33, SLUDGE
	db 35, EARTHQUAKE
	db 37, ROCK_SLIDE
	db 39, BODY_SLAM
	db 43, ACID_ARMOR
	db 50, THRASH
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
	db 3, LEER
	db 5, HARDEN
	db 7, WATER_GUN
	db 9, ROCK_THROW
	db 11, FOCUS_ENERGY
	db 13, FURY_SWIPES
	db 15, RAGE
	db 17, DIG
	db 19, FURY_ATTACK
	db 21, REFLECT
	db 23, BUBBLEBEAM
	db 25, VICEGRIP
	db 27, HEADBUTT
	db 29, SLASH
	db 31, TAKE_DOWN
	db 33, AGILITY
	db 35, WATERFALL
	db 37, ROCK_SLIDE
	db 39, EARTHQUAKE
	db 41, BODY_SLAM 
	db 50, CRABHAMMER
	db 0
	
CloysterEvosMoves:
; Evolutions
	db 0
; Learnset
	db 3, LEER
	db 5, DEFENSE_CURL
	db 7, WATER_GUN
	db 9, AURORA_BEAM
	db 11, WITHDRAW
	db 13, HORN_ATTACK
	db 15, SPIKE_CANNON
	db 17, RAGE
	db 19, BITE
	db 21, FURY_ATTACK
	db 23, SWIFT
	db 25, BUBBLEBEAM
	db 27, VICEGRIP
	db 29, TAKE_DOWN
	db 31, SLASH
	db 33, SCREECH
	db 35, ICE_BEAM
	db 37, WATERFALL
	db 39, BODY_SLAM
	db 50, THRASH
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
	db 3, DEFENSE_CURL
	db 5, SUPERSONIC
	db 7, THUNDERSHOCK
	db 9, ROCK_THROW
	db 11, SONICBOOM
	db 13, FOCUS_ENERGY
	db 15, RAGE
	db 18, SWIFT
	db 21, REFLECT
	db 23, THUNDERPUNCH
	db 25, HEADBUTT
	db 27, BARRIER
	db 29, TAKE_DOWN
	db 31, AGILITY
	db 33, SCREECH
	db 35, THUNDERBOLT
	db 37, ROCK_SLIDE
	db 39, BODY_SLAM
	db 50, THRASH
	db 0


ClefableEvosMoves:
; Evolutions
	db 0
; Learnset
	db 3, TAIL_WHIP
	db 5, DEFENSE_CURL
	db 7, CONFUSION
	db 9, POUND
	db 11, COMET_PUNCH
	db 13, SING
	db 15, DOUBLESLAP
	db 17, FURY_SWIPES
	db 19, RECOVER
	db 21, SWIFT
	db 23, REFLECT
	db 25, PSYBEAM
	db 27, DIZZY_PUNCH
	db 29, TAKE_DOWN
	db 31, SLASH
	db 33, LIGHT_SCREEN
	db 35, PSYCHIC_M
	db 37, BODY_SLAM
	db 0
	
WeezingEvosMoves:
; Evolutions
	db 0
; Learnset
	db 5, DEFENSE_CURL
	db 7, SMOG
	db 9, EMBER
	db 11, SMOKESCREEN
	db 13, SONICBOOM
	db 15, FOCUS_ENERGY
	db 17, RAGE
	db 19, SWIFT
	db 21, CONFUSE_RAY
	db 23, ACID
	db 25, PSYBEAM
	db 29, HEADBUTT
	db 31, TAKE_DOWN
	db 33, SCREECH
	db 35, FLAMETHROWER
	db 37, SLUDGE
	db 39, BODY_SLAM
	db 50, THRASH
	db 0


PersianEvosMoves:
; Evolutions
	db 0
; Learnset
	db 3, TAIL_WHIP
	db 5, LEER
	db 7, PAY_DAY
	db 9, QUICK_ATTACK
	db 11, ROCK_THROW
	db 13, BITE
	db 15, FOCUS_ENERGY
	db 17, FURY_SWIPES
	db 19, RAGE
	db 21, DIG
	db 23, HEADBUTT
	db 25, STOMP
	db 27, TAKE_DOWN
	db 29, SLASH
	db 31, LIGHT_SCREEN
	db 33, SCREECH
	db 35, EARTHQUAKE
	db 37, BODY_SLAM
	db 39, ROCK_SLIDE
	db 50, THRASH
	db 0

MarowakEvosMoves:
; Evolutions
	db 0
; Learnset
	db 3, GROWL
	db 5, LEER
	db 7, LICK
	db 9, ROCK_THROW
	db 11, POUND
	db 13, HORN_ATTACK
	db 15, FOCUS_ENERGY
	db 17, FURY_ATTACK
	db 19, RAGE
	db 21, DIG
	db 23, FURY_SWIPES
	db 25, BONE_CLUB
	db 27, HEADBUTT
	db 29, STOMP
	db 31, TAKE_DOWN
	db 33, SLASH
	db 35, EARTHQUAKE
	db 37, NIGHT_SHADE
	db 39, ROCK_SLIDE
	db 41, BODY_SLAM
	db 43, SWORDS_DANCE
	db 50, BONEMERANG
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
	db 5, LICK
	db 7, SMOG
	db 9, AURORA_BEAM
	db 11, QUICK_ATTACK
	db 13, SMOKESCREEN
	db 15, BITE
	db 17, FOCUS_ENERGY
	db 19, RAGE
	db 21, FURY_SWIPES
	db 23, CONFUSE_RAY
	db 25, ACID
	db 27, ICE_PUNCH
	db 29, HEADBUTT
	db 31, TAKE_DOWN
	db 33, SLASH
	db 35, NIGHT_SHADE
	db 37, SLUDGE
	db 39, ICE_BEAM
	db 43, ACID_ARMOR
	db 50, THRASH
	db 0

AbraEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 25, KADABRA
	db 0
; Learnset
	db 3, TAIL_WHIP
	db 5, DEFENSE_CURL
	db 7, CONFUSION
	db 9, QUICK_ATTACK
	db 11, FOCUS_ENERGY
	db 13, DOUBLESLAP
	db 15, FURY_SWIPES
	db 17, RECOVER
	db 19, KINESIS
	db 21, SWIFT
	db 23, REFLECT
	db 25, PSYBEAM
	db 27, HEADBUTT
	db 29, TAKE_DOWN
	db 31, SLASH
	db 33, LIGHT_SCREEN
	db 35, PSYCHIC_M
	db 37, TRI_ATTACK
	db 39, BODY_SLAM
	db 0

AlakazamEvosMoves:
; Evolutions
	db 0
; Learnset
	db 3, TAIL_WHIP
	db 5, DEFENSE_CURL
	db 7, CONFUSION
	db 9, QUICK_ATTACK
	db 11, FOCUS_ENERGY
	db 13, DOUBLESLAP
	db 15, FURY_SWIPES
	db 17, RECOVER
	db 19, KINESIS
	db 21, SWIFT
	db 23, REFLECT
	db 25, PSYBEAM
	db 27, HEADBUTT
	db 29, TAKE_DOWN
	db 31, SLASH
	db 33, LIGHT_SCREEN
	db 35, PSYCHIC_M
	db 37, TRI_ATTACK
	db 39, BODY_SLAM
	db 0

PidgeottoEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 38, PIDGEOT
	db 0
; Learnset
	db 3, GROWL
	db 5, LEER
	db 7, GUST
	db 9, QUICK_ATTACK
	db 11, SONICBOOM
	db 13, FOCUS_ENERGY
	db 15, FURY_SWIPES
	db 17, RAGE
	db 19, FURY_ATTACK
	db 21, SWIFT
	db 23, WING_ATTACK
	db 25, HEADBUTT
	db 27, SLASH
	db 29, TAKE_DOWN
	db 31, AGILITY
	db 33, SCREECH
	db 35, DRILL_PECK
	db 37, BODY_SLAM
	db 39, SWORDS_DANCE
	db 50, RAZOR_WIND
	db 0

PidgeotEvosMoves:
; Evolutions
	db 0
; Learnset
	db 3, GROWL
	db 5, LEER
	db 7, GUST
	db 9, QUICK_ATTACK
	db 11, SONICBOOM
	db 13, FOCUS_ENERGY
	db 15, FURY_SWIPES
	db 17, RAGE
	db 19, FURY_ATTACK
	db 21, SWIFT
	db 23, WING_ATTACK
	db 25, HEADBUTT
	db 27, SLASH
	db 29, TAKE_DOWN
	db 31, AGILITY
	db 33, SCREECH
	db 35, DRILL_PECK
	db 37, BODY_SLAM
	db 39, SWORDS_DANCE
	db 50, RAZOR_WIND
	db 0

StarmieEvosMoves:
; Evolutions
	db 0
; Learnset
	db 5, SUPERSONIC
	db 7, WATER_GUN
	db 9, CONFUSION
	db 11, AURORA_BEAM
	db 13, FOCUS_ENERGY
	db 15, RAGE
	db 17, RECOVER
	db 19, SWIFT
	db 21, CONFUSE_RAY
	db 23, BUBBLEBEAM
	db 25, PSYBEAM
	db 27, BARRIER
	db 29, TAKE_DOWN
	db 31, SCREECH
	db 33, LIGHT_SCREEN
	db 35, WATERFALL
	db 37, PSYCHIC_M
	db 39, ICE_BEAM
	db 41, BODY_SLAM
	db 50, THRASH
	db 0
	
BulbasaurEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 14, IVYSAUR
	db 0
; Learnset
	db 3, GROWL
	db 5, TAIL_WHIP
	db 7, ABSORB
	db 9, SMOG
	db 11, BITE
	db 13, FOCUS_ENERGY
	db 15, RAGE
	db 17, GROWTH
	db 19, FURY_SWIPES
	db 21, SWIFT
	db 23, MEGA_DRAIN
	db 25, ACID
	db 27, HEADBUTT
	db 29, TAKE_DOWN
	db 31, SLASH
	db 33, SCREECH
	db 35, RAZOR_LEAF
	db 37, SLUDGE
	db 39, BODY_SLAM
	db 43, ACID_ARMOR
	db 50, THRASH
	db 0

VenusaurEvosMoves:
; Evolutions
	db 0
; Learnset
	db 3, GROWL
	db 5, TAIL_WHIP
	db 7, ABSORB
	db 9, SMOG
	db 11, BITE
	db 13, FOCUS_ENERGY
	db 15, RAGE
	db 17, GROWTH
	db 19, FURY_SWIPES
	db 21, SWIFT
	db 23, MEGA_DRAIN
	db 25, ACID
	db 27, HEADBUTT
	db 29, TAKE_DOWN
	db 31, SLASH
	db 33, SCREECH
	db 35, RAZOR_LEAF
	db 37, SLUDGE
	db 39, BODY_SLAM
	db 43, ACID_ARMOR
	db 50, THRASH
	db 0

TentacruelEvosMoves:
; Evolutions
	db 0
; Learnset
	db 5, SUPERSONIC
	db 7, WATER_GUN
	db 9, SMOG
	db 11, ABSORB
	db 13, FOCUS_ENERGY
	db 15, DOUBLESLAP
	db 17, RAGE
	db 19, FURY_ATTACK
	db 21, SWIFT
	db 23, BUBBLEBEAM
	db 25, ACID
	db 27, VICEGRIP
	db 29, MEGA_DRAIN
	db 31, LEECH_LIFE
	db 33, SCREECH
	db 35, WATERFALL
	db 37, SLUDGE
	db 39, BODY_SLAM
	db 43, ACID_ARMOR
	db 50, THRASH


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
	db 3, TAIL_WHIP
	db 5, SUPERSONIC
	db 7, WATER_GUN
	db 9, QUICK_ATTACK
	db 11, HORN_ATTACK
	db 13, FOCUS_ENERGY
	db 15, FURY_ATTACK
	db 17, RAGE
	db 19, SWIFT
	db 23, BUBBLEBEAM
	db 25, HEADBUTT
	db 27, TAKE_DOWN
	db 29, SLASH
	db 31, AGILITY
	db 33, SCREECH
	db 35, WATERFALL
	db 37, DRILL_PECK
	db 39, BODY_SLAM
	db 50, THRASH
	db 0

SeakingEvosMoves:
; Evolutions
	db 0
; Learnset
	db 3, TAIL_WHIP
	db 5, SUPERSONIC
	db 7, WATER_GUN
	db 9, QUICK_ATTACK
	db 11, HORN_ATTACK
	db 13, FOCUS_ENERGY
	db 15, FURY_ATTACK
	db 17, RAGE
	db 19, SWIFT
	db 23, BUBBLEBEAM
	db 25, HEADBUTT
	db 27, TAKE_DOWN
	db 29, SLASH
	db 31, AGILITY
	db 33, SCREECH
	db 35, WATERFALL
	db 37, DRILL_PECK
	db 39, BODY_SLAM
	db 50, THRASH
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
	db 3, LEER
	db 5, TAIL_WHIP
	db 7, EMBER
	db 9, QUICK_ATTACK
	db 11, HORN_ATTACK
	db 13, FOCUS_ENERGY
	db 15, FURY_ATTACK
	db 17, RAGE
	db 19, DIG
	db 21, SWIFT
	db 23, LOW_KICK
	db 25, HEADBUTT
	db 27, STOMP
	db 29, TAKE_DOWN
	db 31, SLASH
	db 33, AGILITY
	db 35, FLAMETHROWER
	db 37, EARTHQUAKE
	db 39, BODY_SLAM
	db 50, THRASH
	db 0

RapidashEvosMoves:
; Evolutions
	db 0
; Learnset
	db 3, LEER
	db 5, TAIL_WHIP
	db 7, EMBER
	db 9, QUICK_ATTACK
	db 11, HORN_ATTACK
	db 13, FOCUS_ENERGY
	db 15, FURY_ATTACK
	db 17, RAGE
	db 19, DIG
	db 21, SWIFT
	db 23, LOW_KICK
	db 25, HEADBUTT
	db 27, STOMP
	db 29, TAKE_DOWN
	db 31, SLASH
	db 33, AGILITY
	db 35, FLAMETHROWER
	db 37, EARTHQUAKE
	db 39, BODY_SLAM
	db 50, THRASH
	db 0

RattataEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 20, RATICATE
	db 0
; Learnset
	db 3, GROWL
	db 5, LEER
	db 7, QUICK_ATTACK
	db 9, POUND
	db 11, BITE
	db 13, FOCUS_ENERGY
	db 15, RAGE
	db 17, DIG
	db 19, FURY_SWIPES
	db 21, SWIFT
	db 23, SUPER_FANG
	db 25, HEADBUTT
	db 27, STOMP
	db 29, TAKE_DOWN
	db 31, SLASH
	db 33, SCREECH
	db 35, HYPER_FANG
	db 37, BODY_SLAM
	db 50, THRASH
	db 0

RaticateEvosMoves:
; Evolutions
	db 0
; Learnset
	db 3, GROWL
	db 5, LEER
	db 7, QUICK_ATTACK
	db 9, POUND
	db 11, BITE
	db 13, FOCUS_ENERGY
	db 15, RAGE
	db 17, DIG
	db 19, FURY_SWIPES
	db 21, SWIFT
	db 23, SUPER_FANG
	db 25, HEADBUTT
	db 27, STOMP
	db 29, TAKE_DOWN
	db 31, SLASH
	db 33, SCREECH
	db 35, HYPER_FANG
	db 37, BODY_SLAM
	db 50, THRASH
	db 0

NidorinoEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 45, NIDOKING
	db 0
; Learnset
	db 3, TAIL_WHIP
	db 5, SMOG
	db 7, ROCK_THROW
	db 9, QUICK_ATTACK
	db 11, BITE
	db 13, RAGE
	db 15, FOCUS_ENERGY
	db 17, FURY_SWIPES
	db 19, DIG
	db 21, FURY_ATTACK
	db 23, ACID
	db 25, HORN_ATTACK
	db 27, LOW_KICK
	db 29, HEADBUTT
	db 31, TAKE_DOWN
	db 33, SCREECH
	db 35, SLUDGE
	db 37, EARTHQUAKE
	db 39, DRILL_PECK
	db 41, ROCK_SLIDE
	db 43, BODY_SLAM
	db 50, THRASH
	db 0

NidorinaEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 45, NIDOQUEEN
	db 0
; Learnset
	db 3, TAIL_WHIP
	db 5, SMOG
	db 7, ROCK_THROW
	db 9, QUICK_ATTACK
	db 11, BITE
	db 13, RAGE
	db 15, FOCUS_ENERGY
	db 17, FURY_SWIPES
	db 19, DIG
	db 21, FURY_ATTACK
	db 23, ACID
	db 25, HORN_ATTACK
	db 27, LOW_KICK
	db 29, HEADBUTT
	db 31, TAKE_DOWN
	db 33, SCREECH
	db 35, SLUDGE
	db 37, EARTHQUAKE
	db 39, DRILL_PECK
	db 41, ROCK_SLIDE
	db 43, BODY_SLAM
	db 50, THRASH
	db 0
	
GeodudeEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 25, GRAVELER
	db 0
; Learnset
	db 3, LEER
	db 5, DEFENSE_CURL
	db 7, ROCK_THROW
	db 9, COMET_PUNCH
	db 11, POUND
	db 13, FOCUS_ENERGY
	db 15, DOUBLESLAP
	db 17, RAGE
	db 19, DIG
	db 21, SWIFT
	db 23, HEADBUTT
	db 25, DIZZY_PUNCH
	db 27, STOMP
	db 29, TAKE_DOWN
	db 31, SCREECH
	db 33, ROCK_SLIDE
	db 35, EARTHQUAKE
	db 37, BODY_SLAM
	db 50, THRASH
	db 0

PorygonEvosMoves:
; Evolutions
	db 0
; Learnset
	db 5, HARDEN
	db 7, THUNDERSHOCK
	db 9, PSYBEAM
	db 11, QUICK_ATTACK
	db 13, SONICBOOM
	db 15, FOCUS_ENERGY
	db 17, RECOVER
	db 19, SWIFT
	db 21, REFLECT
	db 23, PSYBEAM
	db 25, HEADBUTT
	db 27, BARRIER
	db 29, TAKE_DOWN
	db 31, AGILITY
	db 33, LIGHT_SCREEN
	db 35, THUNDERBOLT
	db 37, PSYCHIC_M
	db 39, TRI_ATTACK
	db 41, BODY_SLAM
	db 0

AerodactylEvosMoves:
; Evolutions
	db 0
; Learnset
	db 3, GROWL
	db 5, SUPERSONIC
	db 7, ROCK_THROW
	db 9, DRAGON_RAGE
	db 11, GUST
	db 13, HORN_ATTACK
	db 15, SONICBOOM
	db 17, BITE
	db 19, FURY_ATTACK
	db 21, FURY_SWIPES
	db 23, WING_ATTACK
	db 25, HEADBUTT
	db 27, TAKE_DOWN
	db 29, SLASH
	db 31, AGILITY
	db 33, SCREECH
	db 35, ROCK_SLIDE
	db 37, SLAM
	db 39, DRILL_PECK
	db 41, BODY_SLAM
	db 50, RAZOR_WIND
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
	db 3, SUPERSONIC
	db 5, HARDEN
	db 7, THUNDERSHOCK
	db 11, QUICK_ATTACK
	db 13, SONICBOOM
	db 15, FOCUS_ENERGY
	db 17, RAGE
	db 19, SWIFT
	db 21, REFLECT
	db 23, THUNDERPUNCH
	db 25, HEADBUTT
	db 27, BARRIER
	db 29, TAKE_DOWN
	db 31, SCREECH
	db 33, LIGHT_SCREEN
	db 35, THUNDERBOLT
	db 37, TRI_ATTACK
	db 39, BODY_SLAM
	db 50, THRASH, 
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
	db EVOLVE_LEVEL, 18, CHARMELEON
	db 0
; Learnset
	db 3, GROWL
	db 5, LEER
	db 7, EMBER
	db 9, DRAGON_RAGE
	db 11, QUICK_ATTACK
	db 13, SMOKESCREEN
	db 15, BITE
	db 17, FOCUS_ENERGY
	db 19, RAGE
	db 21, FURY_SWIPES
	db 23, SWIFT
	db 25, FIRE_PUNCH
	db 27, HEADBUTT
	db 29, TAKE_DOWN
	db 31, SLASH
	db 33, SCREECH
	db 35, FLAMETHROWER
	db 37, SLAM
	db 39, BODY_SLAM
	db 41, SWORDS_DANCE
	db 50, THRASH
	db 0
	
SquirtleEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 16, WARTORTLE
	db 0
; Learnset
	db 3, TAIL_WHIP
	db 5, DEFENSE_CURL
	db 7, WATER_GUN
	db 9, AURORA_BEAM
	db 11, WITHDRAW
	db 13, BITE
	db 15, FOCUS_ENERGY
	db 17, RAGE
	db 19, FURY_SWIPES
	db 21, SWIFT
	db 23, BUBBLEBEAM
	db 25, ICE_PUNCH
	db 27, HEADBUTT
	db 29, TAKE_DOWN
	db 31, SLASH
	db 33, SCREECH
	db 35, WATERFALL
	db 37, ICE_BEAM
	db 39, BODY_SLAM
	db 41, AMNESIA
	db 50, THRASH
	db 0

CharmeleonEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 38, CHARIZARD
	db 0
; Learnset
	db 3, GROWL
	db 5, LEER
	db 7, EMBER
	db 9, DRAGON_RAGE
	db 11, QUICK_ATTACK
	db 13, SMOKESCREEN
	db 15, BITE
	db 17, FOCUS_ENERGY
	db 19, RAGE
	db 21, FURY_SWIPES
	db 23, SWIFT
	db 25, FIRE_PUNCH
	db 27, HEADBUTT
	db 29, TAKE_DOWN
	db 31, SLASH
	db 33, SCREECH
	db 35, FLAMETHROWER
	db 37, SLAM
	db 39, BODY_SLAM
	db 41, SWORDS_DANCE
	db 50, THRASH
	db 0

WartortleEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 36, BLASTOISE
	db 0
; Learnset
	db 3, TAIL_WHIP
	db 5, DEFENSE_CURL
	db 7, WATER_GUN
	db 9, AURORA_BEAM
	db 11, WITHDRAW
	db 13, BITE
	db 15, FOCUS_ENERGY
	db 17, RAGE
	db 19, FURY_SWIPES
	db 21, SWIFT
	db 23, BUBBLEBEAM
	db 25, ICE_PUNCH
	db 27, HEADBUTT
	db 29, TAKE_DOWN
	db 31, SLASH
	db 33, SCREECH
	db 35, WATERFALL
	db 37, ICE_BEAM
	db 39, BODY_SLAM
	db 41, AMNESIA
	db 50, THRASH
	db 0

CharizardEvosMoves:
; Evolutions
	db 0
; Learnset
	db 3, GROWL
	db 5, LEER
	db 7, EMBER
	db 9, DRAGON_RAGE
	db 11, QUICK_ATTACK
	db 13, SMOKESCREEN
	db 15, BITE
	db 17, FOCUS_ENERGY
	db 19, RAGE
	db 21, FURY_SWIPES
	db 23, SWIFT
	db 25, FIRE_PUNCH
	db 27, HEADBUTT
	db 29, TAKE_DOWN
	db 31, SLASH
	db 33, SCREECH
	db 35, FLAMETHROWER
	db 37, SLAM
	db 39, BODY_SLAM
	db 41, SWORDS_DANCE
	db 50, THRASH
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
	db EVOLVE_LEVEL, 25, GLOOM
	db 0
; Learnset
	db 3, SUPERSONIC
	db 5, DEFENSE_CURL
	db 7, ABSORB
	db 9, SMOG
	db 11, QUICK_ATTACK
	db 13, POUND
	db 15, FOCUS_ENERGY
	db 17, RAGE
	db 19, GROWTH
	db 21, SWIFT
	db 23, MEGA_DRAIN
	db 25, ACID
	db 27, HEADBUTT
	db 29, TAKE_DOWN
	db 31, SLASH
	db 33, SCREECH
	db 35, RAZOR_LEAF
	db 37, SLUDGE
	db 39, BODY_SLAM
	db 43, ACID_ARMOR
	db 50, THRASH
	db 0

GloomEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 45, VILEPLUME
	db 0
; Learnset
	db 3, SUPERSONIC
	db 5, DEFENSE_CURL
	db 7, ABSORB
	db 9, SMOG
	db 11, QUICK_ATTACK
	db 13, POUND
	db 15, FOCUS_ENERGY
	db 17, RAGE
	db 19, GROWTH
	db 21, SWIFT
	db 23, MEGA_DRAIN
	db 25, ACID
	db 27, HEADBUTT
	db 29, TAKE_DOWN
	db 31, SLASH
	db 33, SCREECH
	db 35, RAZOR_LEAF
	db 37, SLUDGE
	db 39, BODY_SLAM
	db 43, ACID_ARMOR
	db 50, THRASH
	db 0

VileplumeEvosMoves:
; Evolutions
	db 0
; Learnset
	db 3, SUPERSONIC
	db 5, DEFENSE_CURL
	db 7, ABSORB
	db 9, SMOG
	db 11, QUICK_ATTACK
	db 13, POUND
	db 15, FOCUS_ENERGY
	db 17, RAGE
	db 19, GROWTH
	db 21, SWIFT
	db 23, MEGA_DRAIN
	db 25, ACID
	db 27, HEADBUTT
	db 29, TAKE_DOWN
	db 31, SLASH
	db 33, SCREECH
	db 35, RAZOR_LEAF
	db 37, SLUDGE
	db 39, BODY_SLAM
	db 43, ACID_ARMOR
	db 50, THRASH
	db 0

BellsproutEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 25, WEEPINBELL
	db 0
; Learnset
	db 3, LEER
	db 5, DEFENSE_CURL
	db 7, ABSORB
	db 9, SMOG
	db 11, POUND
	db 13, FOCUS_ENERGY
	db 15, DOUBLESLAP
	db 17, RAGE
	db 19, GROWTH
	db 21, FURY_SWIPES
	db 23, SWIFT
	db 25, MEGA_DRAIN
	db 27, ACID
	db 29, LEECH_LIFE
	db 31, TAKE_DOWN
	db 33, SLASH
	db 35, RAZOR_LEAF
	db 37, SLUDGE
	db 39, BODY_SLAM
	db 43, SWORDS_DANCE
	db 50, THRASH
	db 0

WeepinbellEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 45, VICTREEBEL
	db 0
; Learnset
	db 3, LEER
	db 5, DEFENSE_CURL
	db 7, ABSORB
	db 9, SMOG
	db 11, POUND
	db 13, FOCUS_ENERGY
	db 15, DOUBLESLAP
	db 17, RAGE
	db 19, GROWTH
	db 21, FURY_SWIPES
	db 23, SWIFT
	db 25, MEGA_DRAIN
	db 27, ACID
	db 29, LEECH_LIFE
	db 31, TAKE_DOWN
	db 33, SLASH
	db 35, RAZOR_LEAF
	db 37, SLUDGE
	db 39, BODY_SLAM
	db 43, SWORDS_DANCE
	db 50, THRASH
	db 0
VictreebelEvosMoves:
; Evolutions
	db 0
; Learnset
	db 3, LEER
	db 5, DEFENSE_CURL
	db 7, ABSORB
	db 9, SMOG
	db 11, POUND
	db 13, FOCUS_ENERGY
	db 15, DOUBLESLAP
	db 17, RAGE
	db 19, GROWTH
	db 21, FURY_SWIPES
	db 23, SWIFT
	db 25, MEGA_DRAIN
	db 27, ACID
	db 29, LEECH_LIFE
	db 31, TAKE_DOWN
	db 33, SLASH
	db 35, RAZOR_LEAF
	db 37, SLUDGE
	db 39, BODY_SLAM
	db 43, SWORDS_DANCE
	db 50, THRASH
	db 0

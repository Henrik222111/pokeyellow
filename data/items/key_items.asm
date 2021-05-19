key_item_bits: MACRO
_bit = 0
_byte = 0
REPT _NARG
_byte = _byte | ((\1) << _bit)
_bit = _bit + 1
IF _bit == 8
	db _byte
_byte = 0
_bit = 0
ENDC
SHIFT
ENDR
IF _bit > 0
	db _byte
ENDC
ENDM

KeyItemBitfield:
	table_width 1, KeyItemBitfield
	key_item_bits \
	FALSE, \ ; MASTER_BALL
	FALSE, \ ; ULTRA_BALL
	FALSE, \ ; GREAT_BALL
	FALSE, \ ; POKE_BALL
	TRUE,  \ ; TOWN_MAP
	TRUE,  \ ; BICYCLE
	TRUE,  \ ; SURFBOARD
	TRUE,  \ ; SAFARI_BALL
	TRUE,  \ ; POKEDEX
	FALSE, \ ; MOON_STONE
	FALSE, \ ; ANTIDOTE
	FALSE, \ ; BURN_HEAL
	FALSE, \ ; ICE_HEAL
	FALSE, \ ; AWAKENING
	FALSE, \ ; PARLYZ_HEAL
	FALSE, \ ; FULL_RESTORE
	FALSE, \ ; MAX_POTION
	FALSE, \ ; HYPER_POTION
	FALSE, \ ; SUPER_POTION
	FALSE, \ ; POTION
	TRUE,  \ ; BOULDERBADGE
	TRUE,  \ ; CASCADEBADGE
	TRUE,  \ ; THUNDERBADGE
	TRUE,  \ ; RAINBOWBADGE
	TRUE,  \ ; SOULBADGE
	TRUE,  \ ; MARSHBADGE
	TRUE,  \ ; VOLCANOBADGE
	TRUE,  \ ; EARTHBADGE
	FALSE, \ ; ESCAPE_ROPE
	FALSE, \ ; REPEL
	TRUE,  \ ; OLD_AMBER
	FALSE, \ ; FIRE_STONE
	FALSE, \ ; THUNDER_STONE
	FALSE, \ ; WATER_STONE
	FALSE, \ ; HP_UP
	FALSE, \ ; PROTEIN
	FALSE, \ ; IRON
	FALSE, \ ; CARBOS
	FALSE, \ ; CALCIUM
	FALSE, \ ; RARE_CANDY
	FALSE, \ ; DOME_FOSSIL
	FALSE, \ ; HELIX_FOSSIL
	TRUE,  \ ; SECRET_KEY
	TRUE,  \ ; UNUSED_ITEM
	TRUE,  \ ; BIKE_VOUCHER
	FALSE, \ ; X_ACCURACY
	FALSE, \ ; LEAF_STONE
	TRUE,  \ ; CARD_KEY
	FALSE, \ ; NUGGET
	FALSE, \ ; PP_UP_2
	FALSE, \ ; POKE_DOLL
	FALSE, \ ; FULL_HEAL
	FALSE, \ ; REVIVE
	FALSE, \ ; MAX_REVIVE
	FALSE, \ ; GUARD_SPEC
	FALSE, \ ; SUPER_REPEL
	FALSE, \ ; MAX_REPEL
	FALSE, \ ; DIRE_HIT
	FALSE, \ ; COIN
	FALSE, \ ; FRESH_WATER
	FALSE, \ ; SODA_POP
	FALSE, \ ; LEMONADE
	TRUE,  \ ; S_S_TICKET
	TRUE,  \ ; GOLD_TEETH
	FALSE, \ ; X_ATTACK
	FALSE, \ ; X_DEFEND
	FALSE, \ ; X_SPEED
	FALSE, \ ; X_SPECIAL
	TRUE,  \ ; COIN_CASE
	TRUE,  \ ; OAKS_PARCEL
	TRUE,  \ ; ITEMFINDER
	TRUE,  \ ; SILPH_SCOPE
	TRUE,  \ ; POKE_FLUTE
	TRUE,  \ ; LIFT_KEY
	FALSE, \ ; EXP_ALL
	TRUE,  \ ; OLD_ROD
	TRUE,  \ ; GOOD_ROD
	TRUE,  \ ; SUPER_ROD
	FALSE, \ ; PP_UP
	FALSE, \ ; ETHER
	FALSE, \ ; MAX_ETHER
	FALSE, \ ; ELIXER
	FALSE    ; MAX_ELIXER
	assert_table_length (NUM_ITEMS + 7) / 8

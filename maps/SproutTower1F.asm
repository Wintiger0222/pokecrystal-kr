	const_def 2 ; object constants
	const SPROUTTOWER1F_SAGE1
	const SPROUTTOWER1F_SAGE2
	const SPROUTTOWER1F_GRANNY
	const SPROUTTOWER1F_TEACHER
	const SPROUTTOWER1F_SAGE3
	const SPROUTTOWER1F_POKE_BALL

SproutTower1F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

SproutTower1FSage1Script:
	jumptextfaceplayer SproutTower1FSage1Text

SproutTower1FSage2Script:
	jumptextfaceplayer SproutTower1FSage2Text

SproutTower1FGrannyScript:
	jumptextfaceplayer SproutTower1FGrannyText

SproutTower1FTeacherScript:
	jumptextfaceplayer SproutTower1FTeacherText

TrainerSageChow:
	trainer SAGE, CHOW, EVENT_BEAT_SAGE_CHOW, SageChowSeenText, SageChowBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SageChowAfterBattleText
	waitbutton
	closetext
	end

SproutTower1FParlyzHeal:
	itemball PARLYZ_HEAL

SproutTower1FStatue:
	jumptext SproutTower1FStatueText

SageChowSeenText:
	text "우리들이 이 탑을"
	line "지키고있는 것은"
	
	para "포켓몬에 대한 감사의 마음을"
	line "항상 잊지 않도록 하기 위함이오!"
	done

SageChowBeatenText:
	text "아 고맙소!"
	done

SageChowAfterBattleText:
	text "세상의 모든 생명체"
	line "서로 돕고 살아간다는……"
	
	para "감사의 마음을"
	line "잊는다면 아니 될 것이오"
	done

SproutTower1FSage1Text:
	text "가장 꼭대기까지"
	line "올라왔다는 것만으로도"
	cont "비전의 기술을 얻게되는 것이오"
	done

SproutTower1FSage2Text:
	text "이곳 모다피의 탑은"
	line "포켓몬 수행을 위하여"
	cont "오래 전에 지어진 것이오"
	done

SproutTower1FGrannyText:
	text "30미터에 달하는"
	line "거대한 모다피"
	
	para "그 몸체가"
	line "탑 중심의 기둥이"
	cont "되었다고들 말하지"
	done

SproutTower1FTeacherText:
	text "기둥이 미묘하게 흔들리고 있지?"
	line "위에서 스님들이"
	cont "수행을 하고있지"
	done

SproutTower1FStatueText:
	text "포켓몬이 받들어 모셔지고 있군……"
	line "어딘가 장엄한 기분이야"
	done

SproutTower1F_MapEvents:
	db 0, 0 ; filler

	db 5 ; warp events
	warp_event  9, 15, VIOLET_CITY, 7
	warp_event 10, 15, VIOLET_CITY, 7
	warp_event  6,  4, SPROUT_TOWER_2F, 1
	warp_event  2,  6, SPROUT_TOWER_2F, 2
	warp_event 17,  3, SPROUT_TOWER_2F, 3

	db 0 ; coord events

	db 2 ; bg events
	bg_event  7, 15, BGEVENT_READ, SproutTower1FStatue
	bg_event 12, 15, BGEVENT_READ, SproutTower1FStatue

	db 6 ; object events
	object_event  7,  4, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SproutTower1FSage1Script, -1
	object_event  6,  7, SPRITE_SAGE, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SproutTower1FSage2Script, -1
	object_event 11, 12, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SproutTower1FGrannyScript, -1
	object_event  9,  9, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SproutTower1FTeacherScript, -1
	object_event  3,  5, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, TrainerSageChow, -1
	object_event 16,  7, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SproutTower1FParlyzHeal, EVENT_SPROUT_TOWER1F_PARLYZ_HEAL

	const_def 2 ; object constants
	const VERMILIONPORTPASSAGE_TEACHER

VermilionPortPassage_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

VermilionPortPassageTeacherScript:
	jumptextfaceplayer VermilionPortPassageTeacherText

VermilionPortPassageTeacherText:
	text "쾌속선 아쿠아호의 출항은"
	line "매주"
	cont "수요일과 일요일이야!"
	done

VermilionPortPassage_MapEvents:
	db 0, 0 ; filler

	db 5 ; warp events
	warp_event 15,  0, VERMILION_CITY, 8
	warp_event 16,  0, VERMILION_CITY, 9
	warp_event 15,  4, VERMILION_PORT_PASSAGE, 4
	warp_event  3,  2, VERMILION_PORT_PASSAGE, 3
	warp_event  3, 14, VERMILION_PORT, 1

	db 0 ; coord events

	db 0 ; bg events

	db 1 ; object events
	object_event 17,  1, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VermilionPortPassageTeacherScript, -1

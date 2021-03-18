; Texts

_OakSpeechText2C::
	text "But first, tell me"
	line "about yourself."
	prompt

_IntroducePlayerGender::
	text "Are you a boy?"
	line "Or are you a girl?"
	done

_IntroducePlayerName::
	text "Let's begin with"
	line "your name."
	para "What is it?"
	prompt
	
_ConfirmBoyText::
	text "You are a boy."
	line "Is that correct?"
	done

_ConfirmGirlText::
	text "You are a girl."
	line "Is that correct?"
	done

_AreYouREALLYSureText::
	text "Are you absolutely"
	line "sure about that?"
	done

_EvoInstructionText::
	text "A button: EVOLVE"
	line "B button: CANCEL"
	done
	
_Red3dots:
	text "... ..."
	prompt
	
_Red12dots:
	text "... ..."
	done

_LegendaryRanText::
	text "Wild @"
	TX_RAM wEnemyMonNick
	db $0
	line "escaped!"
	prompt
	
_ItWasJustADreamText::
	text "Was it only"
	line "a dream...?"
	prompt

_MtSilverIntroText::
	text "Later that"
	line "night..."
	prompt
	
_OakPreBattleText::
	text $52, ", I've"
	line "watched you from"
	cont "the beginning of"
	cont "your journey."
	
	para "And I must say,"
	line "it is truly"
	cont "astonishing how"
	cont "you've managed to"
	cont "discover and tame"
	cont "every single"
	cont "#MON!"
	
	para "Now that you are a"
	line "#MON MASTER,"
	cont "you must prove to"
	cont "me that you are"
	cont "deserving of"
	cont "that title."
	
	para "Please, ", $52, ","
	line "do not hold back"
	cont "on this one."
	
	para "Let us begin!"
	done
	
_OakVictorySpeech::
	text "Wow, I'm"
	line "speechless!"
	
	para "I guess you're as"
	line "good as they say"
	cont "you are!"
	prompt
	
_BattleTentSignText::
	text "BATTLE TENT"
	line "Where trainers"
	cont "from all over"
	cont "come to battle!"
	done

_SailorIslandText::
	text "I saw that weird"
	line "thing swim and"
	cont "fly off just now."
	
	para "I was going to"
	line "go chase after"
	cont "it with my boat."
	
	para "Want to come"
	line "along?"
	done
	
_SailorIslandText2::
	text "OK, let's go!"
	done

_SailorIslandText3::
	text "Well, hurry up,"
	line "alright?"
	
	para "I don't know if"
	line "that thing will"
	cont "stick around."
	done
	
_SailorIslandText4::
	text "You want to go"
	line "back?"
	done
	
_LastIsland1FText1::
	text "DANGER!"
	
	para "Holes everywhere!"
	
	para "Watch your step!"
	done
	
_PartyMenuBattleTentText::
	text "Select which"
	line "#MON to enter?"
	done
	
RematchPrompt::
	text "Rematch this"
	line "trainer?"
	done
	
INCLUDE "151hack/btlibs.asm"

_EndRematchBattle_Brock::
	text "Your #-"
	line "MON's powerful at-"
	cont "tacks overcame my"
	cont "rock-hard defense!"

	para "You're stronger"
	line "than I expected!"
	prompt
	
_EndRematchBattle_Misty::
	text "You really"
	line "are good..."

	para "I'll admit that"
	line "you are skilled!"
	prompt
	
_EndRematchBattle_LtSurge::
	text "Arrrgh!"
	line "You are strong!"
	prompt
	
_EndRematchBattle_Erika::
	text "Oh!"
	line "I concede defeat."

	para "You are remarkably"
	line "strong!"
	prompt
	
_EndRematchBattle_Sabrina::
	text "Your"
	line "power..."

	para "It far exceeds"
	line "what I foresaw!"

	para "Maybe it isn't"
	line "possible to fully"

	para "predict what the"
	line "future holds..."
	prompt

_EndRematchBattle_Blaine::
	text "Awesome."
	line "I've burned out!"
	prompt
	
_EndRematchBattle_LeaguePC::
	text ""
	line "... ..."
	prompt
	
_LeaguePCBeforeText::
	text $52, " turned on"
	line "the PC."
	
	para "Accessed #MON"
	line "LEAGUE's PC."

	para "..."
	line "..."
	
	para "BATTLE SIM is"
	line "displayed on the"
	cont "PC monitor."
	
	para "Rematch GIOVANNI?"
	done
	
_LeaguePCYesText::
	text "OK, please wait"
	line "just a moment."
	done
	
_LeaguePCNoText::
	text "The battle was"
	line "canceled."
	done
	
_LeaguePCAfterText::
	text "There isn't any"
	line "response..."
	done
	
_HallofFameRoomText1_tehurn::
	text "Congratulations,"
	line $52, ", you and"
	cont "your #MON are"
	cont "#MON MASTERs!"
	done
	
HackCreditsText::
	db 1
	db 0, "POKéMON TPP VERSION@"
	IF HACK_VERSION % 100 == 0
		db 6, "Patch ", (HACK_VERSION / 100 + "0"), "@"
	ELSE IF HACK_VERSION % 10 == 0
		db 5, "Patch ", (HACK_VERSION / 100 + "0"), ".", ((HACK_VERSION / 10) % 10 + "0"), "@"
	ELSE
		db 4, "Patch ", (HACK_VERSION / 100 + "0"), ".", ((HACK_VERSION / 10) % 10 + "0"), "."
		db (HACK_VERSION % 10 + "0"), "@"
	ENDC
	ENDC
	
	db 1 ; how many bottom row texts
	db 4, "ROM Hack by@" ; top row text, the first byte is offset
	db 4, "pigdevil2010@" ; bottom row texts, the first byte is offset
	
	db 1
	db 3, "Hack based on@"
	db 2, "POKéMON RED 151@"
	
	db 1
	db 1, "Project Management@"
	db 4, "EliteAnax17@"
	
	db 3
	db 6, "Testers@"
	db 5, "azum4roll@"
	db 4, "EliteAnax17@"
	db 6, "walle303@"
	
	db 2
	db 5, "Custom GFX@"
	db 4, "pigdevil2010@"
	db 7, "Pioxys@"
	
	db 1
	db 2, "Credits Music by@"
	db 7, "COTHC@"
	
	db 2
	db 1, "Dream Red music by@"
	db 3, "JUNICHI MASUDA@"
	db 5, "GO ICHINOSE@"
	
	db 3
	db 2, "Final Polishing@"
	db 5, "Koolboyman@"
	db 6, "walle303@"
	db 4, "LightningXCE@"
	
	db 4
	db 3, "Special Thanks@"
	db 5, "flarn2006@"
	db 5, "iimarckus@"
	db 1, "TwitchPlaysPokemon@"
	db 5, "..and you!@"
	
	db 1
	db 2, "And to the many@"
	db 2, "that donated...@"
	
	db 1
	db 2, "Thanks for your@"
	db 6, "support!@"
	
	; I have thanks for watching gfx, just didn't add it yet.
	
	db $FF
	
INCLUDE "text/maps/celadon_dept_store_b1.asm"

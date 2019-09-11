ScriptName dse_dye_QuestController extends Quest

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

LeveledItem Property ListDyesAll Auto
LeveledItem Property ListDyesBold Auto
LeveledItem Property ListDyesSubdued Auto
LeveledItem Property ListDyesGoldLabel Auto

LeveledItem Property LootList1 Auto
;; LItemMiscVendorClothing75
;; this list isn't even fucking used by any vendors lol. it is used
;; by random wardrobes n closets n shit.

LeveledItem Property LootList2 Auto
;; LItemMiscVendorMiscItems75
;; makes a lot of generic garbage vendors sell things.
;; also cupboards because why the fuck not bethesda.

LeveledItem Property LootList3 Auto
;; LItemFurnitureMiscItems75
;; makes various cupboards and endtables contain items.

LeveledItem Property LootList4 Auto
;; LootCitizenPocketsCommon
;; should make people have things to pickpocket.

LeveledItem property LootList5 Auto
;; LItemClothesAll
;; makes those asshole ladies at the clothes shop in solitude
;; sell things.

;;LeveledItem Property DawnstarList1 Auto
;;LeveledItem Property FalkreathList1 Auto
;;LeveledItem Property MarkarthList1 Auto
;;LeveledItem Property MorthalList1 Auto
;;LeveledItem Property RiftenList1 Auto
;;LeveledItem Property SolitudeList1 Auto
;;LeveledItem Property WhiterunList1 Auto
;;LeveledItem Property WindhelmList1 Auto
;;LeveledItem Property WinterholdList1 Auto

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

Event OnInit()
	Debug.Notification("Dye Master Init")
	self.RegisterDyes()
	self.AddDyesToLootLists()
	Return
EndEvent

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

Function RegisterDyes()

	;; bold series
	NiOverride.RegisterFormDyeColor(Game.GetFormFromFile(0x200001,"dse-dyemaster.esp"),0xFFFF0000)
	NiOverride.RegisterFormDyeColor(Game.GetFormFromFile(0x200002,"dse-dyemaster.esp"),0xFF00FF00)
	NiOverride.RegisterFormDyeColor(Game.GetFormFromFile(0x200003,"dse-dyemaster.esp"),0xFF0000FF)
	NiOverride.RegisterFormDyeColor(Game.GetFormFromFile(0x200004,"dse-dyemaster.esp"),0xFFFFFF00)
	NiOverride.RegisterFormDyeColor(Game.GetFormFromFile(0x200005,"dse-dyemaster.esp"),0xFF00FFFF)
	NiOverride.RegisterFormDyeColor(Game.GetFormFromFile(0x200006,"dse-dyemaster.esp"),0xFFFF00FF)
	NiOverride.RegisterFormDyeColor(Game.GetFormFromFile(0x200007,"dse-dyemaster.esp"),0xFFFF8000)
	NiOverride.RegisterFormDyeColor(Game.GetFormFromFile(0x200008,"dse-dyemaster.esp"),0xFF00FF80)
	NiOverride.RegisterFormDyeColor(Game.GetFormFromFile(0x200009,"dse-dyemaster.esp"),0xFF8000FF)
	NiOverride.RegisterFormDyeColor(Game.GetFormFromFile(0x20000A,"dse-dyemaster.esp"),0xFF80FF00)
	NiOverride.RegisterFormDyeColor(Game.GetFormFromFile(0x20000B,"dse-dyemaster.esp"),0xFF0080FF)
	NiOverride.RegisterFormDyeColor(Game.GetFormFromFile(0x20000C,"dse-dyemaster.esp"),0xFFFF0080)
	NiOverride.RegisterFormDyeColor(Game.GetFormFromFile(0x20000D,"dse-dyemaster.esp"),0xFFEEEEEE)
	NiOverride.RegisterFormDyeColor(Game.GetFormFromFile(0x20000E,"dse-dyemaster.esp"),0xFF111111)

	;; subdued series
	NiOverride.RegisterFormDyeColor(Game.GetFormFromFile(0x20000F,"dse-dyemaster.esp"),0xFFc73030)
	NiOverride.RegisterFormDyeColor(Game.GetFormFromFile(0x200010,"dse-dyemaster.esp"),0xFFc27f3b)
	NiOverride.RegisterFormDyeColor(Game.GetFormFromFile(0x200011,"dse-dyemaster.esp"),0xFFbbbb40)
	NiOverride.RegisterFormDyeColor(Game.GetFormFromFile(0x200012,"dse-dyemaster.esp"),0xFF3ab83a)
	NiOverride.RegisterFormDyeColor(Game.GetFormFromFile(0x200013,"dse-dyemaster.esp"),0xFF3f3fb1)
	NiOverride.RegisterFormDyeColor(Game.GetFormFromFile(0x200014,"dse-dyemaster.esp"),0xFF804bb9)
	NiOverride.RegisterFormDyeColor(Game.GetFormFromFile(0x200015,"dse-dyemaster.esp"),0xFF3ab09e)
	NiOverride.RegisterFormDyeColor(Game.GetFormFromFile(0x200016,"dse-dyemaster.esp"),0xFFc860c8)
	NiOverride.RegisterFormDyeColor(Game.GetFormFromFile(0x200020,"dse-dyemaster.esp"),0xFF9c9c9c)
	NiOverride.RegisterFormDyeColor(Game.GetFormFromFile(0x200021,"dse-dyemaster.esp"),0xFF666666)

	;; gold label series
	NiOverride.RegisterFormDyeColor(Game.GetFormFromFile(0x200017,"dse-dyemaster.esp"),0xFF5a9ab4)
	NiOverride.RegisterFormDyeColor(Game.GetFormFromFile(0x200018,"dse-dyemaster.esp"),0xFF2563a8)
	NiOverride.RegisterFormDyeColor(Game.GetFormFromFile(0x200019,"dse-dyemaster.esp"),0xFFe0b32b)
	NiOverride.RegisterFormDyeColor(Game.GetFormFromFile(0x20001A,"dse-dyemaster.esp"),0xFF4e4459)
	NiOverride.RegisterFormDyeColor(Game.GetFormFromFile(0x20001B,"dse-dyemaster.esp"),0xFF416237)
	NiOverride.RegisterFormDyeColor(Game.GetFormFromFile(0x20001C,"dse-dyemaster.esp"),0xFF484f66)
	NiOverride.RegisterFormDyeColor(Game.GetFormFromFile(0x20001D,"dse-dyemaster.esp"),0xFF5f8d4b)
	NiOverride.RegisterFormDyeColor(Game.GetFormFromFile(0x20001E,"dse-dyemaster.esp"),0xFFa71616)
	NiOverride.RegisterFormDyeColor(Game.GetFormFromFile(0x20001F,"dse-dyemaster.esp"),0xFF4e6295)

	Return
EndFunction

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

Function AddDyesToLootLists()

	Int Added = 0

	;; general store vendors

	If(!self.LeveledListHas(self.LootList2,self.ListDyesAll))
		self.LootList2.AddForm(self.ListDyesAll,1,5)
		self.LootList2.AddForm(self.ListDyesBold,1,5)
		self.LootList2.AddForm(self.ListDyesSubdued,1,5)
		self.LootList2.AddForm(self.ListDyesGoldLabel,1,2)
		Added += 1
	EndIf

	;; specialty vendors

	If(!self.LeveledListHas(self.LootList5,self.ListDyesAll))
		self.LootList5.AddForm(self.ListDyesAll,1,10)
		self.LootList5.AddForm(self.ListDyesBold,1,10)
		self.LootList5.AddForm(self.ListDyesSubdued,1,10)
		self.LootList5.AddForm(self.ListDyesGoldLabel,1,10)
		Added += 1
	EndIf

	;; various furniture

	If(!self.LeveledListHas(self.LootList1,self.ListDyesAll))
		self.LootList1.AddForm(self.ListDyesAll,1,1)
		Added += 1
	EndIf

	If(!self.LeveledListHas(self.LootList3,self.ListDyesAll))
		self.LootList3.AddForm(self.ListDyesAll,1,1)
		Added += 1
	EndIf

	;; pickpocketing randos

	If(!self.LeveledListHas(self.LootList4,self.ListDyesAll))
		self.LootList4.AddForm(self.ListDyesAll,1,1)
		Added += 1
	EndIf

	If(Added)
		Debug.Notification("Dyes have been added to " + Added + " loot lists.")
	EndIf

	Return
EndFunction

Bool Function LeveledListHas(LeveledItem LootList, Form Something)

	Int Len = LootList.GetNumForms()

	While(Len > 0)
		Len -= 1

		If(LootList.GetNthForm(Len) == Something)
			Return TRUE
		EndIf
	EndWhile

	Return FALSE
EndFunction

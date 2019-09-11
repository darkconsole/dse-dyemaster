ScriptName dse_dye_QuestController_AliasPlayer extends ReferenceAlias

Event OnPlayerLoadGame()
	Debug.Notification("Dye Master Load")
	(self.GetOwningQuest() as dse_dye_QuestController).RegisterDyes()
	(self.GetOwningQuest() as dse_dye_QuestController).AddDyesToLootLists()
	Return
EndEvent


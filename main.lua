local TrashTalkMenu = {
	"rip bozo",
	"/ e dab",
	"/ e laugh",
	"chewed like a carrot",
	"need a pillow bro?",
	"lol",
	"monkey",
	"walk straight monkey",
	"ez dub",
	"ez lol",
	"too busy eating watermelon?",
	"here's a banana",
	"even the cops aim better",
	"was the chicken good?",
	"back in your cage you go",
	"get good",
	"where u aiming bro?",
	"u good bro?",
	"get better",
	"isnt that hard to aim",
	"bad player right here",
	"just play the game right",
	"wasnt so hard",
	"should get good",
	"bro im right here?",
	"i would say you shoot like cancer, but cancer actually kills",
	"you miss more shots than a stormtrooper",
	"do u mind leaving the game lol, id rather be playing with the ai",
	"you could feed whole africa with ur deaths",
	"VICTORYY!!"
}
local UserInputService = game:GetService("UserInputService")
UserInputService.InputBegan:Connect(function(Key, GameProcessedEvent)
	if GameProcessedEvent then
		return
	end
	if Key.KeyCode == Enum.KeyCode.T then
		local ChosenTrashText = math.random(1, #TrashTalkMenu)
		local args = {
			[1] = TrashTalkMenu[ChosenTrashText],
			[2] = "All"
		}
		game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
	end
end)
wait(0.2)
game.StarterGui:SetCore("SendNotification",{
	Title = "Trash Talker";
	Text = "Use this at your own risk, we are not responsible for **ANY** Bans from Roblox or in Game.";
	Duration = 10;
})
wait(0.2)
game.StarterGui:SetCore("SendNotification",{
	Title = "Trash Talker";
	Text = "Press ''T'' to Trash Talk.";
	Duration = 10;
})
wait(0.2)
game.StarterGui:SetCore("SendNotification",{
	Title = "Trash Talker";
	Text = "Credits: MeliteDoesThings#6012";
	Duration = 5;
})

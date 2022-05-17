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
    "bro im right here?"
}
local UserInputService = game:GetService("UserInputService")
UserInputService.InputBegan:Connect(function(Key)
    if Key.KeyCode == Enum.KeyCode.T then
        local ChosenTrashText = math.random(1, #TrashTalkMenu)
        local args = {
            [1] = TrashTalkMenu[ChosenTrashText],
            [2] = "All"
        }
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
    end
end)

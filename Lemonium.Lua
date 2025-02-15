local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()

local CorrectKey = "greenapple"


local Window = Fluent:CreateWindow({
    Title = "Key System",
    SubTitle = "Lemonium",
    TabWidth = 160,
    Size = UDim2.fromOffset(500, 400),
    Acrylic = false,
    Theme = "Dark"
})


local MainTab = Window:AddTab({ Title = "Key Verification", Icon = "key" })


local KeyInput = MainTab:AddInput("KeyInput", {
    Title = "Enter Key",
    Placeholder = "Type your key here",
    Numeric = false, 
    Finished = false
})


MainTab:AddButton({
    Title = "Verify Key",
    Description = "Check if the key is correct",
    Callback = function()
        local EnteredKey = KeyInput.Value or ""
        print("Checking Key:", EnteredKey)
        if EnteredKey == CorrectKey then
            Fluent:Notify({
                Title = "Success!",
                Content = "Key is valid. Running script...",
                Duration = 3
            })


            loadstring(game:HttpGet("https://raw.githubusercontent.com/dausita/LemoniumHub/main/LemoniumHub.lua"))()


            task.wait(1)
            Window:Destroy()
        else
            Fluent:Notify({
                Title = "Error!",
                Content = "Invalid Key! Try again.",
                Duration = 3
            })
        end
    end
})

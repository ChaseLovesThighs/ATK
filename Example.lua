--[[

ATK: {}
-> CreateATK(ATKName: string): {}
--> CreateSection(secName: string): {}
---> TextLabel(labelText: string): nil
---> TextButton(buttonText: string, buttonInfo: string, callback: () -> ()): nil
---> Toggle(togInfo: string, callback: (bool: boolean) -> ()): nil
---> Slider(sliderin: string, minvalue: number, maxvalue: number, callback: (value: number) -> ()): nil
---> KeyBind(keInfo: string, firstt: Enum.KeyCode, callback: (pressed: Enum.KeyCode) -> ()): nil
---> TextBox(textInfo: string, placeHolderText1: string, callback: (string: text) -> ()): nil
---> Dropdown(dInfo: string, list: {}, callback: (selected: string) -> ()): nil

]]

local ATK = loadstring(game:HttpGet("https://raw.githubusercontent.com/robloxarchiver/ATK/refs/heads/main/ATK.lua"))();

local Window = ATK:CreateATK("My GUI");

local Section1 = Window:CreateSection("Section 1");
local Section2 = Window:CreateSection("Section 2");
local Section3 = Window:CreateSection("Section 3");

do
    Section1:TextLabel("This is a text label");
    Section1:TextLabel("It can be used to");
    Section1:TextLabel("display text");

    Section1:TextButton("I am a button", "I have a description too", function()
        print("Pressed");
    end)

    Section1:Toggle("I am a toggle", function(bool)
        print(`Boolean: { bool }`);
    end)

    Section1:Slider("I am a slider", 1, 100, function(value)
        print(`Slider: { value }`);
    end)

    Section1:TextLabel("Head to Section 2 for more!");
end

do
    Section2:KeyBind("I am keybind", Enum.KeyCode.E, function(key)
        print(`Key pressed: { key }`);
    end)

    Section2:TextBox("I am a textbox", "Placeholder Text", function(text)
        print(`Textbox: { text }`);
    end)

    Section2:TextLabel("Head to Section 3 for the DROPDOWN!");
end

local function __TABLE()
    local table = {};

    for i = 1, 10 do
        table[i] = crypt.generatebytes(8);
    end

    return table;
end

do
    Section3:Dropdown("I am a dropdown!!!!", __TABLE(), function(selected)
        print(`Dropdown: { selected }`);
    end)
end
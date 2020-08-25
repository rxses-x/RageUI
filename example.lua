---
--- @author Dylan MALANDAIN
--- @version 2.0.0
--- @since 2020
---
--- RageUI Is Advanced UI Libs in LUA for make beautiful interface like RockStar GAME.
---
---
--- Commercial Info.
--- Any use for commercial purposes is strictly prohibited and will be punished.
---
--- @see RageUI
---

print("^1 RageUI - testing file is started. ^0")

RMenu.Add('showcase', 'main', RageUI.CreateMenu("RageUI", "Subtitle"))
RMenu.Add('showcase', 'items', RageUI.CreateSubMenu(RMenu:Get('showcase', 'main'), "Items showcase", "RAGEUI"))
RMenu.Add('showcase', 'panels', RageUI.CreateSubMenu(RMenu:Get('showcase', 'main'), "Panels showcase", "RAGEUI"))

local mainMenu = RMenu:Get('showcase', 'main')
local itemsMenu = RMenu:Get('showcase', 'items')
local panelsMenu = RMenu:Get('showcase', 'panels')

mainMenu:SetSubtitle("RageUI Showcase")

mainMenu.Closed = function()
    print('closed menu!')
end

mainMenu.onIndexChange = function(Index)
    print(Index)
end

itemsMenu:SetSpriteBanner("casinoui_cards_blackjack_high", "casinoui_cards_blackjack_high")
itemsMenu:DisplayGlare(false)
itemsMenu:SetTitle("")
itemsMenu:SetSubtitle("Items showcase")

panelsMenu:EditSpriteColor(0,0,255,25)
panelsMenu:DisplayGlare(true)
panelsMenu.EnableMouse = true

Keys.Register('E', 'E', 'Open RageUI Showcase menu default.', function()
    RageUI.Visible(mainMenu, not RageUI.Visible(mainMenu))
end)

Citizen.CreateThread(function()
    while (true) do
        Citizen.Wait(1.0)

        -- Main menu
        RageUI.IsVisible(mainMenu, function()
            -- Items
            RageUI.Item.Button('Items Showcase', "Go to the items showcase", { RightLabel = "→→→" }, true, {
                onHovered = function()
            
                end,
                onSelected = function()
            
                end,
                onActive = function()
            
                end,
            }, itemsMenu)

            RageUI.Item.Button('Panels Showcase', "Go to the panels showcase", { RightLabel = "→→→" }, true, {
                onHovered = function()
            
                end,
                onSelected = function()
            
                end,
                onActive = function()
            
                end,
            }, panelsMenu)
        end, function()
            -- Panels
        end)

        -- Items Menu
        RageUI.IsVisible(itemsMenu, function()
            -- Items

            -- Button
            -- https://rageui.dylan-malandain.io/docs/master/item-button
            RageUI.Item.Button('Button', "", { RightLabel = "" }, true, {
                onHovered = function()
            
                end,
                onSelected = function()
            
                end,
                onActive = function()
            
                end,
            })

            -- Checkbox
            -- https://rageui.dylan-malandain.io/docs/master/item-checkbox
            RageUI.Item.Checkbox("Checkbox", "", true,  { }, {
                onHovered = function()

                end,
                onChecked = function()

                end,
                onUnChecked = function()

                end,
                onSelected = function(boolean)
                    
                end
            })

            -- List
            -- https://rageui.dylan-malandain.io/docs/master/item-lists
            RageUI.Item.List("List Items", { "This", "Is", "A", "List" }, 1, nil, {}, true, {
                onListChange = function(Index, Items)
           
                end,
                onSelected = function(Index, Items)
           
                end,
                onHovered = function(Index, Items)
           
                end
            })

           -- Progress
           -- https://rageui.dylan-malandain.io/docs/master/item-progress
            RageUI.Item.Progress("Progress List", { "1", "2", "3", "4" }, 1, "Description",  true, true, {
                onListChange = function(Index)
                    print(Index)
                end,
                onSelected = function(Index)
       
                end,
                onHovered = function()
       
                end
            })

           -- Seperator
           -- https://rageui.dylan-malandain.io/docs/master/item-separator
            RageUI.Item.Separator('Seperator')

           -- Slider
           -- https://rageui.dylan-malandain.io/docs/master/item-slider
            RageUI.Item.Slider("Slider", { "First", "Second", "Third", "Fourth" }, 1, "Description",  true, {}, true, {
                onSliderChange = function(Index)
                    print(Index)
                end,
                onSelected = function(Index)
   
                end,
                onHovered = function()
   
                end
            })

            -- Heritage Slider
            -- https://rageui.dylan-malandain.io/docs/master/item-slider-heritage
            RageUI.Item.UISliderHeritage("Heritage Slider", 5, "Description", {
                onListChange = function(Index)

                end,
                onSelected = function(Index)
       
                end,
                onHovered = function()
       
                end
            }, 1)

            -- Slider Progress Bar
            -- https://rageui.dylan-malandain.io/docs/master/item-slider-progress
            RageUI.Item.SliderProgress("Progress Slider", {1,2,3,4,5,6}, 2, "Description", {}, true, {
                onListChange = function(Index)
       
                end,
                onSelected = function(Index)
       
                end,
                onHovered = function()
       
                end
           })

        end, function() 
            -- Panels
        end)

        -- Panels Menu
        RageUI.IsVisible(panelsMenu, function()
            -- Items
            RageUI.Item.Button('Colour Panel', "", { RightLabel = "" }, true, {})

            RageUI.Item.Button('Grid Panel', "", { RightLabel = "" }, true, {})

            RageUI.Item.Button('Horizontal Grid Panel', "", { RightLabel = "" }, true, {})

            RageUI.Item.Button('Vertical Grid Panel', "", { RightLabel = "" }, true, {})

            RageUI.Item.Button('Percentage Panel', "", { RightLabel = "" }, true, {})

            RageUI.Item.Button('Statistics Panel', "", { RightLabel = "" }, true, {})

            RageUI.Item.Button('Advanced Statistics Panel', "", { RightLabel = "" }, true, {})
        end, function() 
            -- Panels
            RageUI.Panel.ColourPanel('Haircut Colours', RageUI.PanelColour.HairCut, 5, {
                onColourChange = function(Index)

                end,
                onSelected = function()

                end
            }, 1)

            RageUI.Panel.Grid(0.5, 0.2, 'Top', 'Bottom', 'Left', 'Right', {
                onPositionChange = function(X, Y)
                    print(X, Y)
                end,
                onSelected = function(X, Y)
                    print(X, Y)
                end
            }, 2)

            RageUI.Panel.GridHorizontal(0.1, 'Left', 'Right', {
                onPositionChange = function(X, Y)
                    print(X, Y)
                end,
                onSelected = function(X, Y)
                    print(X, Y)
                end
            }, 3)

            RageUI.Panel.GridVertical(0.1, 'Top', 'Bottom', {
                onPositionChange = function(X, Y)
                    print(X, Y)
                end,
                onSelected = function(X, Y)
                    print(X, Y)
                end
            }, 4)

            RageUI.Panel.PercentagePanel(1.0, "Percentage Panel", "0", "1", {
                onPercentageChange = function(Percentage)
                    print(Percentage)
                end,
                onSelected = function(Percentage)
                    print(Percentage)
                end
            }, 5)

            RageUI.Panel.StatisticPanel(0.5, "Statistic #1", 6)
            RageUI.Panel.StatisticPanel(0.7, "Statistic #2", 6)
            RageUI.Panel.StatisticPanel(0.2, "Statistic #3", 6)

            RageUI.Panel.StatisticPanelAdvanced("Statistic #1", 0.2, {255,0,0,255}, 0.8, {0,255,0,255}, {255,255,255,255}, 7)
            RageUI.Panel.StatisticPanelAdvanced("Statistic #2", 0.8, {255,0,0,255}, 0, {0,255,0,255}, {255,255,255,255}, 7)
            RageUI.Panel.StatisticPanelAdvanced("Statistic #1", 0.6, {255,0,0,255}, 0.1, {0,255,0,255}, {255,255,255,255}, 7)
        end)
    end
end)
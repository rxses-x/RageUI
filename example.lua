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

-- Create Menu
-- https://rageui.dylan-malandain.io/docs/master/create-menu
RMenu.Add('showcase', 'main', RageUI.CreateMenu("RageUI", "Subtitle"))

-- Create SubMenus
-- https://rageui.dylan-malandain.io/docs/master/create-submenu
RMenu.Add('showcase', 'items', RageUI.CreateSubMenu(RMenu:Get('showcase', 'main'), "Items showcase", "RAGEUI"))
RMenu.Add('showcase', 'panels', RageUI.CreateSubMenu(RMenu:Get('showcase', 'main'), "Panels showcase", "RAGEUI"))
RMenu.Add('showcase', 'heritage', RageUI.CreateSubMenu(RMenu:Get('showcase', 'main'), "Heritage showcase", "RAGEUI"))

-- RMenu
-- https://rageui.dylan-malandain.io/docs/master/rmenu
local mainMenu = RMenu:Get('showcase', 'main')
local itemsMenu = RMenu:Get('showcase', 'items')
local panelsMenu = RMenu:Get('showcase', 'panels')
local heritageMenu = RMenu:Get('showcase', 'heritage')

mainMenu:SetSubtitle("RageUI Showcase")

mainMenu.Closed = function()
    print('closed menu!')
end

mainMenu.onIndexChange = function(Index)
    print(Index)
end

-- Menu Settings
-- https://rageui.dylan-malandain.io/docs/master/menu-settings
itemsMenu:SetSpriteBanner("casinoui_cards_blackjack_high", "casinoui_cards_blackjack_high")
itemsMenu:DisplayGlare(false)
itemsMenu:SetTitle("")
itemsMenu:SetSubtitle("Items showcase")

panelsMenu:EditSpriteColor(0,0,255,25)
panelsMenu:DisplayGlare(true)
panelsMenu.EnableMouse = true
panelsMenu:DisplayInstructionalButton(false)

-- It's not required to use a sprite.
heritageMenu:SetRectangleBanner(0,25,0,255)
panelsMenu:DisplayGlare(true)

-- Keys
-- https://rageui.dylan-malandain.io/docs/master/keys
Keys.Register('E', 'E', 'Open RageUI Showcase menu default.', function()
    RageUI.Visible(mainMenu, not RageUI.Visible(mainMenu))
end)

-- Store Values

local heritage = {
    mum = 0,
    dad = 23
}

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
            
                end
            }, itemsMenu)

            RageUI.Item.Button('Panels Showcase', "Go to the panels showcase", { RightLabel = "→→→" }, true, {
                onHovered = function()
            
                end,
                onSelected = function()
            
                end,
                onActive = function()
            
                end
            }, panelsMenu)

            RageUI.Item.Button("Windows Showcase", "Go to window showcase", { RightLabel = "→→→"}, true,  {
                onHovered = function()
            
                end,
                onSelected = function()
            
                end,
                onActive = function()
            
                end
            }, heritageMenu)

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

            -- Colour Panel
            -- https://rageui.dylan-malandain.io/docs/master/panel-colour
            RageUI.Panel.ColourPanel('Haircut Colours', RageUI.PanelColour.HairCut, 5, {
                onColourChange = function(Index)

                end,
                onSelected = function()

                end
            }, 1)

            -- Grid Panel
            -- https://rageui.dylan-malandain.io/docs/master/panel-grid
            RageUI.Panel.Grid(0.5, 0.2, 'Top', 'Bottom', 'Left', 'Right', {
                onPositionChange = function(X, Y)
                    print(X, Y)
                end,
                onSelected = function(X, Y)
                    print(X, Y)
                end
            }, 2)

            -- Horizontal Grid
            -- https://rageui.dylan-malandain.io/docs/master/panel-horizontal-grid
            RageUI.Panel.GridHorizontal(0.1, 'Left', 'Right', {
                onPositionChange = function(X, Y)
                    print(X, Y)
                end,
                onSelected = function(X, Y)
                    print(X, Y)
                end
            }, 3)

            -- Vertical Grid
            -- https://rageui.dylan-malandain.io/docs/master/panel-vertical-grid
            RageUI.Panel.GridVertical(0.1, 'Top', 'Bottom', {
                onPositionChange = function(X, Y)
                    print(X, Y)
                end,
                onSelected = function(X, Y)
                    print(X, Y)
                end
            }, 4)

            -- Percentage Panel
            -- https://rageui.dylan-malandain.io/docs/master/panel-percentage
            RageUI.Panel.PercentagePanel(1.0, "Percentage Panel", "0", "1", {
                onPercentageChange = function(Percentage)
                    print(Percentage)
                end,
                onSelected = function(Percentage)
                    print(Percentage)
                end
            }, 5)

            -- Statistic Panel
            -- https://rageui.dylan-malandain.io/docs/master/panel-statitics
            RageUI.Panel.StatisticPanel(0.5, "Statistic #1", 6)
            RageUI.Panel.StatisticPanel(0.7, "Statistic #2", 6)
            RageUI.Panel.StatisticPanel(0.2, "Statistic #3", 6)

            -- Advanced Statistic Panel
            -- NOT DOCUMENTED
            RageUI.Panel.StatisticPanelAdvanced("Statistic #1", 0.2, {255,0,0,255}, 0.8, {0,255,0,255}, {255,255,255,255}, 7)
            RageUI.Panel.StatisticPanelAdvanced("Statistic #2", 0.8, {255,0,0,255}, 0, {0,255,0,255}, {255,255,255,255}, 7)
            RageUI.Panel.StatisticPanelAdvanced("Statistic #1", 0.6, {255,0,0,255}, 0.1, {0,255,0,255}, {255,255,255,255}, 7)
        end)

        -- Windows Menu
        RageUI.IsVisible(heritageMenu, function()
            -- Items

            -- Heritage Window
            -- https://rageui.dylan-malandain.io/docs/master/window-heritage
            RageUI.Window.Heritage(heritage.mum,heritage.dad)


            RageUI.Item.List("Mother", { "1", "2", "3", "4" }, 1, nil, {}, true, {
                onListChange = function(Index, Items)
                    heritage.mum = Index
                end,
                onSelected = function(Index, Items)
           
                end,
                onHovered = function(Index, Items)
           
                end
            })

            RageUI.Item.List("Father", { "1", "2", "3", "4" }, 1, nil, {}, true, {
                onListChange = function(Index, Items)
                    heritage.dad = Index
                end,
                onSelected = function(Index, Items)
           
                end,
                onHovered = function(Index, Items)
           
                end
            })
        end, function() 
            -- Panels
        end)           
    end
end)
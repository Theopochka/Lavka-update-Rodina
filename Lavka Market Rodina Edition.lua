script_name('Lavka Market || Rodina')
script_version('1.0')
script_author('Theopka')
local VersionV = '1.0'

local faicons = require('fAwesome6')
local sampev = require("samp.events")
local imgui = require ('mimgui')
local encoding = require ('encoding')
encoding.default = 'CP1251'

local widgets = require 'widgets'
local AI_TOGGLE = {}
local ToU32 = imgui.ColorConvertFloat4ToU32

local filter = imgui.ImGuiTextFilter() 
local u8 = encoding.UTF8
local new = imgui.new
local ffi = require 'ffi'
local ltn12 = require("ltn12")
local http = require("socket.http")
local sf = require 'sampfuncs'
local gta = ffi.load("GTASA")

logfile = " "
local iniFile = 'Lavka(rodina)Config.ini'
local sw, sh = getScreenResolution()
local current_date = os.date("%d-%m-%Y")
local current_time = os.date("[%H:%M:%S]")
local file_path = "Lavka(rodina)Settings/ "..current_date..".log"

local found_update = new.bool()
local CentralGlMenu = new.bool()
local LogMenu = new.bool()
local outhmenu = new.bool()
local SkupSellzxc = new.bool()
local inicfg = require 'inicfg'
 local ini = inicfg.load({
    cfg ={
		activation = "cent",	
        i1 = "",
        i2 = "",
        i3 = "",
        i4 = "",
        i5 = "",
        i6 = "",
        i7 = "",
        i8 = "",
        i9 = "",
        i10 = "",
        i11 = "",
        i12 = "",
        i13 = "",
        i14 = "",
        i15 = "",
        i16 = "",
        i17 = "",
        i18 = "",
        i19 = "",
        i20 = "",
        i21 = "",
        i22 = "",
        i23 = "",
        i24 = "",
        i25 = "",
        i26 = "",
        i27 = "",
        i28 = "",
        i29 = "",
        i30 = "",
        i31 = "",
        i32 = "",
        i33 = "",
        i34 = "",
        i35 = "",
        i36 = "",
        i37 = "",
        i38 = "",
        i39 = "",
        i40 = "",
        i41 = "",
        i42 = "",
        i43 = "",
        i44 = "",
        i45 = "",
        i46 = "",
        i47 = "",
        i48 = "",
        i49 = "",
        i50 = "",
        i51 = "",
        i52 = "",
        i53 = "",
        i54 = "",
        i55 = "",
        i56 = "",
        i57 = "",
        i58 = "",
        i59 = "",
        i60 = "",
        i61 = "",
        i62 = "",
        i63 = "",
        i64 = "",
        i65 = "",
        i66 = "",
        i67 = "",
        i68 = "",
        i69 = "",
        i70 = "",
        i71 = "",
        i62 = "",
        i73 = "",
        i74 = "",
        i75 = "",
        i76 = "",
        i77 = "",
        i78 = "",
        i79 = "",
        i80 = "",
        i81 = "",
        i82 = "",
        i83 = "",
        i84 = "",
        i85 = "",
        i86 = "",
        i87 = "",
        i88 = "",
        i89 = "",
        i90 = "",
        i91 = "",
        i92 = "",
        i93 = "",
        i94 = "",
        i95 = "",
        i96 = "",
        i97 = "",
        i98 = "",
        i99 = "",
        i100 = "",

        se1 = "",
        se2 = "",
        se3 = "",
        se4 = "",
        se5 = "",
        se6 = "",
        se7 = "",
        se8 = "",
        se9 = "",
        se10 = "",
        se11 = "",
        se12 = "",
        se13 = "",
        se14 = "",
        se15 = "",
        se16 = "",
        se17 = "",
        se18 = "",
        se19 = "",
        se20 = "",
        se21 = "",
        se22 = "",
        se23 = "",
        se24 = "",
        se25 = "",
        se26 = "",
        se27 = "",
        se28 = "",
        se29 = "",
        se30 = "",
        se31 = "",
        se32 = "",
        se33 = "",
        se34 = "",
        se35 = "",
        se36 = "",
        se37 = "",
        se38 = "",
        se39 = "",
        se40 = "",
        se41 = "",
        se42 = "",
        se43 = "",
        se44 = "",
        se45 = "",
        se46 = "",
        se47 = "",
        se48 = "",
        se49 = "",
        se50 = "",
        se51 = "",
        se52 = "",
        se53 = "",
        se54 = "",
        se55 = "",
        se56 = "",
        se57 = "",
        se58 = "",
        se59 = "",
        se60 = "",
        se61 = "",
        se62 = "",
        se63 = "",
        se64 = "",
        se65 = "",
        se66 = "",
        se67 = "",
        se68 = "",
        se69 = "",
        se70 = "",
        se71 = "",
        se62 = "",
        se73 = "",
        se74 = "",
        se75 = "",
        se76 = "",
        se77 = "",
        se78 = "",
        se79 = "",
        se80 = "",
        se81 = "",
        se82 = "",
        se83 = "",
        se84 = "",
        se85 = "",
        se86 = "",
        se87 = "",
        se88 = "",
        se89 = "",
        se90 = "",
        se91 = "",
        se92 = "",
        se93 = "",
        se94 = "",
        se95 = "",
        se96 = "",
        se97 = "",
        se98 = "",
        se99 = "",
        se100 = "",

        BindArkt1 = false,
        BindArkt2 = false,
        BindArkt3 = false,
        BindArkt4 = false,
        BindArkt5 = false,
        BindArkt6 = false,
        BindArkt7 = false,
        BindArkt8 = false,
        BindArkt9 = false,
        BindArkt10 = false,
        BindArkt11 = false,
        BindArkt12 = false,
        BindArkt13 = false,
        BindArkt14 = false,
        BindArkt15 = false,
        BindArkt16 = false,
        BindArkt17 = false,
        BindArkt18 = false,
        BindArkt19 = false,
        BindArkt20 = false,
        BindArkt21 = false,
        BindArkt22 = false,
        BindArkt23 = false,
        BindArkt24 = false,
        BindArkt25 = false,
        BindArkt26 = false,
        BindArkt27 = false,
        BindArkt28 = false,
        BindArkt29 = false,
        BindArkt30 = false,
        BindArkt31 = false,
        BindArkt32 = false,
        BindArkt33 = false,
        BindArkt34 = false,
        BindArkt35 = false,
        BindArkt36 = false,
        BindArkt37 = false,
        BindArkt38 = false,
        BindArkt39 = false,
        BindArkt40 = false,
        BindArkt41 = false,
        BindArkt42 = false,
        BindArkt43 = false,
        BindArkt44 = false,
        BindArkt45 = false,
        BindArkt46 = false,
        BindArkt47 = false,
        BindArkt48 = false,
        BindArkt49 = false,
        BindArkt50 = false,
        BindArkt51 = false,
        BindArkt52 = false,
        BindArkt53 = false,
        BindArkt54 = false,
        BindArkt55 = false,
        BindArkt56 = false,
        BindArkt57 = false,
        BindArkt58 = false,
        BindArkt59 = false,
        BindArkt60 = false,
        BindArkt61 = false,
        BindArkt62 = false,
        BindArkt63 = false,
        BindArkt64 = false,
        BindArkt65 = false,
        BindArkt66 = false,
        BindArkt67 = false,
        BindArkt68 = false,
        BindArkt69 = false,
        BindArkt70 = false,
        BindArkt71 = false,
        BindArkt62 = false,
        BindArkt73 = false,
        BindArkt74 = false,
        BindArkt75 = false,
        BindArkt76 = false,
        BindArkt77 = false,
        BindArkt78 = false,
        BindArkt79 = false,
        BindArkt80 = false,
        BindArkt81 = false,
        BindArkt82 = false,
        BindArkt83 = false,
        BindArkt84 = false,
        BindArkt85 = false,
        BindArkt86 = false,
        BindArkt87 = false,
        BindArkt88 = false,
        BindArkt89 = false,
        BindArkt90 = false,
        BindArkt91 = false,
        BindArkt92 = false,
        BindArkt93 = false,
        BindArkt94 = false,
        BindArkt95 = false,
        BindArkt96 = false,
        BindArkt97 = false,
        BindArkt98 = false,
        BindArkt99 = false,
        BindArkt100 = false,
        Lavkaaiki34b = false,
        Lavkaaikib = false,
    },
    eat = {
        autoeat = false,
        eatchoice = 0,
    },
    cfgtheme = {
        theme = 0
    },
}, "Lavka(rodina)Config")

if not doesDirectoryExist(getWorkingDirectory()..'\\config') then 
    print('Creating the config directory') createDirectory(getWorkingDirectory()..'\\config') 
end
if not doesFileExist('monetloader/config/'..iniFile) then 
    print('Creating/updating the .ini file') inicfg.save(ini, iniFile) 
end

local new, str, sizeof = imgui.new, ffi.string, ffi.sizeof
local sizeX, sizeY = getScreenResolution()

local variables = {}
local boolVariables = {}

for i = 1, 1000 do
    variables[i] = {
        se = imgui.new.char[255](u8(ini.cfg['se' .. i])),
        i = imgui.new.char[255](u8(ini.cfg['i' .. i]))
    }


    local boolValue = ini.cfg['BindArkt' .. i]
    if boolValue ~= nil then
        boolVariables[i] = imgui.new.bool(boolValue)
    else
        boolVariables[i] = imgui.new.bool()
    end
end
-- Теперь переменные доступны напрямую из массивов без глобальной области видимости
-- Например, variables[1].se, variables[1].i, boolVariables[1]

local activation = new.char[255]((ini.cfg.activation))
local activated = false

local autoeat = new.bool(ini.eat.autoeat)
local eatList = {u8"Чипсы", u8"Рыба", u8"Оленина"}
local eatListNumber = new.int(ini.eat.eatchoice - 0)
local eatListBuffer = new["const char*"][#eatList](eatList)

local theme = new.int(ini.cfgtheme.theme)
local themesList, stylesList = {}, {}

function imgui.ToggleButton(str_id, value)
	local duration = 0.3
	local p = imgui.GetCursorScreenPos()
    local DL = imgui.GetWindowDrawList()
	local size = imgui.ImVec2(40, 20)
    local title = str_id:gsub('##.*$', '')
    local ts = imgui.CalcTextSize(title)
    local cols = {
    	enable = imgui.GetStyle().Colors[imgui.Col.ButtonActive],
    	disable = imgui.GetStyle().Colors[imgui.Col.TextDisabled]	
    }
    local radius = 6
    local o = {
    	x = 4,
    	y = p.y + (size.y / 2)
    }
    local A = imgui.ImVec2(p.x + radius + o.x, o.y)
    local B = imgui.ImVec2(p.x + size.x - radius - o.x, o.y)

    if AI_TOGGLE[str_id] == nil then
        AI_TOGGLE[str_id] = {
        	clock = nil,
        	color = value[0] and cols.enable or cols.disable,
        	pos = value[0] and B or A
        }
    end
    local pool = AI_TOGGLE[str_id]
    
    imgui.BeginGroup()
	    local pos = imgui.GetCursorPos()
	    local result = imgui.InvisibleButton(str_id, imgui.ImVec2(size.x, size.y))
	    if result then
	        value[0] = not value[0]
	        pool.clock = os.clock()
	    end
	    if #title > 0 then
		    local spc = imgui.GetStyle().ItemSpacing
		    imgui.SetCursorPos(imgui.ImVec2(pos.x + size.x + spc.x, pos.y + ((size.y - ts.y) / 2)))
	    	imgui.Text(title)
    	end
    imgui.EndGroup()

 	if pool.clock and os.clock() - pool.clock <= duration then
        pool.color = bringVec4To(
            imgui.ImVec4(pool.color),
            value[0] and cols.enable or cols.disable,
            pool.clock,
            duration
        )

        pool.pos = bringVec2To(
        	imgui.ImVec2(pool.pos),
        	value[0] and B or A,
        	pool.clock,
            duration
        )
    else
        pool.color = value[0] and cols.enable or cols.disable
        pool.pos = value[0] and B or A
    end

	DL:AddRect(p, imgui.ImVec2(p.x + size.x, p.y + size.y), ToU32(pool.color), 10, 15, 1)
	DL:AddCircleFilled(pool.pos, radius, ToU32(pool.color))

    return result
end
function bringVec4To(from, to, start_time, duration)
    local timer = os.clock() - start_time
    if timer >= 0.00 and timer <= duration then
        local count = timer / (duration / 100)
        return imgui.ImVec4(
            from.x + (count * (to.x - from.x) / 100),
            from.y + (count * (to.y - from.y) / 100),
            from.z + (count * (to.z - from.z) / 100),
            from.w + (count * (to.w - from.w) / 100)
        ), true
    end
    return (timer > duration) and to or from, false
end

function bringVec2To(from, to, start_time, duration)
    local timer = os.clock() - start_time
    if timer >= 0.00 and timer <= duration then
        local count = timer / (duration / 100)
        return imgui.ImVec2(
            from.x + (count * (to.x - from.x) / 100),
            from.y + (count * (to.y - from.y) / 100)
        ), true
    end
    return (timer > duration) and to or from, false
end

function iniSave()
	ini.cfgtheme.theme = theme[0]
	inicfg.save(ini, iniFile)
end
function cfg_save()
    inicfg.save(ini, "Lavka(rodina)Config")
end

local Lavkaaikib = imgui.new.bool(ini.cfg.Lavkaaikib)
local Lavkaaiki34b = imgui.new.bool(ini.cfg.Lavkaaiki34b)

function save_log(logtext, filename)
    
    -- Открываем файл для добавления нового лога
    local file = io.open(file_path, "a")

    if file then
        -- Записываем лог в файл с датой и временем
        file:write(current_time .. " " .. logtext .. "\n")

        -- Закрываем файл
        file:close()
    end
end

local lfs = require("lfs")

if not lfs.attributes("Lavka(rodina)Settings") then
    lfs.mkdir("Lavka(rodina)Settings")
end

local logsFiles = {}

local filenew = io.open(file_path, "a")
filenew:close()

if not filenew then
    local filenew = io.open(file_path, "wb")
    filenew:close()
end

for file in lfs.dir("Lavka(rodina)Settings") do
    if file:match("%.log$") then
        local filepath = "Lavka(rodina)Settings/" .. file
        local attr = lfs.attributes(file_path)
        if attr.mode == "file" then
            table.insert(logsFiles, file)
        end
    end
end


table.sort(logsFiles)

function imgui.CenterText(text)
    local width = imgui.GetWindowWidth()
    local calc = imgui.CalcTextSize(text)
    imgui.SetCursorPosX( width / 2 - calc.x / 2 )
    imgui.Text(text)
end

local lovkanamed = "24/7"


function sampev.onServerMessage(color, text)
    -- Проверка аренды лавки
    if text:find('^%[Подсказка%] {FFFFFF}Вы успешно арендовали лавку для продажи') or text:find('^%[Подсказка%] {FFFFFF}Вы успешно выставили лавку для продажи.покупки товара.$') then
        save_log("Вы арендовали лавку", logfile)
        msg('Для того, чтобы открыть меню введите команду: /cent')

        if Lavkaaikib[0] then
            CentralGlMenu[0] = not CentralGlMenu[0]
        end
        if Lavkaaiki34b[0] then
            SkupSellzxc[0] = not SkupSellzxc[0]
        end

    elseif 
        text:find('^%[Информация%] {FFFFFF}Вы отказались от аренды лавки') or 
        text:find('^%[Информация%] {FFFFFF}Вы сняли лавку') or 
        text:find('^%[Информация%] {FFFFFF}У Вас закончилось время для настройки товаров') then
        save_log("Вы покинули лавку", logfile)

        if Lavkaaikib[0] then
            CentralGlMenu[0] = false
        end
        if Lavkaaiki34b[0] then
            SkupSellzxc[0] = false
        end

    elseif text:find('^%[Информация%] {FFFFFF}Ваша лавка была закрыта') then
        save_log("Вы потеряли лавку", logfile)

        if Lavkaaikib[0] then
            CentralGlMenu[0] = false
        end
        if Lavkaaiki34b[0] then
            SkupSellzxc[0] = false
        end
    end

    if text:find('^.+ купил у вас .+, вы получили %$%d+ от продажи %(комиссия %d процент%(а%)%)') then
        local name, product, money = text:match('^(.+) купил у вас (.+), вы получили %$(%d+) от продажи %(комиссия %d процент%(а%)%)')
        if name and product and money then
            save_log(name .. " купил у вас " .. product .. " за " .. money .. "$", logfile)
        end
    elseif text:find('^Вы купили .+ у игрока .+ за %$%d+') then
        local product, name, money = text:match('^Вы купили (.+) у игрока (.+) за %$(%d+)')
        if product and name and money then
            save_log(name .. " продал вам " .. product .. " за " .. money .. "$", logfile)
        end
    end
end

imgui.OnFrame(function() return LogMenu[0] end, function(player)
  
    imgui.SetNextWindowPos(imgui.ImVec2(sw / 2, sh / 2), imgui.Cond.FirstUseEver, imgui.ImVec2(0.5, 0.5))
    imgui.Begin('Central ADD Vip Version', LogMenu, imgui.WindowFlags.AlwaysAutoResize + imgui.WindowFlags.NoTitleBar)
  
    for i, CentralHelper in ipairs(logsFiles) do
        if imgui.Button(CentralHelper) then
            Param = CentralHelper
            local openlog = io.open("Lavka(rodina)Settings/"..Param, 'r')
            local textlog = openlog:read("*all")
            if not textlog then
                return
            end
            commands = {textlog}
            openlog:close()
        end
    end
    if imgui.Button(u8'Закрыть', imgui.ImVec2(-1 * MONET_DPI_SCALE, 29 * MONET_DPI_SCALE)) then
        LogMenu[0] = not LogMenu[0]
    end
    imgui.End()
end)
   
local new = imgui.new
local str = ffi.string
local sizeof = ffi.sizeof
  
imgui.OnFrame(function() return CentralGlMenu[0] end,
    function(player)
    imgui.SetNextWindowPos(imgui.ImVec2(sizeX / 2, sizeY / 2), imgui.Cond.FirstUseEver, imgui.ImVec2(0.5, 0.5))
    imgui.SetNextWindowSize(imgui.ImVec2(700 * MONET_DPI_SCALE, 350 * MONET_DPI_SCALE), imgui.Cond.FirstUseEver)
    imgui.Begin(u8'Lavka Market || Rodina Edition || '.. VersionV, CentralGlMenu, imgui.WindowFlags.NoCollapse)

    if Param then
        local openlog = io.open("Lavka(rodina)Settings/"..Param, 'r')
        local textlog = openlog:read("*all")
        if not textlog then
            return
        end
        commands = {textlog}
        openlog:close()
    end

    imgui.SetCursorPos(imgui.ImVec2(5 * MONET_DPI_SCALE, 20 * MONET_DPI_SCALE))
    if imgui.BeginChild('tab', imgui.ImVec2(200 * MONET_DPI_SCALE, -1), true) then
        if imgui.Button(faicons("SERVER") .. u8' Лог операций', imgui.ImVec2(190 * MONET_DPI_SCALE, 50 * MONET_DPI_SCALE)) then tab = 1 end
        if imgui.Button(faicons("SHOP") .. u8' Скуп', imgui.ImVec2(190 * MONET_DPI_SCALE, 50 * MONET_DPI_SCALE)) then tab = 5 end
        if imgui.Button(faicons("GEAR") .. u8' Настройки', imgui.ImVec2(190 * MONET_DPI_SCALE, 50 * MONET_DPI_SCALE)) then tab = 2 end
        if imgui.Button(faicons("LIST") .. u8' Информация', imgui.ImVec2(190 * MONET_DPI_SCALE, 50 * MONET_DPI_SCALE)) then tab = 4 end
    imgui.EndChild()
    end

    imgui.SetCursorPos(imgui.ImVec2(210 * MONET_DPI_SCALE, 20 * MONET_DPI_SCALE))
    if imgui.BeginChild('Name', imgui.ImVec2(), true) then
        if tab == 1 then 
            if imgui.Button(u8' Выбрать день для просмотра лога', imgui.ImVec2(-1 * MONET_DPI_SCALE, 29 * MONET_DPI_SCALE)) then
                LogMenu[0] = not LogMenu[0]
            end
            if Param then
                imgui.CenterText(u8'Лог за: ' ..Param)
                for i = 1, #commands do
                    if filter:PassFilter((commands[i])) then
                        imgui.Text(u8(commands[i]))
                    end
                end
            end
            imgui.EndChild()

        elseif tab == 2 then
            imgui.CenterText(u8"Темы")
            if imgui.Combo(u8'Выбор темы', theme, new['const char*'][#themesList](themesList), #themesList) then 
                themes[theme[0]+1].func() 
                iniSave() 
                imgui.TextDisabled(u8'Скоро будет добавлена возможность делать свою тема(MoonMonet)')
            end
            imgui.Separator()
            if imgui.ToggleButton(u8"Открытие меню Lavka Market при аренде лавки", Lavkaaikib) then
                ini.cfg.Lavkaaikib =  Lavkaaikib[0]
            end
            imgui.InputTextWithHint(u8"Активация", "Без слеша!", activation, 256)
            imgui.SameLine()
            if imgui.Button(u8"Сохранить") then
                ini.cfg.activation = u8(str(activation))
                cfg_save()
                msg("Сохранено! Активация - "..ini.cfg.activation, -0)
                script_reload()
            end
            imgui.Separator()
            if imgui.ToggleButton(u8"Автоeда", autoeat) then
                ini.eat.autoeat = autoeat[0]
                cfg_save()
            end
            if autoeat[0] then
                imgui.Combo(u8"Еда", eatListNumber, eatListBuffer, #eatList)
            end
            imgui.Separator()
            if imgui.Button(u8"Перезагрузить") then script_reload() end
            imgui.SameLine()
            if imgui.Button(u8"Выгрузить") then script_unload() end

	    elseif tab == 4 then
            imgui.CenterText(u8'Version: ' ..VersionV)
            imgui.CenterText(u8'Author: Theopka')
                            if imgui.Button(faicons("BELL") .. u8" Перейти в ТГК", imgui.ImVec2(-1 * MONET_DPI_SCALE, 25 * MONET_DPI_SCALE)) then openLink("https://t.me/TheopkaStudio") end
                            imgui.Separator()
            imgui.CenterText(u8' Команды')
            imgui.Text(u8'/cent - Гл.Меню')
            imgui.Text(u8'/calc - Калькулятор')

            --imgui.Separator()
            --imgui.CenterText(u8"Актуальная версия " ..VersionV)
            --imgui.BulletText(u8"Фикс Автоеды")
            --imgui.BulletText(u8"Фикс оторбражение в логах: ???")

        elseif tab == 5 then
            if imgui.Button(faicons("play") .. u8" Начать скуп ", imgui.ImVec2(-1 * MONET_DPI_SCALE, 30 * MONET_DPI_SCALE)) then
                lua_thread.create(function()
                    for i = 1, 100 do
                        if boolVariables[i][0] then         
                            sampSendDialogResponse(9, 1, 2, nil)
                            sampSendDialogResponse(10, 1, 1, ini.cfg['se' .. i])
                            sampSendDialogResponse(909, 1, 0,  ini.cfg['se' .. i])
                            sampSendDialogResponse (910, 1, 0, nil)
                            sampSendDialogResponse (11, 1, 0, ini.cfg['i' .. i])
                        end
                        wait(2000)
                    end
                end)
            end
        imgui.Text('')
        imgui.BeginChild('##scrolling', imgui.ImVec2(-1, -1), true)
        for i = 1, 100 do
            imgui.BeginChild('##child_' .. i, imgui.ImVec2(-1, 125), true)
                if imgui.ToggleButton(u8'##toggle_' .. i, boolVariables[i]) then
                    ini.cfg['BindArkt' .. i] = boolVariables[i][0]
                end 
                imgui.InputTextWithHint(u8'##se_' .. i, u8'Например: Платиновая рулетка', variables[i].se, 255)
                ini.cfg['se' .. i] = u8:decode(str(variables[i].se))
                imgui.InputTextWithHint(u8'##i_' .. i, u8'Например: "1, 500000"', variables[i].i, 255)
                ini.cfg['i' .. i] = u8:decode(str(variables[i].i))
            imgui.EndChild()
        end
        cfg_save() -- Сохранение значений вынесено за пределы цикла
        imgui.EndChild()
    end
    imgui.EndChild()
    imgui.EndChild()
    end
    imgui.End()
end)

function main()
    if not isSampfuncsLoaded() or not isSampLoaded() then return end
    while not isSampAvailable() do wait(100) end
    while not sampIsLocalPlayerSpawned() do wait(0) end
    msg('Скрипт Загружен!')
    msg('Активация: /'..ini.cfg.activation)
    msg('Автор Theopka')
    check_update()
    sampRegisterChatCommand(ini.cfg.activation, ws_toggle)
    sampRegisterChatCommand("update", function() found_update[0] = not found_update[0] end)
    sampRegisterChatCommand('calc', function(arg) 
        if #arg == 0 or not arg:find('%d+') then return sampAddChatMessage('[Калькулятор]: {DE9F00}Ошибка, введите /calc [пример]', 0x08A351) end
        sampAddChatMessage('[Lavka Market]: {DE9F00}'..arg..' = '..assert(load("return " .. arg))(), 0x08A351)
    end)
end
function openwindow()
    CentralGlMenu[0] = not CentralGlMenu[0] 
end
 

function script_reload()
    lua_thread.create(function()
        msg("Скрипт будет перезагружен через 2 секунды!")
        wait(2000)
        msg("Перезагрузка...")
        thisScript():reload()
    end)
end

function script_unload()
    lua_thread.create(function()
        msg("Скрипт будет выгружен через 2 секунды!")
        wait(2000)
        msg("Выгрузка...")
        thisScript():unload()
    end)
end


local toggled = true
EXPORTS = {
    canToggle = function() return true end,
    getToggle = function() return toggled end,
    toggle = function()
        toggled = not toggled
        CentralGlMenu[0] = not CentralGlMenu[0]
    end
}

function ws_toggle()
    if toggled then
        CentralGlMenu[0] = not CentralGlMenu[0]
    else
        msg("Скрипт выключен")
    end
end

function msg(message)
    sampAddChatMessage("[Lavka Market]: {ffffff}".. message, 0x21D518)
end
function imgui.Hint(text)
    imgui.SameLine()
    imgui.TextDisabled("(?)")
    if imgui.IsItemHovered() then
        imgui.BeginTooltip()
        imgui.TextUnformatted((text))
        imgui.EndTooltip()
    end
end


ffi.cdef[[
    void _Z12AND_OpenLinkPKc(const char* link);
]]
function openLink(link)
    gta._Z12AND_OpenLinkPKc(link)
end

function sampev.onDisplayGameText(style, time, text)
	if text:find('You are hungry!') or text:find('You are very hungry!') then
        sampSendChat("/eat")
        sampSendDialogResponse(9965, 1, ini.eat.eatchoice - 1, nil)
    end
end

function sampev.onShowDialog(dialogId, style, title, button1, button2, text)
    if ini.cfg.toggled then
        if dialogId == 9965 then
            sampSendDialogResponse(9965, 1, ini.eat.eatchoice - 1, 0)
        end
    end
end
imgui.OnInitialize(function()
    decor()
	for i, v in ipairs(themes) do table.insert(themesList, v.name) end
	themes[theme[0]+1].func()

    imgui.GetIO().IniFilename = nil
    local config = imgui.ImFontConfig()
    config.MergeMode = true
    config.PixelSnapH = true
    iconRanges = imgui.new.ImWchar[3](faicons.min_range, faicons.max_range, 0)
    imgui.GetIO().Fonts:AddFontFromMemoryCompressedBase85TTF(faicons.get_font_data_base85('solid'), 14, config, iconRanges) -- solid - тип иконок, так же есть thin, regular, light и duotone
end)

function decor()
    -- == Декор часть == --
    imgui.GetStyle().WindowTitleAlign = imgui.ImVec2(0.5, 0.5)
    imgui.GetStyle().WindowRounding = 10.0
    imgui.GetStyle().ChildRounding = 6.0
    imgui.GetStyle().FrameRounding = 8
    imgui.GetStyle().PopupRounding = 8
    imgui.GetStyle().ScrollbarRounding = 8
    imgui.GetStyle().ScrollbarSize = 13.0
    imgui.GetStyle().GrabRounding = 8.
end

themes = {
	{
		name = u8'Зелёная',
		func = function()
			imgui.SwitchContext()
			local style = imgui.GetStyle()
			local colors = style.Colors
			local clr = imgui.Col
			local ImVec4 = imgui.ImVec4
			colors[clr.Text]				   = ImVec4(0.90, 0.90, 0.90, 1.00)
			colors[clr.TextDisabled]		   = ImVec4(0.00, 0.69, 0.33, 1.00)
			colors[clr.WindowBg]			   = ImVec4(0.08, 0.08, 0.08, 1.00)
			colors[clr.ChildBg]		  = ImVec4(0.10, 0.10, 0.10, 0.40)
			colors[clr.PopupBg]				= ImVec4(0.08, 0.08, 0.08, 1.00)
			colors[clr.Border]				 = ImVec4(0.70, 0.70, 0.70, 0.40)
			colors[clr.BorderShadow]		   = ImVec4(0.00, 0.00, 0.00, 0.00)
			colors[clr.FrameBg]				= ImVec4(0.15, 0.15, 0.15, 1.00)
			colors[clr.FrameBgHovered]		 = ImVec4(0.19, 0.19, 0.19, 0.71)
			colors[clr.FrameBgActive]		  = ImVec4(0.34, 0.34, 0.34, 0.79)
			colors[clr.TitleBg]				= ImVec4(0.00, 0.69, 0.33, 0.80)
			colors[clr.TitleBgActive]		  = ImVec4(0.00, 0.74, 0.36, 1.00)
			colors[clr.TitleBgCollapsed]	   = ImVec4(0.00, 0.69, 0.33, 0.50)
			colors[clr.MenuBarBg]			  = ImVec4(0.00, 0.80, 0.38, 1.00)
			colors[clr.ScrollbarBg]			= ImVec4(0.16, 0.16, 0.16, 1.00)
			colors[clr.ScrollbarGrab]		  = ImVec4(0.00, 0.69, 0.33, 1.00)
			colors[clr.ScrollbarGrabHovered]   = ImVec4(0.00, 0.82, 0.39, 1.00)
			colors[clr.ScrollbarGrabActive]	= ImVec4(0.00, 1.00, 0.48, 1.00)
			colors[clr.CheckMark]			  = ImVec4(0.00, 0.69, 0.33, 1.00)
			colors[clr.SliderGrab]			 = ImVec4(0.00, 0.69, 0.33, 1.00)
			colors[clr.SliderGrabActive]	   = ImVec4(0.00, 0.77, 0.37, 1.00)
			colors[clr.Button]				 = ImVec4(0.00, 0.69, 0.33, 1.00)
			colors[clr.ButtonHovered]		  = ImVec4(0.00, 0.82, 0.39, 1.00)
			colors[clr.ButtonActive]		   = ImVec4(0.00, 0.87, 0.42, 1.00)
			colors[clr.Header]				 = ImVec4(0.00, 0.69, 0.33, 1.00)
			colors[clr.HeaderHovered]		  = ImVec4(0.00, 0.76, 0.37, 0.57)
			colors[clr.HeaderActive]		   = ImVec4(0.00, 0.88, 0.42, 0.89)
			colors[clr.Separator]			  = ImVec4(1.00, 1.00, 1.00, 0.40)
			colors[clr.SeparatorHovered]	   = ImVec4(1.00, 1.00, 1.00, 0.60)
			colors[clr.SeparatorActive]		= ImVec4(1.00, 1.00, 1.00, 0.80)
			colors[clr.ResizeGrip]			 = ImVec4(0.00, 0.69, 0.33, 1.00)
			colors[clr.ResizeGripHovered]	  = ImVec4(0.00, 0.76, 0.37, 1.00)
			colors[clr.ResizeGripActive]	   = ImVec4(0.00, 0.86, 0.41, 1.00)
			colors[clr.PlotLines]			  = ImVec4(0.00, 0.69, 0.33, 1.00)
			colors[clr.PlotLinesHovered]	   = ImVec4(0.00, 0.74, 0.36, 1.00)
			colors[clr.PlotHistogram]		  = ImVec4(0.00, 0.69, 0.33, 1.00)
			colors[clr.PlotHistogramHovered]   = ImVec4(0.00, 0.80, 0.38, 1.00)
			colors[clr.TextSelectedBg]		 = ImVec4(0.00, 0.69, 0.33, 0.72)
			colors[clr.ModalWindowDimBg]   = ImVec4(0.17, 0.17, 0.17, 0.48)
		end
	},
	{
		name = u8'Красная',
		func = function()
			imgui.SwitchContext()
			local style = imgui.GetStyle()
			local colors = style.Colors
			local clr = imgui.Col
			local ImVec4 = imgui.ImVec4
			colors[clr.Text]				   = ImVec4(0.95, 0.96, 0.98, 1.00)
			colors[clr.TextDisabled]		   = ImVec4(1.00, 0.28, 0.28, 1.00)
			colors[clr.WindowBg]			   = ImVec4(0.14, 0.14, 0.14, 1.00)
			colors[clr.ChildBg]		  = ImVec4(0.12, 0.12, 0.12, 0.40)
			colors[clr.PopupBg]				= ImVec4(0.08, 0.08, 0.08, 0.94)
			colors[clr.Border]				 = ImVec4(0.14, 0.14, 0.14, 1.00)
			colors[clr.BorderShadow]		   = ImVec4(1.00, 1.00, 1.00, 0.00)
			colors[clr.FrameBg]				= ImVec4(0.22, 0.22, 0.22, 1.00)
			colors[clr.FrameBgHovered]		 = ImVec4(0.18, 0.18, 0.18, 1.00)
			colors[clr.FrameBgActive]		  = ImVec4(0.09, 0.12, 0.14, 1.00)
			colors[clr.TitleBg]				= ImVec4(0.14, 0.14, 0.14, 0.81)
			colors[clr.TitleBgActive]		  = ImVec4(0.14, 0.14, 0.14, 1.00)
			colors[clr.TitleBgCollapsed]	   = ImVec4(0.00, 0.00, 0.00, 0.51)
			colors[clr.MenuBarBg]			  = ImVec4(0.20, 0.20, 0.20, 1.00)
			colors[clr.ScrollbarBg]			= ImVec4(0.02, 0.02, 0.02, 0.39)
			colors[clr.ScrollbarGrab]		  = ImVec4(0.36, 0.36, 0.36, 1.00)
			colors[clr.ScrollbarGrabHovered]   = ImVec4(0.18, 0.22, 0.25, 1.00)
			colors[clr.ScrollbarGrabActive]	= ImVec4(0.24, 0.24, 0.24, 1.00)
			colors[clr.CheckMark]			  = ImVec4(1.00, 0.28, 0.28, 1.00)
			colors[clr.SliderGrab]			 = ImVec4(1.00, 0.28, 0.28, 1.00)
			colors[clr.SliderGrabActive]	   = ImVec4(1.00, 0.28, 0.28, 1.00)
			colors[clr.Button]				 = ImVec4(1.00, 0.28, 0.28, 1.00)
			colors[clr.ButtonHovered]		  = ImVec4(1.00, 0.39, 0.39, 1.00)
			colors[clr.ButtonActive]		   = ImVec4(1.00, 0.21, 0.21, 1.00)
			colors[clr.Header]				 = ImVec4(1.00, 0.28, 0.28, 1.00)
			colors[clr.HeaderHovered]		  = ImVec4(1.00, 0.39, 0.39, 1.00)
			colors[clr.HeaderActive]		   = ImVec4(1.00, 0.21, 0.21, 1.00)
			colors[clr.ResizeGrip]			 = ImVec4(1.00, 0.28, 0.28, 1.00)
			colors[clr.ResizeGripHovered]	  = ImVec4(1.00, 0.39, 0.39, 1.00)
			colors[clr.PlotLines]			  = ImVec4(0.61, 0.61, 0.61, 1.00)
			colors[clr.PlotLinesHovered]	   = ImVec4(1.00, 0.43, 0.35, 1.00)
			colors[clr.PlotHistogram]		  = ImVec4(1.00, 0.21, 0.21, 1.00)
			colors[clr.PlotHistogramHovered]   = ImVec4(1.00, 0.18, 0.18, 1.00)
			colors[clr.TextSelectedBg]		 = ImVec4(1.00, 0.32, 0.32, 1.00)
			colors[clr.ModalWindowDimBg]   = ImVec4(0.26, 0.26, 0.26, 0.60)
		end
	},
	{
		name = u8'Пурпурная',
		func = function()
			imgui.SwitchContext()
			local style = imgui.GetStyle()
			local colors = style.Colors
			local clr = imgui.Col
			local ImVec4 = imgui.ImVec4
			colors[clr.FrameBg]				= ImVec4(0.46, 0.11, 0.29, 1.00)
			colors[clr.FrameBgHovered]		 = ImVec4(0.69, 0.16, 0.43, 1.00)
			colors[clr.FrameBgActive]		  = ImVec4(0.58, 0.10, 0.35, 1.00)
			colors[clr.TitleBg]				= ImVec4(0.00, 0.00, 0.00, 1.00)
			colors[clr.TitleBgActive]		  = ImVec4(0.61, 0.16, 0.39, 1.00)
			colors[clr.TitleBgCollapsed]	   = ImVec4(0.00, 0.00, 0.00, 0.51)
			colors[clr.CheckMark]			  = ImVec4(0.94, 0.30, 0.63, 1.00)
			colors[clr.SliderGrab]			 = ImVec4(0.85, 0.11, 0.49, 1.00)
			colors[clr.SliderGrabActive]	   = ImVec4(0.89, 0.24, 0.58, 1.00)
			colors[clr.Button]				 = ImVec4(0.46, 0.11, 0.29, 1.00)
			colors[clr.ButtonHovered]		  = ImVec4(0.69, 0.17, 0.43, 1.00)
			colors[clr.ButtonActive]		   = ImVec4(0.59, 0.10, 0.35, 1.00)
			colors[clr.Header]				 = ImVec4(0.46, 0.11, 0.29, 1.00)
			colors[clr.HeaderHovered]		  = ImVec4(0.69, 0.16, 0.43, 1.00)
			colors[clr.HeaderActive]		   = ImVec4(0.58, 0.10, 0.35, 1.00)
			colors[clr.Separator]			  = ImVec4(0.69, 0.16, 0.43, 1.00)
			colors[clr.SeparatorHovered]	   = ImVec4(0.58, 0.10, 0.35, 1.00)
			colors[clr.SeparatorActive]		= ImVec4(0.58, 0.10, 0.35, 1.00)
			colors[clr.ResizeGrip]			 = ImVec4(0.46, 0.11, 0.29, 0.70)
			colors[clr.ResizeGripHovered]	  = ImVec4(0.69, 0.16, 0.43, 0.67)
			colors[clr.ResizeGripActive]	   = ImVec4(0.70, 0.13, 0.42, 1.00)
			colors[clr.TextSelectedBg]		 = ImVec4(1.00, 0.78, 0.90, 0.35)
			colors[clr.Text]				   = ImVec4(1.00, 1.00, 1.00, 1.00)
			colors[clr.TextDisabled]		   = ImVec4(0.60, 0.19, 0.40, 1.00)
			colors[clr.WindowBg]			   = ImVec4(0.06, 0.06, 0.06, 0.94)
			colors[clr.ChildBg]		  = ImVec4(0.00, 0.00, 0.00, 0.40)
			colors[clr.PopupBg]				= ImVec4(0.08, 0.08, 0.08, 0.94)
			colors[clr.Border]				 = ImVec4(0.49, 0.14, 0.31, 1.00)
			colors[clr.BorderShadow]		   = ImVec4(0.49, 0.14, 0.31, 0.00)
			colors[clr.MenuBarBg]			  = ImVec4(0.15, 0.15, 0.15, 1.00)
			colors[clr.ScrollbarBg]			= ImVec4(0.02, 0.02, 0.02, 0.53)
			colors[clr.ScrollbarGrab]		  = ImVec4(0.31, 0.31, 0.31, 1.00)
			colors[clr.ScrollbarGrabHovered]   = ImVec4(0.41, 0.41, 0.41, 1.00)
			colors[clr.ScrollbarGrabActive]	= ImVec4(0.51, 0.51, 0.51, 1.00)
			colors[clr.ModalWindowDimBg]   = ImVec4(0.80, 0.80, 0.80, 0.35)
		end
	},
	{
		name = u8'Фиолетовая',
		func = function()
			imgui.SwitchContext()
			local style = imgui.GetStyle()
			local colors = style.Colors
			local clr = imgui.Col
			local ImVec4 = imgui.ImVec4
			colors[clr.WindowBg]			  = ImVec4(0.14, 0.12, 0.16, 1.00)
			colors[clr.ChildBg]		 = ImVec4(0.30, 0.20, 0.39, 0.40)
			colors[clr.PopupBg]			   = ImVec4(0.05, 0.05, 0.10, 0.90)
			colors[clr.Border]				= ImVec4(0.89, 0.85, 0.92, 0.30)
			colors[clr.BorderShadow]		  = ImVec4(0.00, 0.00, 0.00, 0.00)
			colors[clr.FrameBg]			   = ImVec4(0.30, 0.20, 0.39, 1.00)
			colors[clr.FrameBgHovered]		= ImVec4(0.41, 0.19, 0.63, 0.68)
			colors[clr.FrameBgActive]		 = ImVec4(0.41, 0.19, 0.63, 1.00)
			colors[clr.TitleBg]			   = ImVec4(0.41, 0.19, 0.63, 0.45)
			colors[clr.TitleBgCollapsed]	  = ImVec4(0.41, 0.19, 0.63, 0.35)
			colors[clr.TitleBgActive]		 = ImVec4(0.41, 0.19, 0.63, 0.78)
			colors[clr.MenuBarBg]			 = ImVec4(0.30, 0.20, 0.39, 0.57)
			colors[clr.ScrollbarBg]		   = ImVec4(0.30, 0.20, 0.39, 1.00)
			colors[clr.ScrollbarGrab]		 = ImVec4(0.41, 0.19, 0.63, 0.31)
			colors[clr.ScrollbarGrabHovered]  = ImVec4(0.41, 0.19, 0.63, 0.78)
			colors[clr.ScrollbarGrabActive]   = ImVec4(0.41, 0.19, 0.63, 1.00)
			colors[clr.CheckMark]			 = ImVec4(0.56, 0.61, 1.00, 1.00)
			colors[clr.SliderGrab]			= ImVec4(0.41, 0.19, 0.63, 0.24)
			colors[clr.SliderGrabActive]	  = ImVec4(0.41, 0.19, 0.63, 1.00)
			colors[clr.Button]				= ImVec4(0.41, 0.19, 0.63, 0.44)
			colors[clr.ButtonHovered]		 = ImVec4(0.41, 0.19, 0.63, 0.86)
			colors[clr.ButtonActive]		  = ImVec4(0.64, 0.33, 0.94, 1.00)
			colors[clr.Header]				= ImVec4(0.41, 0.19, 0.63, 0.76)
			colors[clr.HeaderHovered]		 = ImVec4(0.41, 0.19, 0.63, 0.86)
			colors[clr.HeaderActive]		  = ImVec4(0.41, 0.19, 0.63, 1.00)
			colors[clr.ResizeGrip]			= ImVec4(0.41, 0.19, 0.63, 0.20)
			colors[clr.ResizeGripHovered]	 = ImVec4(0.41, 0.19, 0.63, 0.78)
			colors[clr.ResizeGripActive]	  = ImVec4(0.41, 0.19, 0.63, 1.00)
			colors[clr.PlotLines]			 = ImVec4(0.89, 0.85, 0.92, 0.63)
			colors[clr.PlotLinesHovered]	  = ImVec4(0.41, 0.19, 0.63, 1.00)
			colors[clr.PlotHistogram]		 = ImVec4(0.89, 0.85, 0.92, 0.63)
			colors[clr.PlotHistogramHovered]  = ImVec4(0.41, 0.19, 0.63, 1.00)
			colors[clr.TextSelectedBg]		= ImVec4(0.41, 0.19, 0.63, 0.43)
			colors[clr.TextDisabled]		  = ImVec4(0.41, 0.19, 0.63, 1.00)
			colors[clr.ModalWindowDimBg]  = ImVec4(0.20, 0.20, 0.20, 0.35)
		end
	},
	{
		name = u8'Вишнёвая',
		func = function()
			imgui.SwitchContext()
			local style = imgui.GetStyle()
			local colors = style.Colors
			local clr = imgui.Col
			local ImVec4 = imgui.ImVec4
			colors[clr.Text]				  = ImVec4(0.86, 0.93, 0.89, 0.78)
			colors[clr.TextDisabled]		  = ImVec4(0.71, 0.22, 0.27, 1.00)
			colors[clr.WindowBg]			  = ImVec4(0.13, 0.14, 0.17, 1.00)
			colors[clr.ChildBg]		 = ImVec4(0.20, 0.22, 0.27, 0.58)
			colors[clr.PopupBg]			   = ImVec4(0.20, 0.22, 0.27, 0.90)
			colors[clr.Border]				= ImVec4(0.31, 0.31, 1.00, 0.00)
			colors[clr.BorderShadow]		  = ImVec4(0.00, 0.00, 0.00, 0.00)
			colors[clr.FrameBg]			   = ImVec4(0.20, 0.22, 0.27, 1.00)
			colors[clr.FrameBgHovered]		= ImVec4(0.46, 0.20, 0.30, 0.78)
			colors[clr.FrameBgActive]		 = ImVec4(0.46, 0.20, 0.30, 1.00)
			colors[clr.TitleBg]			   = ImVec4(0.23, 0.20, 0.27, 1.00)
			colors[clr.TitleBgActive]		 = ImVec4(0.50, 0.08, 0.26, 1.00)
			colors[clr.TitleBgCollapsed]	  = ImVec4(0.20, 0.20, 0.27, 0.75)
			colors[clr.MenuBarBg]			 = ImVec4(0.20, 0.22, 0.27, 0.47)
			colors[clr.ScrollbarBg]		   = ImVec4(0.20, 0.22, 0.27, 1.00)
			colors[clr.ScrollbarGrab]		 = ImVec4(0.09, 0.15, 0.10, 1.00)
			colors[clr.ScrollbarGrabHovered]  = ImVec4(0.46, 0.20, 0.30, 0.78)
			colors[clr.ScrollbarGrabActive]   = ImVec4(0.46, 0.20, 0.30, 1.00)
			colors[clr.CheckMark]			 = ImVec4(0.71, 0.22, 0.27, 1.00)
			colors[clr.SliderGrab]			= ImVec4(0.47, 0.77, 0.83, 0.14)
			colors[clr.SliderGrabActive]	  = ImVec4(0.71, 0.22, 0.27, 1.00)
			colors[clr.Button]				= ImVec4(0.47, 0.77, 0.83, 0.14)
			colors[clr.ButtonHovered]		 = ImVec4(0.46, 0.20, 0.30, 0.86)
			colors[clr.ButtonActive]		  = ImVec4(0.46, 0.20, 0.30, 1.00)
			colors[clr.Header]				= ImVec4(0.46, 0.20, 0.30, 0.76)
			colors[clr.HeaderHovered]		 = ImVec4(0.46, 0.20, 0.30, 0.86)
			colors[clr.HeaderActive]		  = ImVec4(0.50, 0.08, 0.26, 1.00)
			colors[clr.ResizeGrip]			= ImVec4(0.47, 0.77, 0.83, 0.04)
			colors[clr.ResizeGripHovered]	 = ImVec4(0.46, 0.20, 0.30, 0.78)
			colors[clr.ResizeGripActive]	  = ImVec4(0.46, 0.20, 0.30, 1.00)
			colors[clr.PlotLines]			 = ImVec4(0.86, 0.93, 0.89, 0.63)
			colors[clr.PlotLinesHovered]	  = ImVec4(0.46, 0.20, 0.30, 1.00)
			colors[clr.PlotHistogram]		 = ImVec4(0.86, 0.93, 0.89, 0.63)
			colors[clr.PlotHistogramHovered]  = ImVec4(0.46, 0.20, 0.30, 1.00)
			colors[clr.TextSelectedBg]		= ImVec4(0.46, 0.20, 0.30, 0.43)
			colors[clr.ModalWindowDimBg]  = ImVec4(0.20, 0.22, 0.27, 0.73)
		end
	},
	{
		name = u8'Жёлтая',
		func = function()
			imgui.SwitchContext()
			local style = imgui.GetStyle()
			local colors = style.Colors
			local clr = imgui.Col
			local ImVec4 = imgui.ImVec4
			colors[clr.Text]				 = ImVec4(0.92, 0.92, 0.92, 1.00)
			colors[clr.TextDisabled]		 = ImVec4(0.78, 0.55, 0.21, 1.00)
			colors[clr.WindowBg]			 = ImVec4(0.06, 0.06, 0.06, 1.00)
			colors[clr.ChildBg]		= ImVec4(0.00, 0.00, 0.00, 0.40)
			colors[clr.PopupBg]			  = ImVec4(0.08, 0.08, 0.08, 0.94)
			colors[clr.Border]			   = ImVec4(0.51, 0.36, 0.15, 1.00)
			colors[clr.BorderShadow]		 = ImVec4(0.00, 0.00, 0.00, 0.00)
			colors[clr.FrameBg]			  = ImVec4(0.11, 0.11, 0.11, 1.00)
			colors[clr.FrameBgHovered]	   = ImVec4(0.51, 0.36, 0.15, 1.00)
			colors[clr.FrameBgActive]		= ImVec4(0.78, 0.55, 0.21, 1.00)
			colors[clr.TitleBg]			  = ImVec4(0.51, 0.36, 0.15, 1.00)
			colors[clr.TitleBgActive]		= ImVec4(0.91, 0.64, 0.13, 1.00)
			colors[clr.TitleBgCollapsed]	 = ImVec4(0.00, 0.00, 0.00, 0.51)
			colors[clr.MenuBarBg]			= ImVec4(0.11, 0.11, 0.11, 1.00)
			colors[clr.ScrollbarBg]		  = ImVec4(0.06, 0.06, 0.06, 0.53)
			colors[clr.ScrollbarGrab]		= ImVec4(0.21, 0.21, 0.21, 1.00)
			colors[clr.ScrollbarGrabHovered] = ImVec4(0.47, 0.47, 0.47, 1.00)
			colors[clr.ScrollbarGrabActive]  = ImVec4(0.81, 0.83, 0.81, 1.00)
			colors[clr.CheckMark]			= ImVec4(0.78, 0.55, 0.21, 1.00)
			colors[clr.SliderGrab]		   = ImVec4(0.91, 0.64, 0.13, 1.00)
			colors[clr.SliderGrabActive]	 = ImVec4(0.91, 0.64, 0.13, 1.00)
			colors[clr.Button]			   = ImVec4(0.51, 0.36, 0.15, 1.00)
			colors[clr.ButtonHovered]		= ImVec4(0.91, 0.64, 0.13, 1.00)
			colors[clr.ButtonActive]		 = ImVec4(0.78, 0.55, 0.21, 1.00)
			colors[clr.Header]			   = ImVec4(0.51, 0.36, 0.15, 1.00)
			colors[clr.HeaderHovered]		= ImVec4(0.91, 0.64, 0.13, 1.00)
			colors[clr.HeaderActive]		 = ImVec4(0.93, 0.65, 0.14, 1.00)
			colors[clr.Separator]			= ImVec4(0.21, 0.21, 0.21, 1.00)
			colors[clr.SeparatorHovered]	 = ImVec4(0.91, 0.64, 0.13, 1.00)
			colors[clr.SeparatorActive]	  = ImVec4(0.78, 0.55, 0.21, 1.00)
			colors[clr.ResizeGrip]		   = ImVec4(0.21, 0.21, 0.21, 1.00)
			colors[clr.ResizeGripHovered]	= ImVec4(0.91, 0.64, 0.13, 1.00)
			colors[clr.ResizeGripActive]	 = ImVec4(0.78, 0.55, 0.21, 1.00)
			colors[clr.PlotLines]			= ImVec4(0.61, 0.61, 0.61, 1.00)
			colors[clr.PlotLinesHovered]	 = ImVec4(1.00, 0.43, 0.35, 1.00)
			colors[clr.PlotHistogram]		= ImVec4(0.90, 0.70, 0.00, 1.00)
			colors[clr.PlotHistogramHovered] = ImVec4(1.00, 0.60, 0.00, 1.00)
			colors[clr.TextSelectedBg]	   = ImVec4(0.26, 0.59, 0.98, 0.35)
			colors[clr.ModalWindowDimBg] = ImVec4(0.80, 0.80, 0.80, 0.35)
		end
	},
    {
        name = u8'Тёмна-Синяя',
		func = function ()
            imgui.SwitchContext()
            local style = imgui.GetStyle()
        
            style.Colors[imgui.Col.Text]                   = imgui.ImVec4(0.90, 0.90, 0.93, 1.00)
            style.Colors[imgui.Col.TextDisabled]           = imgui.ImVec4(0.40, 0.40, 0.45, 1.00)
            style.Colors[imgui.Col.WindowBg]               = imgui.ImVec4(0.12, 0.12, 0.14, 1.00)
            style.Colors[imgui.Col.ChildBg]                = imgui.ImVec4(0.18, 0.20, 0.22, 0.30)
            style.Colors[imgui.Col.PopupBg]                = imgui.ImVec4(0.13, 0.13, 0.15, 1.00)
            style.Colors[imgui.Col.Border]                 = imgui.ImVec4(0.30, 0.30, 0.35, 1.00)
            style.Colors[imgui.Col.BorderShadow]           = imgui.ImVec4(0.00, 0.00, 0.00, 0.00)
            style.Colors[imgui.Col.FrameBg]                = imgui.ImVec4(0.18, 0.18, 0.20, 1.00)
            style.Colors[imgui.Col.FrameBgHovered]         = imgui.ImVec4(0.25, 0.25, 0.28, 1.00)
            style.Colors[imgui.Col.FrameBgActive]          = imgui.ImVec4(0.30, 0.30, 0.34, 1.00)
            style.Colors[imgui.Col.TitleBg]                = imgui.ImVec4(0.15, 0.15, 0.17, 1.00)
            style.Colors[imgui.Col.TitleBgCollapsed]       = imgui.ImVec4(0.10, 0.10, 0.12, 1.00)
            style.Colors[imgui.Col.TitleBgActive]          = imgui.ImVec4(0.15, 0.15, 0.17, 1.00)
            style.Colors[imgui.Col.MenuBarBg]              = imgui.ImVec4(0.12, 0.12, 0.14, 1.00)
            style.Colors[imgui.Col.ScrollbarBg]            = imgui.ImVec4(0.12, 0.12, 0.14, 1.00)
            style.Colors[imgui.Col.ScrollbarGrab]          = imgui.ImVec4(0.30, 0.30, 0.35, 1.00)
            style.Colors[imgui.Col.ScrollbarGrabHovered]   = imgui.ImVec4(0.40, 0.40, 0.45, 1.00)
            style.Colors[imgui.Col.ScrollbarGrabActive]    = imgui.ImVec4(0.50, 0.50, 0.55, 1.00)
            style.Colors[imgui.Col.CheckMark]              = imgui.ImVec4(0.70, 0.70, 0.90, 1.00)
            style.Colors[imgui.Col.SliderGrab]             = imgui.ImVec4(0.70, 0.70, 0.90, 1.00)
            style.Colors[imgui.Col.SliderGrabActive]       = imgui.ImVec4(0.80, 0.80, 0.90, 1.00)
            style.Colors[imgui.Col.Button]                 = imgui.ImVec4(0.18, 0.18, 0.20, 1.00)
            style.Colors[imgui.Col.ButtonHovered]          = imgui.ImVec4(0.60, 0.60, 0.90, 1.00)
            style.Colors[imgui.Col.ButtonActive]           = imgui.ImVec4(0.28, 0.56, 0.96, 1.00)
            style.Colors[imgui.Col.Header]                 = imgui.ImVec4(0.20, 0.20, 0.23, 1.00)
            style.Colors[imgui.Col.HeaderHovered]          = imgui.ImVec4(0.25, 0.25, 0.28, 1.00)
            style.Colors[imgui.Col.HeaderActive]           = imgui.ImVec4(0.30, 0.30, 0.34, 1.00)
            style.Colors[imgui.Col.Separator]              = imgui.ImVec4(0.40, 0.40, 0.45, 1.00)
            style.Colors[imgui.Col.SeparatorHovered]       = imgui.ImVec4(0.50, 0.50, 0.55, 1.00)
            style.Colors[imgui.Col.SeparatorActive]        = imgui.ImVec4(0.60, 0.60, 0.65, 1.00)
            style.Colors[imgui.Col.ResizeGrip]             = imgui.ImVec4(0.20, 0.20, 0.23, 1.00)
            style.Colors[imgui.Col.ResizeGripHovered]      = imgui.ImVec4(0.25, 0.25, 0.28, 1.00)
            style.Colors[imgui.Col.ResizeGripActive]       = imgui.ImVec4(0.30, 0.30, 0.34, 1.00)
            style.Colors[imgui.Col.PlotLines]              = imgui.ImVec4(0.61, 0.61, 0.64, 1.00)
            style.Colors[imgui.Col.PlotLinesHovered]       = imgui.ImVec4(0.70, 0.70, 0.75, 1.00)
            style.Colors[imgui.Col.PlotHistogram]          = imgui.ImVec4(0.61, 0.61, 0.64, 1.00)
            style.Colors[imgui.Col.PlotHistogramHovered]   = imgui.ImVec4(0.70, 0.70, 0.75, 1.00)
            style.Colors[imgui.Col.TextSelectedBg]         = imgui.ImVec4(0.30, 0.30, 0.34, 1.00)
            style.Colors[imgui.Col.ModalWindowDimBg]       = imgui.ImVec4(0.10, 0.10, 0.12, 0.80)
            style.Colors[imgui.Col.Tab]                    = imgui.ImVec4(0.18, 0.20, 0.22, 1.00)
            style.Colors[imgui.Col.TabHovered]             = imgui.ImVec4(0.60, 0.60, 0.90, 1.00)
            style.Colors[imgui.Col.TabActive]              = imgui.ImVec4(0.28, 0.56, 0.96, 1.00)
        end
    },
    {
        name = u8'Тёмная',
		func = function()
            imgui.SwitchContext()
            
            --==[ COLORS ]==--
            imgui.GetStyle().Colors[imgui.Col.Text]                   = imgui.ImVec4(1.00, 1.00, 1.00, 1.00)
            imgui.GetStyle().Colors[imgui.Col.TextDisabled]           = imgui.ImVec4(0.50, 0.50, 0.50, 1.00)
            imgui.GetStyle().Colors[imgui.Col.WindowBg]               = imgui.ImVec4(0.07, 0.07, 0.07, 1.00)
            imgui.GetStyle().Colors[imgui.Col.ChildBg]                = imgui.ImVec4(0.07, 0.07, 0.07, 1.00)
            imgui.GetStyle().Colors[imgui.Col.PopupBg]                = imgui.ImVec4(0.07, 0.07, 0.07, 1.00)
            imgui.GetStyle().Colors[imgui.Col.Border]                 = imgui.ImVec4(0.25, 0.25, 0.26, 0.54)
            imgui.GetStyle().Colors[imgui.Col.BorderShadow]           = imgui.ImVec4(0.00, 0.00, 0.00, 0.00)
            imgui.GetStyle().Colors[imgui.Col.FrameBg]                = imgui.ImVec4(0.12, 0.12, 0.12, 1.00)
            imgui.GetStyle().Colors[imgui.Col.FrameBgHovered]         = imgui.ImVec4(0.25, 0.25, 0.26, 1.00)
            imgui.GetStyle().Colors[imgui.Col.FrameBgActive]          = imgui.ImVec4(0.25, 0.25, 0.26, 1.00)
            imgui.GetStyle().Colors[imgui.Col.TitleBg]                = imgui.ImVec4(0.12, 0.12, 0.12, 1.00)
            imgui.GetStyle().Colors[imgui.Col.TitleBgActive]          = imgui.ImVec4(0.12, 0.12, 0.12, 1.00)
            imgui.GetStyle().Colors[imgui.Col.TitleBgCollapsed]       = imgui.ImVec4(0.12, 0.12, 0.12, 1.00)
            imgui.GetStyle().Colors[imgui.Col.MenuBarBg]              = imgui.ImVec4(0.12, 0.12, 0.12, 1.00)
            imgui.GetStyle().Colors[imgui.Col.ScrollbarBg]            = imgui.ImVec4(0.12, 0.12, 0.12, 1.00)
            imgui.GetStyle().Colors[imgui.Col.ScrollbarGrab]          = imgui.ImVec4(0.00, 0.00, 0.00, 1.00)
            imgui.GetStyle().Colors[imgui.Col.ScrollbarGrabHovered]   = imgui.ImVec4(0.41, 0.41, 0.41, 1.00)
            imgui.GetStyle().Colors[imgui.Col.ScrollbarGrabActive]    = imgui.ImVec4(0.51, 0.51, 0.51, 1.00)
            imgui.GetStyle().Colors[imgui.Col.CheckMark]              = imgui.ImVec4(1.00, 1.00, 1.00, 1.00)
            imgui.GetStyle().Colors[imgui.Col.SliderGrab]             = imgui.ImVec4(0.21, 0.20, 0.20, 1.00)
            imgui.GetStyle().Colors[imgui.Col.SliderGrabActive]       = imgui.ImVec4(0.21, 0.20, 0.20, 1.00)
            imgui.GetStyle().Colors[imgui.Col.Button]                 = imgui.ImVec4(0.12, 0.12, 0.12, 1.00)
            imgui.GetStyle().Colors[imgui.Col.ButtonHovered]          = imgui.ImVec4(0.21, 0.20, 0.20, 1.00)
            imgui.GetStyle().Colors[imgui.Col.ButtonActive]           = imgui.ImVec4(0.41, 0.41, 0.41, 1.00)
            imgui.GetStyle().Colors[imgui.Col.Header]                 = imgui.ImVec4(0.12, 0.12, 0.12, 1.00)
            imgui.GetStyle().Colors[imgui.Col.HeaderHovered]          = imgui.ImVec4(0.20, 0.20, 0.20, 1.00)
            imgui.GetStyle().Colors[imgui.Col.HeaderActive]           = imgui.ImVec4(0.47, 0.47, 0.47, 1.00)
            imgui.GetStyle().Colors[imgui.Col.Separator]              = imgui.ImVec4(0.12, 0.12, 0.12, 1.00)
            imgui.GetStyle().Colors[imgui.Col.SeparatorHovered]       = imgui.ImVec4(0.12, 0.12, 0.12, 1.00)
            imgui.GetStyle().Colors[imgui.Col.SeparatorActive]        = imgui.ImVec4(0.12, 0.12, 0.12, 1.00)
            imgui.GetStyle().Colors[imgui.Col.ResizeGrip]             = imgui.ImVec4(1.00, 1.00, 1.00, 0.25)
            imgui.GetStyle().Colors[imgui.Col.ResizeGripHovered]      = imgui.ImVec4(1.00, 1.00, 1.00, 0.67)
            imgui.GetStyle().Colors[imgui.Col.ResizeGripActive]       = imgui.ImVec4(1.00, 1.00, 1.00, 0.95)
            imgui.GetStyle().Colors[imgui.Col.Tab]                    = imgui.ImVec4(0.12, 0.12, 0.12, 1.00)
            imgui.GetStyle().Colors[imgui.Col.TabHovered]             = imgui.ImVec4(0.28, 0.28, 0.28, 1.00)
            imgui.GetStyle().Colors[imgui.Col.TabActive]              = imgui.ImVec4(0.30, 0.30, 0.30, 1.00)
            imgui.GetStyle().Colors[imgui.Col.TabUnfocused]           = imgui.ImVec4(0.07, 0.10, 0.15, 0.97)
            imgui.GetStyle().Colors[imgui.Col.TabUnfocusedActive]     = imgui.ImVec4(0.14, 0.26, 0.42, 1.00)
            imgui.GetStyle().Colors[imgui.Col.PlotLines]              = imgui.ImVec4(0.61, 0.61, 0.61, 1.00)
            imgui.GetStyle().Colors[imgui.Col.PlotLinesHovered]       = imgui.ImVec4(1.00, 0.43, 0.35, 1.00)
            imgui.GetStyle().Colors[imgui.Col.PlotHistogram]          = imgui.ImVec4(0.90, 0.70, 0.00, 1.00)
            imgui.GetStyle().Colors[imgui.Col.PlotHistogramHovered]   = imgui.ImVec4(1.00, 0.60, 0.00, 1.00)
            imgui.GetStyle().Colors[imgui.Col.TextSelectedBg]         = imgui.ImVec4(1.00, 0.00, 0.00, 0.35)
            imgui.GetStyle().Colors[imgui.Col.DragDropTarget]         = imgui.ImVec4(1.00, 1.00, 0.00, 0.90)
            imgui.GetStyle().Colors[imgui.Col.NavHighlight]           = imgui.ImVec4(0.26, 0.59, 0.98, 1.00)
            imgui.GetStyle().Colors[imgui.Col.NavWindowingHighlight]  = imgui.ImVec4(1.00, 1.00, 1.00, 0.70)
            imgui.GetStyle().Colors[imgui.Col.NavWindowingDimBg]      = imgui.ImVec4(0.80, 0.80, 0.80, 0.20)
            imgui.GetStyle().Colors[imgui.Col.ModalWindowDimBg]       = imgui.ImVec4(0.00, 0.00, 0.00, 0.70)
        end
    }
}
----------------------------------------autoupdate + window----------------------------------------

local lmPath = "Lavka Market Rodina Edition.lua"
local lmUrl = "https://raw.githubusercontent.com/Theopochka/test2/main/Lavka%20Market.lua"

function downloadFile(url, path)
    local response = {}
    local _, status_code, _ = http.request{
    url = url,
    method = "GET",
    sink = ltn12.sink.file(io.open(path, "w")),
        headers = {
            ["User-Agent"] = "Mozilla/5.0 (Windows NT 10.0;Win64) AppleWebkit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.82 Safari/537.36",
        },
    }
    if status_code == 200 then
        return true
    else
        return false
    end
end

function check_update()
    msg('Проверка наличия обновлений...')
    local currentVersionFile = io.open(lmPath, "r")
    local currentVersion = currentVersionFile:read("*a")
    currentVersionFile:close()
    local response = http.request(lmUrl)
    if response and response ~= currentVersion then
        msg("Найдено новое обновление! Вывожу окно для загрузки...")
        found_update[0] = not found_update[0]
    else
        msg("У вас актуальная версия скрипта.")
    end
end

function updateScript(scriptUrl, scriptPath)
    msg("Проверка наличия обновлений...")
    local response = http.request(scriptUrl)
    if response and response ~= currentVersion then
        msg("Обновление...")
        local success = downloadFile(scriptUrl, scriptPath)
        if success then
            msg("Скрипт успешно обновлен. Перезагрузка..")
            thisScript():reload()
        else
            msg("Неизвестная ошибка, не удалось обновить скрипт.")
        end
    else
        msg("Скрипт уже является последней версией.")
    end
end
-- спиздил меню у MikuProjectReborn, автор разрешил
imgui.OnFrame(function() return found_update[0] end, function(player)
    local scrx, scry = getScreenResolution()
    imgui.SetNextWindowPos(imgui.ImVec2(scrx / 2, scry / 2), imgui.Cond.FirstUseEver, imgui.ImVec2(0.5, 0.5))
    imgui.Begin(u8'', found_update, imgui.WindowFlags.NoTitleBar + imgui.WindowFlags.AlwaysAutoResize + imgui.WindowFlags.NoMove)
    imgui.CenterText('')
    imgui.CenterText('Lavka Market || Rodina Edition')
    imgui.CenterText('Credits: @Theopka | TheopkaStudio')
    imgui.CenterText('')
    imgui.CenterText(u8'Найдено новое обновление!')
    imgui.CenterText('')
    imgui.CenterText(u8'Было найдено новое обновление скрипта.')
    imgui.CenterText(u8'Для продолжения работы')
    imgui.CenterText(u8'Вам необходимо выбрать одну из двух кнопок ниже')
    imgui.CenterText('')
    imgui.CenterText(u8'О новых изменениях почитайте в пункте "Информация"')
    imgui.CenterText('')
    if imgui.Button(faicons("DOWNLOAD") .. u8' ОБНОВИТЬ', imgui.ImVec2(450 * MONET_DPI_SCALE, 30 * MONET_DPI_SCALE)) then
        updateScript(lmUrl, lmPath)
    end
    if imgui.Button(faicons("FORWARD") .. u8' ПРОПУСТИТЬ', imgui.ImVec2(450 * MONET_DPI_SCALE, 30 * MONET_DPI_SCALE)) then
        found_update[0] = not found_update[0]
        msg('Обновление скрипта пропущено')
    end
    imgui.End()
end
)
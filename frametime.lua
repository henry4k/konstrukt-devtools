local engine = require 'engine'
local Config = require 'core/Config'
local Timer  = require 'core/Timer'


local frametime = {}

local function TimerCallback()
    local frameTime = engine.GetFrameTime()
    print(string.format('%0.4fms (%d fps)', frameTime*1000, 1/frameTime))
end

function frametime.show()
    if not frametime.timer then
        frametime.timer = Timer(1, nil, TimerCallback)
    end
end

function frametime.hide()
    if frametime.timer then
        frametime.timer:destroy()
        frametime.timer = nil
    end
end

if Config.get('debug.show-frame-time', false) then
    frametime.show()
end


return frametime

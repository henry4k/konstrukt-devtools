local Config = require 'core/Config'
local STP    = require 'devtools/third-party/StackTracePlus'


local errorhandler = {}

local stpErrorHandler = function( message )
    return STP.stacktrace(message, 2)
end

function errorhandler.enable()
    local previousHandler = ENGINE.SetErrorFunction(stpErrorHandler)
    if not errorhandler.original and
       previousHandler ~= stpErrorHandler then
        errorhandler.original = previousHandler
    end
end

function errorhandler.restore()
    ENGINE.SetErrorFunction(errorhandler.original)
end

local errorHandlerName = Config.get('debug.error-handler', 'simple')
if errorHandlerName == 'enhanced' then
    errorhandler.enable()
end


return errorhandler

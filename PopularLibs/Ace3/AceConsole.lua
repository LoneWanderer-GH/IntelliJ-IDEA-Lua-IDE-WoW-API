---@class AceConsole
AceConsole = {}

--- Print to DEFAULT_CHAT_FRAME or given ChatFrame (anything with an .AddMessage function)
-- --- @paramsig [chatframe ,] ...
--- @param chatframe string @ Custom ChatFrame to print to (or any frame with an .AddMessage function)
--- @param ... table @ List of any values to be printed
function AceConsole:Print(chatframe, ...) end

--- Formatted (using format()) print to DEFAULT_CHAT_FRAME or given ChatFrame (anything with an .AddMessage function)
-- --- @paramsig [chatframe ,] "format"[, ...]
--- @param chatframe string @ Custom ChatFrame to print to (or any frame with an .AddMessage function)
--- @param format string @ Format string - same syntax as standard Lua format()
--- @param ... table @ Arguments to the format string
function AceConsole:Printf(...) end

--- Register a simple chat command
--- @param command string @ Chat command to be registered WITHOUT leading "/"
--- @param func func @ Function to call when the slash command is being used (funcref or methodname)
--- @param persist boolean @ if false, the command will be soft disabled/enabled when aceconsole is used as a mixin (default: true)
function AceConsole:RegisterChatCommand(command, func, persist) end

--- Unregister a chatcommand
--- @param command string @ Chat command to be unregistered WITHOUT leading "/"
function AceConsole:UnregisterChatCommand(command) end

--- Retreive one or more space-separated arguments from a string.
--- Treats quoted strings and itemlinks as non-spaced.
--- @param str string @ The raw argument string
--- @param numargs number @ How many arguments to get (default 1)
--- @param startpos number @ Where in the string to start scanning (default  1)
--- @return table @ Returns arg1, arg2, ..., nextposition\\
--- Missing arguments will be returned as nils. 'nextposition' is returned as 1e9 at the end of the string.
function AceConsole:GetArgs(str, numargs, startpos) end

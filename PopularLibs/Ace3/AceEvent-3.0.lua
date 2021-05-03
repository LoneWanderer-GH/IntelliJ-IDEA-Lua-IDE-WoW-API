---@class AceEvent
AceEvent = {}

--- Register for a Blizzard Event.
--- The callback will be called with the optional `arg` as the first argument (if supplied), and the event name as the second (or first, if no arg was supplied)
--- Any arguments to the event will be passed on after that.
--- @name AceEvent:RegisterEvent
--- @paramsig event[, callback [, arg]]
--- @param event string | GAME_EVENT @ The event to register for
--- @param callback func @ The callback function to call when the event is triggered (funcref or method, defaults to a method with the event name)
--- @param arg any @ An optional argument to pass to the callback function
function AceEvent:RegisterEvent(event, callback, arg) end

--- Unregister an event.
--- @name AceEvent:UnregisterEvent
--- @paramsig event
--- @param event string @ The event to unregister
function AceEvent:UnregisterEvent(event) end

--- Register for a custom AceEvent-internal message.
--- The callback will be called with the optional `arg` as the first argument (if supplied), and the event name as the second (or first, if no arg was supplied)
--- Any arguments to the event will be passed on after that.
--- @name AceEvent:RegisterMessage
--- @paramsig message[, callback [, arg]]
--- @param message string @ The message to register for
--- @param callback func @ The callback function to call when the message is triggered (funcref or method, defaults to a method with the event name)
--- @param arg any @ An optional argument to pass to the callback function
function AceEvent:RegisterMessage(message, callback, arg) end

--- Unregister a message
--- @name AceEvent:UnregisterMessage
--- @paramsig message
--- @param message string @ The message to unregister
function AceEvent:UnregisterMessage(message) end

--- Send a message over the AceEvent-3.0 internal message system to other addons registered for this message.
--- @name AceEvent:SendMessage
--- @paramsig message, ...
--- @param message string @ The message to send
--- @param ... any @ Any arguments to the message
function AceEvent:SendMessage(message, ...) end
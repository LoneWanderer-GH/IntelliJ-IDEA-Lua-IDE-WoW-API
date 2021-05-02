---@class AceTimer
AceTimer = {}

--- Schedule a new one-shot timer.
--- @param callback Callback function for the timer pulse (funcref or method name).
--- @param delay Delay for the timer, in seconds.
--- @param ... An optional, unlimited amount of arguments to pass to the callback function.
--- @return a timer handler instance (called id in other methods documentation)
function AceTimer:ScheduleTimer(func, delay, ...) end

--- Schedule a repeating timer.
--- The timer will fire every `delay` seconds, until canceled.
--- @param callback Callback function for the timer pulse (funcref or method name).
--- @param delay Delay for the timer, in seconds.
--- @param ... An optional, unlimited amount of arguments to pass to the callback function.
--- @return a timer handler instance (called id in other methods documentation)
function AceTimer:ScheduleRepeatingTimer(func, delay, ...) end


--- Cancels a timer with the given id, registered by the same addon object as used for `:ScheduleTimer`
--- Both one-shot and repeating timers can be canceled with this function, as long as the `id` is valid
--- and the timer has not fired yet or was canceled before.
--- @param id The id (handler object) of the timer, as returned by `:ScheduleTimer` or `:ScheduleRepeatingTimer`
function AceTimer:CancelTimer(id) end

--- Cancels all timers registered to the current addon object ('self')
function AceTimer:CancelAllTimers() end

--- Returns the time left for a timer with the given id, registered by the current addon object ('self').
--- This function will return 0 when the id is invalid.
--- @param id The id of the timer, as returned by `:ScheduleTimer` or `:ScheduleRepeatingTimer`
--- @return The time left on the timer.
function AceTimer:TimeLeft(id) end


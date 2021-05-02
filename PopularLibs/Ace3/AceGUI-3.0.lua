---@class AceGUI
AceGUI = {}

--- Create a new Widget of the given type.
--- This function will instantiate a new widget (or use one from the widget pool), and call the
--- OnAcquire function on it, before returning.
--- @param type The type of the widget.
--- @return The newly created widget.
function AceGUI:Create(type) end

--- Releases a widget Object.
--- This function calls OnRelease on the widget and places it back in the widget pool.
--- Any data on the widget is being erased, and the widget will be hidden.\\
--- If this widget is a Container-Widget, all of its Child-Widgets will be releases as well.
--- @param widget The widget to release
function AceGUI:Release(widget) end

--- Called when a widget has taken focus.
--- e.g. Dropdowns opening, Editboxes gaining kb focus
--- @param widget The widget that should be focused
function AceGUI:SetFocus(widget) end

--- Called when something has happened that could cause widgets with focus to drop it
--- e.g. titlebar of a frame being clicked
function AceGUI:ClearFocus() end
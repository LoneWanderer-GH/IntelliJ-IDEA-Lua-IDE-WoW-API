---@class AceAddon
AceAddon = {}

--- Create a new AceAddon-3.0 addon.
--- Any libraries you specified will be embeded, and the addon will be scheduled for
--- its OnInitialize and OnEnable callbacks.
--- The final addon object, with all libraries embeded, will be returned.
--- @paramsig [object ,]name[, lib, ...]
--- @param objectorname Table | string @ to use as a base for the addon (optional)
--- @param name Name @ of the addon object to create
--- @param libs table @ List of libraries to embed into the addon
--- @usage
--- -- Create a simple addon object
--- MyAddon = LibStub("AceAddon-3.0"):NewAddon("MyAddon", "AceEvent-3.0")
---
--- -- Create a Addon object based on the table of a frame
--- local MyFrame = CreateFrame("Frame")
--- MyAddon = LibStub("AceAddon-3.0"):NewAddon(MyFrame, "MyAddon", "AceEvent-3.0")
function AceAddon:NewAddon(objectorname, name, libs) end

--- Get the addon object by its name from the internal AceAddon registry.
--- Throws an error if the addon object cannot be found (except if silent is set).
--- @param name string @ unique name of the addon object
--- @param silent boolean @ if true, the addon is optional, silently return nil if its not found
--- @usage
--- -- Get the Addon
--- MyAddon = LibStub("AceAddon-3.0"):GetAddon("MyAddon")
function AceAddon:GetAddon(name, silent) end

--- - Embed a list of libraries into the specified addon.
--- This function will try to embed all of the listed libraries into the addon
--- and error if a single one fails.
---
--- **Note:** This function is for internal use by :NewAddon/:NewModule
--- @paramsig addon, [lib, ...]
--- @param addon string @ addon object to embed the libs in
--- @param libs table @ List of libraries to embed into the addon
function AceAddon:EmbedLibraries(addon, libs) end

--- - Embed a library into the addon object.
--- This function will check if the specified library is registered with LibStub
--- and if it has a :Embed function to call. It'll error if any of those conditions
--- fails.
---
--- **Note:** This function is for internal use by :EmbedLibraries
--- @paramsig addon, libname[, silent[, offset]]
--- @param addon string @ addon object to embed the library in
--- @param libname string @ name of the library to embed
--- @param silent boolean @ marks an embed to fail silently if the library doesn't exist (optional)
--- @param offset number @ will push the error messages back to said offset, defaults to 2 (optional)
function AceAddon:EmbedLibrary(addon, libname, silent, offset) end

--- Return the specified module from an addon object.
--- Throws an error if the addon object cannot be found (except if silent is set)
--- @name //addon//:GetModule
--- @paramsig name[, silent]
--- @param name string @ unique name of the module
--- @param silent boolean @ if true, the module is optional, silently return nil if its not found (optional)
--- @usage
--- -- Get the Addon
--- MyAddon = LibStub("AceAddon-3.0"):GetAddon("MyAddon")
--- -- Get the Module
--- MyModule = MyAddon:GetModule("MyModule")
function AceAddon:GetModule(name, silent) end

--- Returns the real name of the addon or module, without any prefix.
--- @name //addon//:GetName
--- @paramsig
--- @usage
---@return string @addon name
--- print(MyAddon:GetName())
--- -- prints "MyAddon"
function AceAddon:GetName() end

--- Enables the Addon, if possible, return true or false depending on success.
--- This internally calls AceAddon:EnableAddon(), thus dispatching a OnEnable callback
--- and enabling all modules of the addon (unless explicitly disabled).\\
--- :Enable() also sets the internal `enableState` variable to true
--- @name //addon//:Enable
--- @paramsig
--- @usage
--- -- Enable MyModule
--- MyAddon = LibStub("AceAddon-3.0"):GetAddon("MyAddon")
--- MyModule = MyAddon:GetModule("MyModule")
--- MyModule:Enable()
function AceAddon:Enable(self) end

--- Disables the Addon, if possible, return true or false depending on success.
--- This internally calls AceAddon:DisableAddon(), thus dispatching a OnDisable callback
--- and disabling all modules of the addon.\\
--- :Disable() also sets the internal `enableState` variable to false
--- @name //addon//:Disable
--- @paramsig
--- @usage
--- -- Disable MyAddon
--- MyAddon = LibStub("AceAddon-3.0"):GetAddon("MyAddon")
--- MyAddon:Disable()
function AceAddon:Disable(self) end

--- Enables the Module, if possible, return true or false depending on success.
--- Short-hand function that retrieves the module via `:GetModule` and calls `:Enable` on the module object.
--- @name //addon//:EnableModule
--- @paramsig name
--- @usage
--- -- Enable MyModule using :GetModule
--- MyAddon = LibStub("AceAddon-3.0"):GetAddon("MyAddon")
--- MyModule = MyAddon:GetModule("MyModule")
--- MyModule:Enable()
---
--- -- Enable MyModule using the short-hand
--- MyAddon = LibStub("AceAddon-3.0"):GetAddon("MyAddon")
--- MyAddon:EnableModule("MyModule")
function AceAddon:EnableModule(self, name) end

--- Disables the Module, if possible, return true or false depending on success.
--- Short-hand function that retrieves the module via `:GetModule` and calls `:Disable` on the module object.
--- @name //addon//:DisableModule
--- @paramsig name
--- @usage
--- -- Disable MyModule using :GetModule
--- MyAddon = LibStub("AceAddon-3.0"):GetAddon("MyAddon")
--- MyModule = MyAddon:GetModule("MyModule")
--- MyModule:Disable()
---
--- -- Disable MyModule using the short-hand
--- MyAddon = LibStub("AceAddon-3.0"):GetAddon("MyAddon")
--- MyAddon:DisableModule("MyModule")
function AceAddon:DisableModule(self, name) end

--- Set the default libraries to be mixed into all modules created by this object.
--- Note that you can only change the default module libraries before any module is created.
--- @name //addon//:SetDefaultModuleLibraries
--- @paramsig lib[, lib, ...]
--- @param lib List of libraries to embed into the addon
--- @usage
--- -- Create the addon object
--- MyAddon = LibStub("AceAddon-3.0"):NewAddon("MyAddon")
--- -- Configure default libraries for modules (all modules need AceEvent-3.0)
--- MyAddon:SetDefaultModuleLibraries("AceEvent-3.0")
--- -- Create a module
--- MyModule = MyAddon:NewModule("MyModule")
function AceAddon:SetDefaultModuleLibraries(self, ...) end

--- Set the default state in which new modules are being created.
--- Note that you can only change the default state before any module is created.
--- @name //addon//:SetDefaultModuleState
--- @paramsig state
--- @param state Default state for new modules, true for enabled, false for disabled
--- @usage
--- -- Create the addon object
--- MyAddon = LibStub("AceAddon-3.0"):NewAddon("MyAddon")
--- -- Set the default state to "disabled"
--- MyAddon:SetDefaultModuleState(false)
--- -- Create a module and explicilty enable it
--- MyModule = MyAddon:NewModule("MyModule")
--- MyModule:Enable()
function AceAddon:SetDefaultModuleState(self, state) end

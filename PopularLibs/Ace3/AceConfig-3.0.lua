---@class AceConfig
AceConfig = {}

--- Register a option table with the AceConfig registry.
--- You can supply a slash command (or a table of slash commands) to register with AceConfigCmd directly.
--- @paramsig appName, options [, slashcmd]
--- @param appName The application name for the config table.
--- @param options The option table (or a function to generate one on demand).  http://www.wowace.com/addons/ace3/pages/ace-config-3-0-options-tables/
--- @param slashcmd A slash command to register for the option table, or a table of slash commands.
--- @usage
--- local AceConfig = LibStub("AceConfig-3.0")
--- AceConfig:RegisterOptionsTable("MyAddon", myOptions, {"/myslash", "/my"})
function AceConfig:RegisterOptionsTable(appName, options, slashcmd) end

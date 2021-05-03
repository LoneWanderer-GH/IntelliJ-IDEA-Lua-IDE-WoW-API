---@class AceDB
AceDB = {}

--- Sets the defaults table for the given database object by clearing any
-- that are currently set, and then setting the new defaults.
-- @param defaults A table of defaults for this database
function AceDB:RegisterDefaults(defaults) end

--- Changes the profile of the database and all of it's namespaces to the
--- supplied named profile
--- @param name string @ The name of the profile to set as the current profile
function AceDB:SetProfile(name) end

--- Returns a table with the names of the existing profiles in the database.
--- You can optionally supply a table to re-use for this purpose.
--- @param tbl table @ A table to store the profile names in (optional)
function AceDB:GetProfiles(tbl) end

--- Returns the current profile name used by the database
function AceDB:GetCurrentProfile() end

--- Deletes a named profile.  This profile must not be the active profile.
--- @param name string @ The name of the profile to be deleted
--- @param silent boolean @ If true, do not raise an error when the profile does not exist
function AceDB:DeleteProfile(name, silent) end

--- Copies a named profile into the current profile, overwriting any conflicting
--- settings.
--- @param name string @ The name of the profile to be copied into the current profile
--- @param silent boolean @ If true, do not raise an error when the profile does not exist
function AceDB:CopyProfile(name, silent) end

--- Resets the current profile to the default values (if specified).
--- @param noChildren boolean @ if set to true, the reset will not be populated to the child namespaces of this DB object
--- @param noCallbacks boolean @ if set to true, won't fire the OnProfileReset callback
function AceDB:ResetProfile(noChildren, noCallbacks) end

--- Resets the entire database, using the string defaultProfile as the new default
--- profile.
--- @param defaultProfile table @ The profile name to use as the default
function AceDB:ResetDB(defaultProfile) end

--- Creates a new database namespace, directly tied to the database.  This
--- is a full scale database in it's own rights other than the fact that
--- it cannot control its profile individually
--- @param name string @ The name of the new namespace
--- @param defaults table @ A table of values to use as defaults
function AceDB:RegisterNamespace(name, defaults) end

--- Returns an already existing namespace from the database object.
--- @param name string @ The name of the new namespace
--- @param silent boolean @ if true, the addon is optional, silently return nil if its not found
--- @usage
--- local namespace = self.db:GetNamespace('namespace')
--- @return table @ the namespace object if found
function AceDB:GetNamespace(name, silent) end

--- Creates a new database object that can be used to handle database settings and profiles.
--- By default, an empty DB is created, using a character specific profile.
---
--- You can override the default profile used by passing any profile name as the third argument,
--- or by passing //true// as the third argument to use a globally shared profile called "Default".
---
--- Note that there is no token replacement in the default profile name, passing a defaultProfile as "char"
--- will use a profile named "char", and not a character-specific profile.
--- @param tbl string | table @ The name of variable, or table to use for the database
--- @param defaults table @ A table of database defaults
--- @param defaultProfile string @ The name of the default profile. If not set, a character specific profile will be used as the default.
--- You can also pass //true// to use a shared global profile called "Default".
---
--- @usage
--- -- Create an empty DB using a character-specific default profile.
--- self.db = LibStub("AceDB-3.0"):New("MyAddonDB")
---
--- @usage
--- -- Create a DB using defaults and using a shared default profile
--- self.db = LibStub("AceDB-3.0"):New("MyAddonDB", defaults, true)
function AceDB:New(tbl, defaults, defaultProfile) end
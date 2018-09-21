---@class ChatInfo
C_ChatInfo = {}

---@param playerLocation table
---@return bool canReport
function C_ChatInfo:CanReportPlayer(playerLocation) end

---@param channelIndex number
---@param rosterIndex number
---@return string, bool, bool, string name, owner, moderator, guid
function C_ChatInfo:GetChannelRosterInfo(channelIndex, rosterIndex) end

---@return number numChannels
function C_ChatInfo:GetNumActiveChannels() end

---@return string registeredPrefixes
function C_ChatInfo:GetRegisteredAddonMessagePrefixes() end

---@param prefix string
---@return bool isRegistered
function C_ChatInfo:IsAddonMessagePrefixRegistered(prefix) end

---@param channelType ChatChannelType
---@return bool isPartyChannelType
function C_ChatInfo:IsPartyChannelType(channelType) end

--- Registers interest in addon messages with this prefix, cannot be an empty string.
---@param prefix string
---@return bool successfulRequest
function C_ChatInfo:RegisterAddonMessagePrefix(prefix) end

---@param complaintType string
---@param optional playerLocation table
---@param optional comment string
function C_ChatInfo:ReportPlayer(complaintType,  , comment) end

--- Sends a text payload to other clients specified by chatChannel and target which are registered to listen for prefix.
---@param prefix string
---@param message string
---@param optional chatType string @ ChatType, defaults to SLASH_CMD_PARTY.
---@param optional target string @ Only applies for targeted channels
---@return bool success
function C_ChatInfo:SendAddonMessage(prefix, message, chatType, target) end

--- Sends a text payload to other clients specified by chatChannel and target which are registered to listen for prefix. Intended for plain text payloads; logged and throttled.
---@param prefix string
---@param message string
---@param optional chatType string @ ChatType, defaults to SLASH_CMD_PARTY.
---@param optional target string @ Only applies for targeted channels
---@return bool success
function C_ChatInfo:SendAddonMessageLogged(prefix, message, chatType, target) end

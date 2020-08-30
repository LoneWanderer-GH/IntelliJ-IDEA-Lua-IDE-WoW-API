---@class AnimaDiversionInfo
C_AnimaDiversion = {}

function C_AnimaDiversion.CloseUI() end

---@return AnimaDiversionNodeInfo animaNodes
function C_AnimaDiversion.GetAnimaDiversionNodes() end

---@return table|nil normalizedPosition
function C_AnimaDiversion.GetOriginPosition() end

---@return number progress
function C_AnimaDiversion.GetReinforceProgress() end

---@return string textureKit
function C_AnimaDiversion.GetTextureKit() end

function C_AnimaDiversion.OpenAnimaDiversionUI() end

---@param talentID number 
---@param temporary boolean 
function C_AnimaDiversion.SelectAnimaNode(talentID, temporary) end

---@class AnimaDiversionNodeState
local AnimaDiversionNodeState = {}
AnimaDiversionNodeState.Unavailable = 0
AnimaDiversionNodeState.Available = 1
AnimaDiversionNodeState.SelectedTemporary = 2
AnimaDiversionNodeState.SelectedPermanent = 3

---@class AnimaDiversionCostInfo
---@field currencyID number 
---@field quantity number 
local AnimaDiversionCostInfo = {}

---@class AnimaDiversionFrameInfo
---@field textureKit string 
---@field title string 
---@field mapID number 
local AnimaDiversionFrameInfo = {}

---@class AnimaDiversionNodeInfo
---@field talentID number 
---@field name string 
---@field description string 
---@field costs table 
---@field currencyID number 
---@field icon number 
---@field normalizedPosition table 
---@field state AnimaDiversionNodeState 
local AnimaDiversionNodeInfo = {}


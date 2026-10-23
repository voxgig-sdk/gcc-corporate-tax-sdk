-- GccCorporateTax SDK error

local json = require("dkjson")

local GccCorporateTaxError = {}
GccCorporateTaxError.__index = GccCorporateTaxError

-- Reachable for a debugger, absent from the table itself: the context holds
-- the live spec and options, and an error is what gets dumped or encoded.
local CONTEXT = setmetatable({}, { __mode = "k" })


function GccCorporateTaxError.new(code, msg, ctx)
  local self = setmetatable({}, GccCorporateTaxError)
  self.is_sdk_error = true
  self.sdk = "GccCorporateTax"
  self.code = code or ""
  self.msg = msg or ""
  self.result = nil
  self.spec = nil
  self.status = -1
  CONTEXT[self] = ctx
  return self
end


function GccCorporateTaxError:context()
  return CONTEXT[self]
end


function GccCorporateTaxError:error()
  return self.msg
end


function GccCorporateTaxError:not_found()
  return 404 == self.status
end


-- What make_error attached is already cleaned; the context is not part of
-- the record.
function GccCorporateTaxError:to_table()
  return {
    sdk = self.sdk,
    code = self.code,
    msg = self.msg,
    status = self.status,
    result = self.result,
    spec = self.spec,
  }
end


function GccCorporateTaxError:to_json()
  return json.encode(self:to_table())
end


function GccCorporateTaxError:__tostring()
  return self.msg
end


function GccCorporateTaxError.__tojson(self)
  return self:to_json()
end


return GccCorporateTaxError

-- StarTrek SDK error

local StarTrekError = {}
StarTrekError.__index = StarTrekError


function StarTrekError.new(code, msg, ctx)
  local self = setmetatable({}, StarTrekError)
  self.is_sdk_error = true
  self.sdk = "StarTrek"
  self.code = code or ""
  self.msg = msg or ""
  self.ctx = ctx
  self.result = nil
  self.spec = nil
  return self
end


function StarTrekError:error()
  return self.msg
end


function StarTrekError:__tostring()
  return self.msg
end


return StarTrekError

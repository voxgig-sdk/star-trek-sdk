package = "voxgig-sdk-star-trek"
version = "0.0-1"
source = {
  url = "git://github.com/voxgig-sdk/star-trek-sdk.git"
}
description = {
  summary = "StarTrek SDK for Lua",
  license = "MIT"
}
dependencies = {
  "lua >= 5.3",
  "dkjson >= 2.5",
  "dkjson >= 2.5",
}
build = {
  type = "builtin",
  modules = {
    ["star-trek_sdk"] = "star-trek_sdk.lua",
    ["config"] = "config.lua",
    ["features"] = "features.lua",
  }
}

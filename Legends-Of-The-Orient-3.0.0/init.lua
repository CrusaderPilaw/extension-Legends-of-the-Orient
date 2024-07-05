local mapping = {
  ["gm\\body_knight.gm1"] = "ucp/plugins/Legends-Of-The-Orient-*/resources/gm/body_knight.gm1",
  ["gm\\body_knight_top.gm1"] = "ucp/plugins/Legends-Of-The-Orient-*/resources/gm/body_knight_top.gm1",
  ["gm\\tile_workshops.gm1"] = "ucp/plugins/Legends-Of-The-Orient-*/resources/gm/tile_workshops.gm1",
}
return {
  enable = function(self, config)
    for originalPath, newPath in pairs(mapping) do
      modules.files:overrideFileWith(originalPath, newPath)
    end
  end,
  disable = function(self, config) end,
}
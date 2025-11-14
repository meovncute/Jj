local Loader = {}

local url = "https://github.com/meovncute/Jj/raw/refs/heads/main/MainModule2.lua"

function Loader.Load()
    local success, code = pcall(function()
        return game:HttpGet(url)
    end)

    if not success then
        warn("[LoaderModule] Không thể tải file:", code)
        return nil
    end

    local func, err = loadstring(code)
    if not func then
        warn("[LoaderModule] Lỗi loadstring:", err)
        return nil
    end

    local moduleReturned = func()

    return moduleReturned -- trả về table/module
end

return Loader

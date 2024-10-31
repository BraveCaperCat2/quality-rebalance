require "prototypes.promethium-reprocessing"

-- remove "Quick Quality loss" for all modules.

for _,Module in pairs(data.raw["module"]) do
    if Module ~= nil then
        if Module.effect then
            if Module.effect.quality then
                if Module.effect.quality < 0 then
                    Module.effect.quality = 0
                end
            end
        end
    end
end

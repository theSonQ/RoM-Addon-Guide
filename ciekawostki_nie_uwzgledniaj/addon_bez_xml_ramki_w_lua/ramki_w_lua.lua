-- MojPierwszyAddon.lua

-- 1. Definiujemy funkcję, która wykona się dopiero po załadowaniu gry.
-- Musi być globalna, ponieważ API RoM wywołuje skrypty ze stringów.
function MojPierwszyAddon_OnEvent(this, event)
    if event == "VARIABLES_LOADED" then
        SendSystemChat("Witaj Świecie :f")
        
        -- DOBRA PRAKTYKA / OPTYMALIZACJA: 
        -- Skoro chcemy przywitać się tylko raz przy starcie, wyrejestrowujemy zdarzenie.
        -- Zapobiega to wyciekom wydajności (gra nie musi już powiadamiać tego addona o tym zdarzeniu).
        this:UnregisterEvent("VARIABLES_LOADED")
    end
end

-- 2. Tworzymy niewidzialną ramkę interfejsu, która posłuży nam jako nasłuchiwacz zdarzeń.
local frame = CreateUIComponent("Frame", "MojPierwszyAddon_EventFrame", "UIParent")

-- 3. Rejestrujemy zdarzenie końca ładowania zmiennych/interfejsu.
frame:RegisterEvent("VARIABLES_LOADED")

-- 4. Podpinamy naszą funkcję pod zdarzenie "OnEvent" tej ramki.
-- UWAGA: W przeciwieństwie do WoW-a, w RoM funkcja SetScripts często wymaga przekazania
-- kodu w postaci stringa (tekstu), a nie bezpośredniej referencji do funkcji.
frame:SetScripts("OnEvent", "MojPierwszyAddon_OnEvent(this, event)")


---Zabezpieczyliśmy kod przed wykonaniem w złym momencie (brak błędów UI).
---Użyliśmy UnregisterEvent, co jest świetną praktyką zapobiegającą marnowaniu zasobów procesora (tzw. event spam).
---ostosowaliśmy sposób przypisywania skryptów (SetScripts) do specyfiki silnika Runes of Magic.
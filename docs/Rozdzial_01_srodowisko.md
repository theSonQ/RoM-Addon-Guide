***

## Przygotowanie środowiska i struktura addonu

Witaj w świecie modyfikowania interfejsu Runes of Magic! Zanim napiszemy pierwszą linijkę kodu, musimy odpowiednio przygotować nasze środowisko pracy. Zrozumienie, gdzie gra szuka plików i w jaki sposób je czyta, to absolutna podstawa.

### Lokalizacja addonów
Klient gry ładuje modyfikacje z jednego, konkretnego miejsca. Przejdź do głównego katalogu, w którym zainstalowałeś grę. Musisz tam odnaleźć (lub stworzyć, jeśli instalujesz modyfikacje po raz pierwszy) folder `Interface`, a wewnątrz niego folder `AddOns`. 
Twoja ścieżka powinna wyglądać następująco:
`Runes of Magic\Interface\AddOns\`

Każdy nowy addon, który stworzymy, będzie miał tutaj swój własny, osobny folder. Pamiętaj o złotej zasadzie: **nazwa folderu musi być dokładnie taka sama, jak nazwa głównego pliku konfiguracyjnego addonu**.

### Święta Trójca plików
Dla celów nauki stwórzmy w katalogu `AddOns` folder o nazwie `MojPierwszyAddon`. Wewnątrz niego utworzymy trzy pliki, które stanowią fundament (tzw. Świętą Trójcę) niemal każdego rozszerzenia w RoM:

*   **`MojPierwszyAddon.toc` (Table of Contents):** To wizytówka i spis treści Twojego addonu. Gra czyta ten plik jako pierwszy. Zawiera on informacje o autorze czy wersji, ale przede wszystkim instruuje silnik gry, w jakiej kolejności ma załadować pliki `.xml` oraz `.lua`.
*   **`MojPierwszyAddon.xml` (Wygląd / UI):** Ten plik odpowiada za warstwę wizualną. Definiujemy w nim ramki (Frames), przyciski i teksty. Dobrą praktyką jest trzymanie tutaj wyłącznie struktury interfejsu oraz rejestrowanie zdarzeń (Events). Staramy się nie umieszczać w nim samej logiki.
*   **`MojPierwszyAddon.lua` (Logika / Kod):** Serce naszego addonu. To tutaj znajduje się kod wykonawczy, funkcje, obsługa zdarzeń zdefiniowanych w XML i cała "matematyka" stojąca za działaniem naszego narzędzia.

### Wykrywanie błędów (Debugowanie)
Podczas pisania kodu na pewno natrafisz na błędy – to naturalna część programowania. API Runes of Magic domyślnie ukrywa błędy języka Lua, aby wyskakujące okienka nie psuły rozgrywki zwykłym graczom. Zamiast tego, gra sygnalizuje problem **migającą, czerwoną ikoną przy minimapie**. 

Jako twórca addonów musisz zwracać na nią baczną uwagę! Kliknięcie w tę ikonę otworzy okno z logiem błędów, które wskaże Ci konkretny plik i numer linijki, w której kod przestał działać. Bez sprawdzania tych komunikatów, pisanie addonów byłoby jak błądzenie we mgle.

***
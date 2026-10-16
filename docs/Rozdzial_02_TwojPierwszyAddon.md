***

## Pierwszy kod: Hello World i plik .toc

Każda podróż zaczyna się od pierwszego kroku. W świecie programowania tradycją jest stworzenie programu, który po prostu wita się ze światem. Nasz pierwszy addon wypisze wiadomość na czacie systemowym gry.

W folderze `MojPierwszyAddon` stwórzmy najpierw plik informacyjny. Utwórz plik tekstowy i zmień jego nazwę na `MojPierwszyAddon.toc`. Otwórz go w dowolnym edytorze tekstu (np. Notatniku lub Notepad++) i wklej poniższy kod:

```text
## Title: Hello World
## Notes: Moj pierwszy addon do RoM
## Author: TwojNick
## Version: 0.1

MojPierwszyAddon.lua
```

**Co tu się dzieje?**
Linijki zaczynające się od `##` to tzw. metadane. Silnik Runes of Magic czyta je, aby wyświetlić informacje o Twoim addonie w menu gry. To jedyne miejsce, z którego gra pobiera te dane – zewnętrzne pliki `.txt` (które czasem widzisz w pobranych addonach) służą tylko dla graczy i portali typu CurseForge, gra ich nie widzi.
Ostatnia linijka (bez `##`) to instrukcja dla gry: *"Załaduj teraz plik MojPierwszyAddon.lua"*.

Skoro gra chce załadować plik `.lua`, musimy go stworzyć. Utwórz plik `MojPierwszyAddon.lua` i wpisz w nim jedną linijkę:

```lua
SendSystemChat("Witaj Świecie! Mój pierwszy addon działa!")
```

**Jak to działa?**
Funkcja `SendSystemChat()` to wbudowana funkcja API Runes of Magic (tzw. globalna funkcja). Jej zadaniem jest wysłanie żółtego tekstu na czat systemowy gracza – widzi go tylko osoba używająca addonu. 

Ponieważ kod ten nie jest zamknięty w żadnej funkcji, gra wykona go natychmiast, gdy tylko przeczyta plik podczas ekranu ładowania (Loading Screen). Zaloguj się do gry, a na swoim czacie powinieneś zobaczyć powitalną wiadomość!
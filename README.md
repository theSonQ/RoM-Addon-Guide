Tutaj powalczymy z poradnikiem :v
Przykladowy spis tresci:
# Spis Treści

## Pierwszy:

* **Rozdział 1: Środowisko i Architektura**
  Anatomia klienta RoM, silnik wzorowany na wczesnym WoW, przygotowanie edytora (`VS Code`) i włączenie pokazywania błędów Lua w grze.

* **Rozdział 2: Twój pierwszy Addon (Hello World)**
  Struktura plików gry, plik `.toc`, `.lua`, `.xml` oraz używanie komendy `/script ReloadUI()`.

* **Rozdział 3: Komunikacja na czacie i komendy (Slash Commands)**
  Wyświetlanie tekstu, rejestracja własnych komend przez `SlashCmdList`, parsowanie zmiennych.

* **Rozdział 4: System Zdarzeń (Event Handling)**
  Rejestracja (`RegisterEvent`), cykl życia, argumenty z eventów, pułapki związane z `OnUpdate`.

* **Rozdział 5: Inżynieria Wsteczna i praca bez dokumentacji**
  Analiza struktury `_G` (Global Environment), skrypty dumpujące pamięć gry.

* **Rozdział 6: Odczytywanie Świata i Walka (Data Mining)**
  `Unit API` (HP, klasa), `ActionBar API`, Tooltip Scraping (odczyt statystyk z przedmiotów) oraz modyfikacja `GameTooltip`. Limity w walce (Combat Lockdown) i ograniczenia makr.

* **Rozdział 7: Podstawy Budowy Interfejsu (XML & Lua)**
  `Frame`, `Button`, `FontString`, kotwiczenie (Anchoring), dziedziczenie szablonów (`virtual="true"`).

* **Rozdział 8: Zaawansowane UI i Integracje**
  Ramki przesuwalne/responsywne, slidery, `ScrollFrames`. Trygonometria przycisków Minimapy, integracja z `AddonManagerem` oraz rysowanie ikon na Mapie Świata (World Map Pins).

* **Rozdział 9: Bazy Danych i Architektura Zmiennych**
  Zapis plików na dysk (folder Dokumenty) przez `SavedVariables` i `SavedVariablesPerCharacter`, wgrywanie ustawień domyślnych (`defaults`).

* **Rozdział 10: Multimedia – Grafiki, Ikony i Dźwięki**
  Ekstrakcja plików `.fdb`, wirtualne ścieżki. Złote zasady tekstur (`TGA`/`DDS`, Power of Two). Odtwarzanie audio i budowanie ograniczników (throttle) zapobiegających spamowi dźwięków.

* **Rozdział 11: Zaawansowane Techniki Programistyczne**
  Hooking (bezpieczna modyfikacja UI), Timery (Yielding), wielojęzyczność (Lokalizacja) oraz komunikacja między addonami graczy (Addon-to-Addon comms).

* **Rozdział 12: Mistrzostwo API – Analiza bibliotek Pyrr'a**
  Hermetyzacja kodu (`local`), dynamiczne generowanie UI z Lua, budowa własnych frameworków na przykładach plików mistrza.

* **Rozdział 13: Debugowanie, Optymalizacja i Publikacja**
  Ochrona kodu (`pcall`), zarządzanie wyciekami pamięci (Garbage Collection), tworzenie paczki ZIP i publikacja (np. CurseForge).

---

## Aneksy (Generowane automatycznie z plików):

- **Aneks A:** Wielka lista odkrytych funkcji API.
- **Aneks B:** Słownik Eventów.
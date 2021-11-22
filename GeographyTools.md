Filen `GeographyTools.dll` är ett klassbibliotek (*class library*), vilket är ett vanligt sätt att använda tredjepartskod eller dela kod mellan olika projekt. Eftersom ni inte har tillgång till dess källkod så får ni istället utgå från följande dokumentation kring hur den fungerar:

- DLL-filen består av endast två klasser: `Coordinate` och `Geography`. Ni kan komma åt båda dessa genom att lägga till `using Geography;` längst upp i er egen kod.
- Klassen `Coordinate` består av endast tre instansvariabler:
    - `public double Latitude { get; set; }`
    - `public double Longitude { get; set; }`
    - `public double Altitude { get; set; }`
- Klassen `Geography` består av endast en metod: `public static double Distance(Coordinate coord1, Coordinate coord2)`
    - De två parametrarna är de två GPS-koordinater som ni vill mäta avståndet mellan. Klassen `Coordinate` här syftar alltså på samma `Coordinate`-klass som beskrivs ovan.
    - Returvärdet är antalet **meter** mellan de två koordinaterna.
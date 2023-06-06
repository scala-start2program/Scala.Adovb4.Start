# Voorbeeld 4
  
Deze keer gaan we menu's bijhouden.  
Het verschil zit hem nu in het feit dat we met 2 tabellen in de database gaan werken i.p.v. één.  
Deze keer hoef je zelf de database niet aan te maken, maar run je het script dat je in de submap assets kan terugvinden (<a href="assets/ScalaAdovb4Script.sql" download>ScalaAdovb4Script.sql</a>).  

  * Naam database : **ScalaAdovb4**    
  * Tabel **Soorten** :     
    * **Id** : nvarchar(50), primaire sleutel    
    * **Soortnaam** : nvarchar(50), vereist  
  * Tabel **Menus** :   
    * **Id** : nvarchar(50), primaire sleutel  
    * **Menunaam** nvarchar(100), vereist  
    * **Ingredienten** : nvarchar(MAX)  
    * **Bereidingswijze** : nvarchar(MAX)  
    * **Bereidingstijd** : int, vereist  
    * **SoortId** : nvarchar(50), vereist, foreign key dat verwijst naar **Soorten.Id**  
 
In de starterscode zit enkel een WPF project (XAML code + event handlers)  
Je maak dus zelf een class-library aan : **Scala.Adovb4.Core**  
Je voegt 2 mapjes toe aan deze class-library : **Entities** en **Services**  
Kopieer uit een voorgaand project of uit de cursus de klassen **Helper** en **DBServices** (en plaats die in de mapjes in het mapje Services) : pas in **Helper** de connectiestring aan.  
Installeer via Nuget Packages **System.Data.SqlClient**  
Voorzie in het mapje **Entities** 2 entiteitsklasse **Menu** en **Soort** die een weerspiegeling zijn van de 2 tabellen uit de database.
Voorzie in het mapje **Services** nog een klasse **MenuService** die :
     
  * De beschikbare soorten aanlevert  
  * De beschikbare menu's aanlevert, al dan niet gefilterd op soort.  
  * Een menu toevoegt  
  * Een menu wijzigt  
  * Een menu verwijdert  
  
Het WPF project ligt voor de hand : menu's afbeelden, toevoegen, wijzigen en verwijderen.   

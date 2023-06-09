USE tempdb;
GO
DECLARE @SQL nvarchar(1000);
IF EXISTS (SELECT 1 FROM sys.databases WHERE [name] = N'ScalaAdovb4')
BEGIN
    SET @SQL = N'USE [ScalaAdovb4];

                 ALTER DATABASE ScalaAdovb4 SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
                 USE [tempdb];
                 DROP DATABASE ScalaAdovb4;';
    EXEC (@SQL);
END;
GO
USE [master]
GO
CREATE DATABASE [ScalaAdovb4]
GO
USE [ScalaAdovb4]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menus](
	[Id] [nvarchar](50) NOT NULL,
	[Menunaam] [nvarchar](100) NOT NULL,
	[Ingredienten] [nvarchar](max) NULL,
	[Bereidingswijze] [nvarchar](max) NULL,
	[Bereidingstijd] [int] NOT NULL,
	[SoortId] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Menus] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Soorten](
	[Id] [nvarchar](50) NOT NULL,
	[Soortnaam] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Soorten] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Menus] ([Id], [Menunaam], [Ingredienten], [Bereidingswijze], [Bereidingstijd], [SoortId]) VALUES (N'1be8971a-e593-4b0f-b382-36a7e4d58661', N'Gevulde pistolets met eitjes, paddenstoelen en gerookte kip', N'pistolets 4
eieren (uitgeblazen) 4
champignons 200 g
gerookte kipfilet 100 g
bladpeterselie
olijfolie 1 el
peper en zout', N'1

Verwarm de oven voor op 180°C. Maak de champignons schoon en snij ze in kwartjes. Bak ze kort in de olijfolie en breng op smaak met peper en zout.

2

Snij de bovenkant uit de pistolets, schik er enkele sneetjes gerookte kip in, doe het ei erin en bak ze zo’n 10 à 15 minuten in de oven.

3

Haal de broodjes uit de oven en werk af met de gebakken champignons. Werk verder af met de bladpeterselie.', 30, N'm1')
INSERT [dbo].[Menus] ([Id], [Menunaam], [Ingredienten], [Bereidingswijze], [Bereidingstijd], [SoortId]) VALUES (N'3aa56ac2-cc9a-4af8-84a5-3f4a06a902e7', N'Steakreepjes met groenepeperdressing', N'biefstuk 400 g
    olijfolie 2 el

    Voor de dressing
    groene peper (korrels, uitgelekt) 2 el
    munt ½ bosje
    olijfolie 5 el
    zout', N'1

Maak de dressing. Hak de peperkorrels grof. Hak de munt fijn. Doe de peperkorrels en de munt in een kommetje. Meng er de olijfolie onder en kruid de dressing met zout.

2

Snij de steak in reepjes. Verhit de olijfolie in de pannetjes en bak de repen steak naar smaak. Overgiet ze met de dressing en serveer meteen.', 35, N'm3')
INSERT [dbo].[Menus] ([Id], [Menunaam], [Ingredienten], [Bereidingswijze], [Bereidingstijd], [SoortId]) VALUES (N'52696583-4987-4946-a8a2-a459b8fb2532', N'Oma''s chocolademousse', N'Oma''s chocolademousse', N'1
Klop de room met de vanillesuiker half op en zet even koel weg. Deze slagroom dient om de chocolademousse af te werken.

2
Maak de mousse. Splits de eieren. Klop de eidooiers met de suiker stevig op tot een ruban die als een lint van de garde loopt. Klop het eiwit stijf en zet even apart.

3
Smelt de chocolade au bain-marie. Meng de hete chocolade onder de ruban. Schep er voorzichtig 1/4 van het opgeklopte eiwit onder en roer om. Schep dan de rest van het eiwit eronder tot je een egale mousse krijgt.

4
Giet de chocolademousse in een grote mooie kom en laat minstens 1 uur opstijven in de koelkast.

5
Schep er net voor het serveren een stevige toef room op, schaaf er wat fondantchocolade over en bestuif met cacaopoeder.', 30, N'm4')
INSERT [dbo].[Menus] ([Id], [Menunaam], [Ingredienten], [Bereidingswijze], [Bereidingstijd], [SoortId]) VALUES (N'75aed727-af90-40a8-b8ce-1f10c8fd6eac', N'Hete bliksem ovenschotel', N'uien (gesnipperd) 2
gemengd gehakt 500 g
bloemige aardappel 500 g
melk scheutje
boter
suiker
nootmuskaat
peper
zout
appels 1 kg', N'1

Schil de aardappelen en kook ze gaar. Giet af, stamp fijn en maak de puree aan met een scheutje melk. Breng op smaak met peper, zout en nootmuskaat.

2

Fruit de ui glazig in 25 g boter. Voeg er het gehakt aan toe en bak gul. Kruid met flink wat peper en zout. Laat onder deksel 5 minuten verder garen.

3

Hou 2 appels apart voor het garnituur. Schil de rest van de appels, verwijder het klokhuis en snij ze in vrij grote stukken. Doe er 1 of 2 eetlepels water bij en stoof de appels onder deksel tot moes. Voeg er suiker naar smaak aan toe.

4

Verwarm de oven voor op 190° C.

5

Vet een ovenschaal in en schep er de appelmoes in. Schep daarop het gehakt en dek af met de puree. Snij de twee resterende appels met behulp van een mandoline in heel dunne plakjes. Leg ze dakpansgewijs op de puree. Verdeel nog 25 g boter in vlokjes over de schotel en bak 30 minuten in de voorverwarmde oven. Serveer goed heet!', 45, N'm3')
INSERT [dbo].[Menus] ([Id], [Menunaam], [Ingredienten], [Bereidingswijze], [Bereidingstijd], [SoortId]) VALUES (N'a1683a12-9f2b-4511-bd08-f33e31a2a234', N'Gerookte zalmtimbaal met avocado', N'gerookte zalm 250 g
gemengde sla 100 g
avocado 1
lente-uitjes 2
limoen 1
komkommer 1
dikke room150 ml
cayennepeper
roze peperbol 1 el
peper en zout', N'1

Pers een helft van de limoen uit. Spoel de sla en laat uitlekken in een vergiet. Snij de lente-ui, met het groen, in fijne ringen. Schil de komkommer en snij ¼ in kleine blokjes. Schil de avocado, verwijder de pit en snij in blokjes. Meng met de zure room, voeg naar smaak cayennepeper, limoensap en peper en zout toe. Meng met de komkommerblokjes en de lente-ui.

2

Bekleed 6 individuele muffinvormpjes met plasticfolie. Bedek elk vormpje met een flinterdun laagje gerookte zalm, laat de uiteinden iets overhangen.

3

Vul met de avocadomix en vouw de randen naar binnen toe. Laat minstens 1 uur opstijven in de koelkast.

4

Draai de zalmtimbaaltjes om op kleine borden. Werk af met een partje limoen, een handvol gemengde sla, roze peperbolletjes en een takje dille.', 120, N'm2')
INSERT [dbo].[Menus] ([Id], [Menunaam], [Ingredienten], [Bereidingswijze], [Bereidingstijd], [SoortId]) VALUES (N'd14afdd4-644f-4e71-a78f-ec6f4553e65d', N'Koekjestaart met crème au beurre', N'koekjes (petit-beurre) 72
hoeveboter 300 g
koffie (ongeveer een tas) 150 ml
cognac (of een andere sterke drank) scheutje
poedersuiker 250 g
eieren 2
oploskoffie (1,8 g/zakje) 2 zakjes
cacaopoeder (ongezoet) 1 el', N'1
Haal de boter uit de koelkast en laat ze zacht worden op kamertemperatuur. Bekleed een stevige snijplank met vershoudfolie, waarop je de taart kunt laten rusten. Zet een tas koffie en laat de koffie afkoelen in een ovenschaal. Giet er een scheutje sterke drank naar keuze bij.

2
Klop de poedersuiker en de eieren los in de mengkom van de keukenmachine. Snij de boter in blokjes en klop ze beetje bij beetje door het mengsel. Klop tot alles mooi gemengd is.

3
Los de oploskoffie op in 70 ml kokend water. Giet een scheutje straffe koffie bij het botermengsel. Het lijkt alsof de crème een beetje zal schiften, maar als je goed doorklopt, krijg je een gladde en gebonden boterroom. Schep de boterroom in een spuitzak met een klein spuitmondje en leg in de koelkast.

4
Start met de opbouw van de taartjes. Leg eerst een droog koekje op de snijplank als bodem. Spuit hierop wat boterroom. Dip een koekje in de afgekoelde koffie en leg op de boterroom. Herhaal nog 4 keer en werk het bovenste koekje af met enkele mooie toefjes boterroom. Herhaal voor de andere taartjes. Laat ze opstijven in de koelkast tot het moment van serveren.

5
Haal de taartjes net voor het opdienen uit de koelkast, bestuif met cacao en serveer meteen.', 60, N'm4')
INSERT [dbo].[Menus] ([Id], [Menunaam], [Ingredienten], [Bereidingswijze], [Bereidingstijd], [SoortId]) VALUES (N'ea6a277e-43d0-4e46-a9f6-de91b98e59b2', N'Zalmpannetje met venusschelpen', N'zalm (vers) 500 g
venusschelpen 20
venkelknol 1
sjalot 1
citroensap 3 el
verse dille
room 200 ml
visfond 400 ml
Pernod (of Ricard) 2 el
boter
peper en zout
champignons 120 g', N'1

Doe de venusschelpen in koud water en borstel ze schoon. Maak de venkel schoon en snij in kleine blokjes. Pel en snipper de sjalot. Borstel de champignons schoon en snij ze in 4, snij grote exemplaren in meer stukken. Beboter 4 individuele schaaltjes.

2

Breng de visfond aan de kook en draai het vuur lager. Snij de zalm in 4 porties en pocheer ze er gedurende 7 minuten in. Haal de vis eruit, hou warm en zet de fond even apart.

3

Fruit de sjalot en venkel in boter, kruid met peper en zout. Voeg er de champignons aan toe en bak nog even. Blus met citroensap en Pernod en laat de alcohol verdampen. Voeg er de visfond aan toe, breng aan de kook en laat tot de helft inkoken. Draai het vuur lager, voeg er de room aan toe en laat nog 5 minuutjes sudderen.

4

Stoom de venusschelpen in een bodempje water tot ze opengaan. Zeef het kookvocht door een neteldoek en doe het bij de saus.

5

Leg in elk schaaltje een portie zalm en overgiet met de saus. Schik er enkele venusschelpen op en werk af met een takje dille. Kruid met peper.', 60, N'm2')
GO
INSERT [dbo].[Soorten] ([Id], [Soortnaam]) VALUES (N'm1', N'Ontbijt')
INSERT [dbo].[Soorten] ([Id], [Soortnaam]) VALUES (N'm2', N'Voorgerecht')
INSERT [dbo].[Soorten] ([Id], [Soortnaam]) VALUES (N'm3', N'Hoofdgerecht')
INSERT [dbo].[Soorten] ([Id], [Soortnaam]) VALUES (N'm4', N'Dessert')
GO
USE [master]
GO
ALTER DATABASE [ScalaAdovb4] SET  READ_WRITE 
GO

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#

## Données de la table Game
 
 game_list = [
  [ "Rocket League", "07/07/2015", 19.99, "Football et voitures font bon ménage dans cette suite basée sur les lois de la physique du grand classique tant apprécié, Supersonic Acrobatic Rocket-Powered Battle-Cars !

Jeu d'action et de sport futuriste, Rocket League® met le joueur aux commandes de véhicules dotés de turbos permettant de foncer dans des ballons pour marquer d'incroyables buts ou de faire des arrêts d'anthologie dans des arènes variées et riches en détails. Grâce à un moteur physique avancé capable de simuler des mouvements réalistes, Rocket League® utilise masse et vitesse pour rendre les commandes intuitives dans cette refonte explosive du football traditionnel.", "Rocket League®", "14/03/2017", "Multijoueurs"],
 
 [ "Farming Simulator 19", "20/11/2018", 29.99, "Farming Simulator 19 se lance dans la plus grande évolution jamais entreprise par la franchise, avec entre autres le garage le plus complet jamais proposé. Utilisez et conduisez des véhicules et équipements authentiques, provenant des plus grands constructeurs tels que Case IH, New Holland, Challenger, Fendt, Massey Ferguson, Valtra, Krone, Deutz-Fahr et beaucoup d’autres, dont pour la première fois la prestigieuse marque américaine John Deere !

Farming Simulator proposera à son lancement deux nouveaux environnements Américain et Européen sur lequel vous développerez votre ferme et profiterez des nombreuses nouvelles activités proposées. Cultivez et moissonnez de nombreux types de grains et plantes dont pour la première fois le coton et l’avoine. Prenez soin de votre élevage – vaches, cochons, moutons, poules – et pour la première fois les chevaux, que vous chevaucherez pour explorer les vastes environnements de jeu. ", "Farming Simulator", "05/04/19", "Un joueur"],

[ "Rise of the Tomb Raider™", "09/02/2016", 49.99, "Rise of the Tomb Raider: 20 Year Celebration inclut le jeu de base ainsi que le Season Pass et ses contenus inédits. Explorez le manoir Croft dans la nouvelle séquence « Blood Ties » et défendez-le contre une invasion de zombies dans le niveau « Lara’s Nightmare ». Survivez à des conditions extrêmes en coopération dans le nouveau mode Co-Op Endurance en ligne, et mesurez-vous au niveau de difficulté supplémentaire « Survivant de l'extrême ». Le Season Pass inclut également une tenue et des armes inspirées de Tomb Raider III, ainsi que 5 skins rétro de Lara Croft. La DLC actuelle vous fera explorer de nouvelles ruines hantées par un ancien sortilège dans l’extension Baba Yaga: The Temple of the Witch, et vous mettra face à des hordes de prédateurs infectés dans l’extension Cold Darkness Awakened.

Caractéristiques :
- L'aventure de Lara - Lara découvre un mystère ancestral, l'entraînant dans une course contre la montre face à une organisation sans merci, les trinitaires. Sur la piste de la mythique cité perdue de Kitej, Lara sait qu'elle va devoir atteindre son but et mettre la main sur les secrets de Kitej avant les trinitaires. C'est ainsi que commence son voyage en direction de la Sibérie, marquant le début de sa première expédition en tant que « Tomb Raider ».
- Femme contre nature - Dans « Rise of the Tomb Raider », en plus d'être confrontée à des ennemis en chair et en os, Lara doit faire face à la nature impitoyable. Traquez des animaux pour fabriquer des armes et récoltez les ressources les plus rares dans un écosystème débordant de vie. Vous découvrirez des environnements hostiles d'une beauté à couper le souffle, au relief traître et aux conditions inhospitalières, poussant Lara à faire preuve d'une ingéniosité incomparable.
- L'art de la guérilla - Tirez parti de l'environnement, grimpez aux arbres et plongez sous l'eau pour éviter ou éliminer vos adversaires, personnalisez l'équipement de Lara, ses armes et ses munitions en fonction de votre style de jeu. Que vous soyez plutôt ombre furtive ou du genre à foncer toutes armes dehors, expert en explosifs prêt à semer le chaos, archer hors-pair, alpiniste de l'extrême, il y en a pour tous les goûts.
- Des tombes mortelles - Les tombes sont de retour, plus vastes et complexes que jamais. Dans « Rise of the Tomb Raider », vous aurez l'occasion d'explorer des lieux gigantesques emplis de mystères, de pièges mortels et de puzzles environnementaux impressionnants. Déchiffrez d'anciens textes pour révéler des cryptes ancestrales dans un monde regorgeant de secrets.", "Tomb Raider™", "05/12/17", "Un joueur"]

]

## Remplissage de la table Game

game_list.each do |name, date_release, price, description, license, last_update, players|
Game.create!(name: name, date_release: date_release, price: price, description: description, license: license, last_update: last_update, players: players)
end

puts 'Games OK'

##################################################################

## Données de la table Dev

dev_list = [["Giants Software","Farming Simulator 19"],
	["Psyonix, Inc.","Rocket League"],
	["Crystal Dynamics", "Rise of the Tomb Raider™"]
]

## Remplissage de la table Dev

dev_list.each do |name, game|
	dev = Dev.new(name: name)
	dev.game = Game.find_by_name(game)
	dev.save!
end

puts 'Developers OK'

##################################################################

## Données de la table Publisher

publi_list = [["Focus Home Interactive","Farming Simulator 19"],
	["Psyonix, Inc.","Rocket League"],
	["Square Enix", "Rise of the Tomb Raider™"]
]

## Remplissage de la table Dev

publi_list.each do |name, game|
	publi = Publisher.new(name: name)
	publi.game = Game.find_by_name(game)
	publi.save!
end

puts 'Publishers OK'


##################################################################

## Données de la table Video

video_list = [["[TUTO] FARMING SIMULATOR 19 | FAIRE DES VACHES","https://www.youtube.com/watch?v=9z1T5Zds_HU","https://i.ytimg.com/vi/9z1T5Zds_HU/hqdefault.jpg","Farming Simulator 19"],
	["[TUTO] FARMING SIMULATOR 19 | LES MAUVAISES HERBES","https://www.youtube.com/watch?v=gM3lobw8hfU","https://i.ytimg.com/vi/gM3lobw8hfU/hqdefault.jpg","Farming Simulator 19"],

	["Comment bien kickoff (engager) sur Rocket League ?","https://www.youtube.com/watch?v=Sx3yUQGU0Xc","https://i.ytimg.com/vi/Sx3yUQGU0Xc/hqdefault.jpg","Rocket League"],
	["DRIBBLE Tutoriel - Rocket League FR","https://www.youtube.com/watch?v=i8WUKyeRttQ","https://i.ytimg.com/vi/i8WUKyeRttQ/hqdefault.jpg","Rocket League"],

	["Tombeau - La grotte de glace - Le vaisseau de glace","https://www.youtube.com/watch?v=WpeJQPKRomw","https://i.ytimg.com/vi/WpeJQPKRomw/hqdefault.jpg", "Rise of the Tomb Raider™"],
	["Défi - L'Acropole - Coupez court","https://www.youtube.com/watch?v=GeISni7rw1Y","https://i.ytimg.com/vi/GeISni7rw1Y/hqdefault.jpg", "Rise of the Tomb Raider™"],
]

## Remplissage de la table Video

video_list.each do |title, url, preview, game|
	v = Video.new(title: title, url: url, preview: preview)
	v.game = Game.find_by_name(game)
	v.save!
end

puts 'Videos OK'

##################################################################

## Données de la table Trailer

trailer_list = [
	["https://steamcdn-a.akamaihd.net/steam/apps/256760363/movie480.webm",
	"https://steamcdn-a.akamaihd.net/steam/apps/252950/ss_d84ce663949107cdb2bf395afad1cfb1403bfd5b.600x338.jpg",
	"https://steamcdn-a.akamaihd.net/steam/apps/252950/ss_46683641bde3d4be2d5bf5a9f5ac23bab798225c.1920x1080.jpg",
	"https://steamcdn-a.akamaihd.net/steam/apps/252950/ss_b7e945ac18d86c48b279f26ff6884b5ded2aa1b7.600x338.jpg",
	"https://steamcdn-a.akamaihd.net/steam/apps/252950/ss_46683641bde3d4be2d5bf5a9f5ac23bab798225c.1920x1080.jpg",
	"Rocket League"],

	["https://steamcdn-a.akamaihd.net/steam/apps/256734899/movie480.webm",
	"https://steamcdn-a.akamaihd.net/steam/apps/787860/ss_fa32d926d8115d648588ffa8da2b5f61053b7b10.600x338.jpg",
	"https://steamcdn-a.akamaihd.net/steam/apps/787860/ss_81606c80db5fec103f5f88b24cc2e6832a1bc158.600x338.jpg",
	"https://steamcdn-a.akamaihd.net/steam/apps/787860/ss_76263e9a07621e454477c3ec715709fd06062c93.600x338.jpg",
	"https://steamcdn-a.akamaihd.net/steam/apps/787860/ss_acff97e497d75d34f4b13eacd32cbec6188f98a1.600x338.jpg",
	"Farming Simulator 19"],

	["https://steamcdn-a.akamaihd.net/steam/apps/256680256/movie480.webm",
	"https://steamcdn-a.akamaihd.net/steam/apps/391220/ss_749f99146e5ebad371e37d95bfab7b17847c1d81.600x338.jpg",
	"https://steamcdn-a.akamaihd.net/steam/apps/391220/ss_3b46aa127290e6ad2f62c125096bf5e901458ad6.600x338.jpg",
	"https://steamcdn-a.akamaihd.net/steam/apps/391220/ss_2b612bfa62d920b061e900e1f7a975a2de6729ec.1920x1080.jpg",
	"https://steamcdn-a.akamaihd.net/steam/apps/391220/ss_4ef0868ecfc6b19bc1af18b88cabe33fe8147cf7.600x338.jpg",
	"Rise of the Tomb Raider™"]]

## Remplissage de la table Trailer

trailer_list.each do |video, img1, img2, img3, img4, game|
	t = Trailer.new(video: video, img1: img1, img2: img2, img3: img3, img4: img4)
	t.game = Game.find_by_name(game)
	t.save!
end

puts 'Trailers OK'


##################################################################

## Données de la table Tag

tag_list = ["Indépendant","Action","Aventure","Stratégie","Simulation","RPG","Sport","Course","Casse-tête","Horreur","Humour","Narratif","Sci-Fi","Gestion","Plateforme","Jeu de tir","Survie","Réaliste","Rétro","Tour par tour","Bac à sable","Point&click","Educatif","Rythme","Combat"]

## Remplissage de la table Tag

tag_list.each do |name|
	Tag.create!(name: name)
end
puts 'Tags OK'


## Relier les données entre Game et Tag

#tags du premier jeu
GameTag.create!(game: Game.first, tag: Tag.find_by_name("Action"))
GameTag.create!(game: Game.first, tag: Tag.find_by_name("Sport"))
GameTag.create!(game: Game.first, tag: Tag.find_by_name("Course"))
GameTag.create!(game: Game.first, tag: Tag.find_by_name("Humour"))

#tags du second jeu
GameTag.create!(game: Game.find(2), tag: Tag.find_by_name("Gestion"))
GameTag.create!(game: Game.find(2), tag: Tag.find_by_name("Simulation"))
GameTag.create!(game: Game.find(2), tag: Tag.find_by_name("Réaliste"))

#tags du troisième jeu
GameTag.create!(game: Game.find(3), tag: Tag.find_by_name("Action"))
GameTag.create!(game: Game.find(3), tag: Tag.find_by_name("Aventure"))
GameTag.create!(game: Game.find(3), tag: Tag.find_by_name("Réaliste"))
GameTag.create!(game: Game.find(3), tag: Tag.find_by_name("Survie"))
GameTag.create!(game: Game.find(3), tag: Tag.find_by_name("Narratif"))

puts 'GameTags OK'

##################################################################

## Données de la table Pegi
 
 pegi_list = [
  ["PEGI 3", "https://pegi.info/sites/default/files/styles/medium/public/2017-03/2000px-PEGI_3.svg_.png"],
  ["PEGI 7", "https://pegi.info/sites/default/files/styles/medium/public/2017-03/pegi7.png"],
  ["PEGI 12", "https://pegi.info/sites/default/files/styles/medium/public/2017-03/PEGI_12.png"],
  ["PEGI 16", "https://pegi.info/sites/default/files/styles/medium/public/2017-03/pegi16.png"],
  ["PEGI 18", "https://pegi.info/sites/default/files/styles/medium/public/2017-03/pegi18.png"],
  ["Langage grossier", "https://pegi.info/sites/default/files/styles/medium/public/2017-03/bad-language.png"],
  ["Discrimination", "https://pegi.info/sites/default/files/styles/medium/public/2017-03/discrimination.png"],
  ["Drogues", "https://pegi.info/sites/default/files/styles/medium/public/2017-03/drugs.jpg"],
  ["Peur", "https://pegi.info/sites/default/files/styles/medium/public/2017-03/PEGI_Fear_annotated.svg_.png"],
  ["Jeux de hasard", "https://pegi.info/sites/default/files/styles/medium/public/2017-03/PEGI_Gambling_annotated.svg_.png"],
  ["Sexe", "https://pegi.info/sites/default/files/styles/medium/public/2017-03/sex.png"],
  ["Violence", "https://pegi.info/sites/default/files/styles/medium/public/2017-03/violence.png"],

]

## Remplissage de la table Pegi

pegi_list.each do |name, imgurl|
  Pegi.create!(name: name, imgurl: imgurl)
end

## Relier les données entre Game et Pegi

#pegis du premier jeu
GamePegi.create!(game: Game.first, pegi: Pegi.find_by_name("PEGI 3"))

#pegis du second jeu
GamePegi.create!(game: Game.find(2), pegi: Pegi.find_by_name("PEGI 3"))

#pegis du second jeu
GamePegi.create!(game: Game.find(3), pegi: Pegi.find_by_name("PEGI 18"))
GamePegi.create!(game: Game.find(3), pegi: Pegi.find_by_name("Violence"))
GamePegi.create!(game: Game.find(3), pegi: Pegi.find_by_name("Langage grossier"))

puts 'PEGIs OK'

##################################################################

## Données de la table Language

lang_list = ["Français","English","Deutsch","Español","Italiano","Nederlands","Português","Türk","日本の","中国","tiếng việt","русский"]

## Remplissage de la table Languages

 lang_list.each do |name|
 	Language.create!(name: name)
 end

puts 'Languages OK'

## Relier les données entre Game et Language

#Language du premier jeu

GameLanguage.create!(game: Game.first, language: Language.find_by_name("Français"), interface: true, audio: false, subtitle: false)
GameLanguage.create!(game: Game.first, language: Language.find_by_name("English"), interface: true, audio: false, subtitle: false)
GameLanguage.create!(game: Game.first, language: Language.find_by_name("Deutsch"), interface: true, audio: false, subtitle: false)
GameLanguage.create!(game: Game.first, language: Language.find_by_name("Español"), interface: true, audio: false, subtitle: false)
GameLanguage.create!(game: Game.first, language: Language.find_by_name("Italiano"), interface: true, audio: false, subtitle: false)
GameLanguage.create!(game: Game.first, language: Language.find_by_name("Português"), interface: true, audio: false, subtitle: false)
GameLanguage.create!(game: Game.first, language: Language.find_by_name("日本の"), interface: true, audio: false, subtitle: false)
GameLanguage.create!(game: Game.first, language: Language.find_by_name("русский"), interface: true, audio: false, subtitle: false)

#Language du second jeu
GameLanguage.create!(game: Game.find(2), language: Language.find_by_name("Français"), interface: true, audio: false, subtitle: false)
GameLanguage.create!(game: Game.find(2), language: Language.find_by_name("English"), interface: true, audio: false, subtitle: false)
GameLanguage.create!(game: Game.find(2), language: Language.find_by_name("Deutsch"), interface: true, audio: false, subtitle: false)
GameLanguage.create!(game: Game.find(2), language: Language.find_by_name("Español"), interface: true, audio: false, subtitle: false)
GameLanguage.create!(game: Game.find(2), language: Language.find_by_name("Türk"), interface: true, audio: false, subtitle: false)
GameLanguage.create!(game: Game.find(2), language: Language.find_by_name("Português"), interface: true, audio: false, subtitle: false)
GameLanguage.create!(game: Game.find(2), language: Language.find_by_name("tiếng việt"), interface: true, audio: false, subtitle: false)

#Language du troisième jeu
GameLanguage.create!(game: Game.find(3), language: Language.find_by_name("Français"), interface: true, audio: true, subtitle: true)
GameLanguage.create!(game: Game.find(3), language: Language.find_by_name("English"), interface: true, audio: true, subtitle: true)
GameLanguage.create!(game: Game.find(3), language: Language.find_by_name("Deutsch"), interface: true, audio: true, subtitle: true)
GameLanguage.create!(game: Game.find(3), language: Language.find_by_name("Español"), interface: true, audio: true, subtitle: true)
GameLanguage.create!(game: Game.find(3), language: Language.find_by_name("Nederlands"), interface: true, audio: false, subtitle: true)

puts 'GameLanguage OK'

##################################################################

## Données de la table DLC
 
dlc_list = [
  [ "The Fate of the Furious™ Ice Charger","Rocket League®", "04/04/2017", 1.99, "Now you can own Dom Toretto's Dodge® Ice Charger from Universal Pictures' explosive movie, The Fate of the Furious. This premium Battle-Car brings a set of exclusive Wheels and six unique Decals along for the ride!","Rocket League"],
 
 ["Platinum Expansion","Farming Simulator", "22/10/2019", 19.99, "Get a wealth of additional vehicles from new brand CLAAS to upgrade your Farming Simulator 19.

The official expansion of Farming Simulator 19 brings a host of fresh content to extend and enrich your game! 

For the first time in franchise history, discover CLAAS, one of the world’s leading farming brands, and its new vehicles allowing you to expand a wide range of activities such as forage harvesting and baling. 

Over 35 faithfully reproduced vehicles and tools from CLAAS join the already huge garage of Farming Simulator 19, including the new LEXION 8900 combine harvester and its unique technology, the JAGUAR 960 TT forage harvester for effective silage, and the powerful XERION 5000 tractor.","Farming Simulator 19"],

["Wilderness Survivor","Tomb Raider™", "10/02/2016", 2.99, "Inclut la tenue Belladone, qui augmente les chances de Lara de récupérer des ressources d'animaux exotiques sur des animaux communs, le piolet sanglant Chant de mort, ainsi qu'un pack de cartes dont deux obligatoirement rares et trois autres avec une chance accrue d'être rares.","Rise of the Tomb Raider™"]



]

## Remplissage de la table DLC

dlc_list.each do |name, license, date_release, price, description, game|
  d = Dlc.new(name: name, license: license, date_release: date_release, price: price, description: description)
  d.game = Game.find_by_name(game)
  d.save!
end
puts 'DLC OK'

################################################################## 

## Données de la table Mod
 
mod_list = [
  
["Endurance Mode","Tomb Raider™", "18/08/2016", "Lara doit récupérer et confectionner des objets et survivre aux éléments hostiles, le jour, et survivre aux menaces mortelles des hommes et des animaux, la nuit. Cette épreuve ultime de la femme contre la nature lui fera repousser ses limites et découvrir combien de temps elle peut survivre seule dans un environnement hostile. ","Rise of the Tomb Raider™"]

]

## Remplissage de la table Mod

mod_list.each do |name, license, date_release, description, game|
  m = Mod.new(name: name, license: license, date_release: date_release, description: description)
  m.game = Game.find_by_name(game)
  m.save!
end
puts 'Mods OK'

##################################################################      

## Données de la table Eval

eval_list = [
  [ "Mario", 4,"Ut enim quisque sibi plurimum confidit et ut quisque maxime virtute et sapientia sic munitus est, ut nullo egeat suaque omnia in se ipso posita iudicet, ita in amicitiis expetendis colendisque maxime excellit.","Rocket League"],
  [ "Luigi", 2,"Dumque ibi diu moratur commeatus opperiens, quorum translationem ex Aquitania verni imbres solito crebriores prohibebant auctique torrentes, Herculanus advenit protector domesticus, Hermogenis ex magistro equitum filius, apud Constantinopolim, ut supra rettulimus, populari quondam turbela discerpti. quo verissime referente quae Gallus egerat, damnis super praeteritis maerens et futurorum timore suspensus angorem animi quam diu potuit emendabat.","Rocket League"],

  [ "Wario", 3,"Post quorum necem nihilo lenius ferociens Gallus ut leo cadaveribus pastus multa huius modi scrutabatur. quae singula narrare non refert, me professione modum, quod evitandum est, excedamus.", "Farming Simulator 19"],

  [ "Peach", 5,"Cumque pertinacius ut legum gnarus accusatorem flagitaret atque sollemnia, doctus id Caesar libertatemque.","Rise of the Tomb Raider™"],
  [ "Daisy", 4,"Quare talis improborum consensio non modo excusatione amicitiae tegenda non est sed potius supplicio omni vindicanda est, ut ne quis concessum putet amicum vel bellum patriae inferentem sequi; quod quidem, ut res ire coepit, haud scio an aliquando futurum sit. Mihi autem non minori curae est, qualis res publica post mortem meam futura, quam qualis hodie sit.","Rise of the Tomb Raider™"],

]

## Remplissage de la table Eval

eval_list.each do |pseudo, rating, comment, game|
  e = Eval.new(pseudo: pseudo, rating: rating, comment: comment)
  e.game = Game.find_by_name(game)
  e.save!
end
puts 'Evals OK'

################################################################## 
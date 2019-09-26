# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#

##################################################################

## Données de la table Game
 
 game_list = [
  [ "Rocket League", "07/07/2015", 19.99, "Football et voitures font bon ménage dans cette suite basée sur les lois de la physique du grand classique tant apprécié, Supersonic Acrobatic Rocket-Powered Battle-Cars !

Jeu d'action et de sport futuriste, Rocket League® met le joueur aux commandes de véhicules dotés de turbos permettant de foncer dans des ballons pour marquer d'incroyables buts ou de faire des arrêts d'anthologie dans des arènes variées et riches en détails. Grâce à un moteur physique avancé capable de simuler des mouvements réalistes, Rocket League® utilise masse et vitesse pour rendre les commandes intuitives dans cette refonte explosive du football traditionnel.", "Rocket League®", "14/03/2017", "Multijoueurs" ],
 
 [ "Farming Simulator 19", "20/11/2018", 29.99, "Farming Simulator 19 se lance dans la plus grande évolution jamais entreprise par la franchise, avec entre autres le garage le plus complet jamais proposé. Utilisez et conduisez des véhicules et équipements authentiques, provenant des plus grands constructeurs tels que Case IH, New Holland, Challenger, Fendt, Massey Ferguson, Valtra, Krone, Deutz-Fahr et beaucoup d’autres, dont pour la première fois la prestigieuse marque américaine John Deere !

Farming Simulator proposera à son lancement deux nouveaux environnements Américain et Européen sur lequel vous développerez votre ferme et profiterez des nombreuses nouvelles activités proposées. Cultivez et moissonnez de nombreux types de grains et plantes dont pour la première fois le coton et l’avoine. Prenez soin de votre élevage – vaches, cochons, moutons, poules – et pour la première fois les chevaux, que vous chevaucherez pour explorer les vastes environnements de jeu. ", "Farming Simulator", "", "Un joueur" ],
]

## Remplissage de la table Game

game_list.each do |name, date_release, price, description, license, last_update, players|
  Game.create!( name: name, date_release: date_release, price: price, description: description, license: license, last_update: last_update, players: players )
end
puts 'Games OK'

##################################################################

## Données de la table Tag

tag_list = ["Indépendant","Action","Aventure","Stratégie","Simulation","RPG","Sport","Course","Casse-tête","Horreur","Humour","Narratif","Sci-Fi","Gestion","Plateforme","Jeu de tir","Survie","Réaliste","Rétro","Tour par tour","Bac à sable","Point&click","Educatif","Rythme","Combat"]

## Remplissage de la table Tag

tag_list.each do |name|
	Tag.create!(name: name)
end
puts 'Tags OK'


## Relier les données entre Game et Tag

# gt = GameTag.new()
# gt.game = Game.first
# gt.tag = Tag.find_by_name("Action")
# gt.save!

#tags du premier jeu
GameTag.create!(game: Game.first, tag: Tag.find_by_name("Action"))
GameTag.create!(game: Game.first, tag: Tag.find_by_name("Sport"))
GameTag.create!(game: Game.first, tag: Tag.find_by_name("Course"))
GameTag.create!(game: Game.first, tag: Tag.find_by_name("Humour"))

#tags du second jeu
GameTag.create!(game: Game.find(2), tag: Tag.find_by_name("Gestion"))
GameTag.create!(game: Game.find(2), tag: Tag.find_by_name("Simulation"))
GameTag.create!(game: Game.find(2), tag: Tag.find_by_name("Réaliste"))

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
GamePegi.create!(game: Game.find(2), pegi: Pegi.find_by_name("Violence"))
GamePegi.create!(game: Game.find(2), pegi: Pegi.find_by_name("Sexe"))

puts 'PEGIs OK'

##################################################################

## Données de la table Language

# lang_list = ["Français","English","Deutsch","Español","Italiano","Nederlands","Português","Türk","日本の","中国","tiếng việt","русский"]

# ## Remplissage de la table Languages

# lang_list.each do |name|
# 	Language.create!(name: name)
# end
# puts 'Languages OK'


# ## Relier les données entre Game et Language

# #Language du premier jeu
# GameLanguage.create!(game: Game.first, tag: Tag.find_by_name("Action"))
# GameLanguage.create!(game: Game.first, tag: Tag.find_by_name("Sport"))
# GameLanguage.create!(game: Game.first, tag: Tag.find_by_name("Course"))
# GameLanguage.create!(game: Game.first, tag: Tag.find_by_name("Humour"))

# #Language du second jeu
# GameLanguage.create!(game: Game.find(2), tag: Tag.find_by_name("Gestion"))
# GameLanguage.create!(game: Game.find(2), tag: Tag.find_by_name("Simulation"))
# GameLanguage.create!(game: Game.find(2), tag: Tag.find_by_name("Réaliste"))

# puts 'GameLanguage OK'

##################################################################

      # t.string :name
      # t.string :license
      # t.date :date_release
      # t.float :price
      # t.text :description
      # t.references :game, foreign_key: true

## Données de la table DLC
 
dlc_list = [
  [ "The Fate of the Furious™ Ice Charger","Rocket League®", "04/04/2017", 1.99, "Now you can own Dom Toretto's Dodge® Ice Charger from Universal Pictures' explosive movie, The Fate of the Furious. This premium Battle-Car brings a set of exclusive Wheels and six unique Decals along for the ride!","Rocket League"],
 
 ["Platinum Expansion","Farming Simulator", "22/10/2019", 19.99, "Get a wealth of additional vehicles from new brand CLAAS to upgrade your Farming Simulator 19.

The official expansion of Farming Simulator 19 brings a host of fresh content to extend and enrich your game! 

For the first time in franchise history, discover CLAAS, one of the world’s leading farming brands, and its new vehicles allowing you to expand a wide range of activities such as forage harvesting and baling. 

Over 35 faithfully reproduced vehicles and tools from CLAAS join the already huge garage of Farming Simulator 19, including the new LEXION 8900 combine harvester and its unique technology, the JAGUAR 960 TT forage harvester for effective silage, and the powerful XERION 5000 tractor.","Farming Simulator 19"],
]

## Remplissage de la table Game

dlc_list.each do |name, license, date_release, price, description, game|
  d = Dlc.new(name: name, license: license, date_release: date_release, price: price, description: description)
  d.game = Game.find_by_name(game)
  d.save!
end
puts 'DLC OK'

##################################################################      
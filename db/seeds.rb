# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#


## Données de la table Game
 
 game_list = [
  [ "Rocket League", "07/07/2015", 19.99, "Football et voitures font bon ménage dans cette suite basée sur les lois de la physique du grand classique tant apprécié, Supersonic Acrobatic Rocket-Powered Battle-Cars !

Jeu d'action et de sport futuriste, Rocket League® met le joueur aux commandes de véhicules dotés de turbos permettant de foncer dans des ballons pour marquer d'incroyables buts ou de faire des arrêts d'anthologie dans des arènes variées et riches en détails. Grâce à un moteur physique avancé capable de simuler des mouvements réalistes, Rocket League® utilise masse et vitesse pour rendre les commandes intuitives dans cette refonte explosive du football traditionnel.", "Rocket League®", "14/03/2017", "Multijoueurs" ],
 
 [ "Farming Simulator 19", "20/11/2018", 29.99, "Farming Simulator 19 se lance dans la plus grande évolution jamais entreprise par la franchise, avec entre autres le garage le plus complet jamais proposé. Utilisez et conduisez des véhicules et équipements authentiques, provenant des plus grands constructeurs tels que Case IH, New Holland, Challenger, Fendt, Massey Ferguson, Valtra, Krone, Deutz-Fahr et beaucoup d’autres, dont pour la première fois la prestigieuse marque américaine John Deere !

Farming Simulator proposera à son lancement deux nouveaux environnements Américain et Européen sur lequel vous développerez votre ferme et profiterez des nombreuses nouvelles activités proposées. Cultivez et moissonnez de nombreux types de grains et plantes dont pour la première fois le coton et l’avoine. Prenez soin de votre élevage – vaches, cochons, moutons, poules – et pour la première fois les chevaux, que vous chevaucherez pour explorer les vastes environnements de jeu. ", "Farming Simulator", "", "Un joueur" ],
]

## Remplissage de la table Game

game_list.each do |name, date_release, price, description, license, last_update, players|
  Game.create( name: name, date_release: date_release, price: price, description: description, license: license, last_update: last_update, players: players )
end
puts 'Games OK'

## Données de la table Tag

tag_list = ["Indépendant","Action","Aventure","Stratégie","Simulation","RPG","Sport","Course","Casse-tête","Horreur","Humour","Narratif","Sci-Fi","Gestion","Plateforme","Jeu de tir","Survie","Rétro","Tour par tour","Bac à sable","Point&click","Educatif","Rythme","Combat"]

## Remplissage de la table Tag

tag_list.each do |name|
	Tag.create(name: name)
end
puts 'Tags OK'

## Données de la table Developers

developer_list = ["Psyonix, Inc.","Giants Software","Valve"]

## Remplissage de la table Developers

# developer_list.each do |name|
# 	Developer.create(name: name)
# end
# puts 'Developers OK'


## Relier les données entre Game et Tag

# gt = GameTag.new()
# gt.game = Game.first
# gt.tag = Tag.find_by_name("Action")
# #gt.tag = Tag.find_by_name("Action","Sport","Course")
# gt.save!

GameTag.create!(game: Game.first, tag: Tag.find_by_name("Action"))
GameTag.create!(game: Game.first, tag: Tag.find_by_name("Sport"))
GameTag.create!(game: Game.first, tag: Tag.find_by_name("Course"))
GameTag.create!(game: Game.first, tag: Tag.find_by_name("Humour"))
puts 'GameTag OK'



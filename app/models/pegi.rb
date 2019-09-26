class Pegi < ApplicationRecord
	has_many :game_pegis
	has_many :games, through: :game_pegi
end

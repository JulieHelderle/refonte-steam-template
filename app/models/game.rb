class Game < ApplicationRecord
	has_many :game_tags
	has_many :tags, through: :game_tag

	has_many :game_pegis
	has_many :pegis, through: :game_pegi

end

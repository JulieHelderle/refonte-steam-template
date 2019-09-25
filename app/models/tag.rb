class Tag < ApplicationRecord
	has_many :game_tags
	has_many :games, through: :game_tag
end

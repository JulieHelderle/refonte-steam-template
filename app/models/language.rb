class Language < ApplicationRecord
	has_many :game_languages
	has_many :games, through: :game_languages
end

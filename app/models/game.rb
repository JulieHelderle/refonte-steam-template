class Game < ApplicationRecord
	has_many :game_tags
	has_many :tags, through: :game_tag

	has_many :game_pegis
	has_many :pegis, through: :game_pegi

	has_many :game_languages
	has_many :languages, through: :game_languages

	has_many :dlcs
	has_many :mods
	has_many :evals
	has_many :videos
	has_many :trailers

	has_one :dev
	has_one :publisher


end

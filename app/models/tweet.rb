class Tweet < ApplicationRecord
	belongs_to :user #define association

	has_many :tweet_tags
	has_many :tags, through: :tweet_tags

	  validates :message, presence: true
  validates :message, length: {maximum: 140, 
too_long: "A tweet is only 140 max. Everybody knows that!"} #making sure that tweet param are set
end

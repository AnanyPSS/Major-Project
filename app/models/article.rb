class Article < ApplicationRecord
	belongs_to :user
	has_many :comments, dependent: :destroy

	validates :title, :article, presence: true

	extend FriendlyId
  		friendly_id :title, use: [:slugged, :finders]

  	def should_generate_new_friendly_id?
    	title_changed?
  	end  

	is_impressionable
	acts_as_votable
end

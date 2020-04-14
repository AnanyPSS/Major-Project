class Article < ApplicationRecord
	belongs_to :user
	has_many :comments, dependent: :destroy

	validates :title, :article, presence: true

	is_impressionable
	acts_as_votable
end

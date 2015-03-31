class Post < ActiveRecord::Base

presence = /[0-9]+/

	validates :lat, presence: true
	validates :long, presence: true

	validates :content, presence: true
	validates :content, length: {minimum: 5}
	validates :content, length: {maximum: 150}, presence: true

end

class Article < ApplicationRecord
	validates :title, presence: true, length: {minimum: 5}
	before_validation :test_callback

	after_initialize do 
		puts "Hello, init"
	end

	after_find do
		puts "Hello, find"
	end

	private
		def test_callback
			self.title = title.downcase
		end
end

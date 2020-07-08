class Company < ApplicationRecord
end

class Product < ApplicationRecord
	validates :name, presence: true
	before_validation :test_callback

	private
		def test_callback
			self.name = name.downqcase
end

class Category < ApplicationRecord
	# would be neat if you tried a many-to-many here so books could be in many
    # categories
	has_many :books
	validates :name, presence: true,
            length: {minimum: 3}
end

class Client < ApplicationRecord
    has_many :pets

    def total_pets
        pets.count
    end
end

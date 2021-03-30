class Newsletter < ApplicationRecord
	has_one :header, dependent: :destroy
	has_many :textlinks, dependent: :destroy

	def self.search(search)
        if search 
            where(["adv_name LIKE ?","%#{search}%"])
        else
            all
        end
    end 
end

class Newsletter < ApplicationRecord
	has_one :header, dependent: :destroy
	has_many :textlinks, dependent: :destroy
end

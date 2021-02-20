class Newsletter < ApplicationRecord
	has_one :header, dependent: :destroy
end

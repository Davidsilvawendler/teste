class Cliente < ApplicationRecord
  belongs_to :user
  enum status: [:active, :inactive]
  has_one :address
end

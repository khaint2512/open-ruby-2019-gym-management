class Staff < ApplicationRecord
  belongs_to :users
  belongs_to :users_contracts
end

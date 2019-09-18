class UsersContract < ApplicationRecord
  belongs_to :users
  has_many :staffs
end

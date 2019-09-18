class User < ApplicationRecord
  has_many :staffs
  has_many :users_contracts
  has_many :health_processes
end

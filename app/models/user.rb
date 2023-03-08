class User < ApplicationRecord
  validates_presence_of :name, :email, :api_key
  validates :email, uniqueness: true
  validates :api_key, uniqueness: true
end
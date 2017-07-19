class User < ApplicationRecord
  has_many :plays

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end

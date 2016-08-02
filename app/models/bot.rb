class Bot < ApplicationRecord
  has_many :fb_users , dependent: :destroy
  validates :name, presence: true
end

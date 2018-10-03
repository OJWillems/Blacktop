class User < ApplicationRecord

  has_many :teams

  validates :name_1, presence: true
  validates :smack_talk_1, presence: true
  validates :name_2, presence: true
  validates :smack_talk_2, presence: true

end

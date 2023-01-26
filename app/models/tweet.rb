class Tweet < ApplicationRecord
  belongs_to :user

  validates :tweet, presence: true
  validates :user_id, presence: true
end

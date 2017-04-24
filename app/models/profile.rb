class Profile < ApplicationRecord
  belongs_to :user
  has_many :conversations, :foreign_key => :sender_id
end

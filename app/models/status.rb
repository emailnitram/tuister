class Status < ActiveRecord::Base
  attr_accessible :body, :user_id
  
  belongs_to :user
  validates :body, presence: :true, length: { maximum: 140 }
end

class Status < ActiveRecord::Base
  attr_accessible :body, :name
  validates :name, presence: :true
  validates :body, presence: :true, length: { maximum: 140 }
end

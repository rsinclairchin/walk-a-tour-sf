class Tour < ActiveRecord::Base
  has_many :highlights
  belongs_to :user
end

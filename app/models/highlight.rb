class Highlight < ActiveRecord::Base
  belongs_to :user, :tour
end

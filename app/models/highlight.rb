class Highlight < ActiveRecord::Base

  extend ::Geocoder::Model::ActiveRecord

  # attr_accessible :address, :latitude, :longitude

  belongs_to :user
  belongs_to :tour

  geocoded_by :address
  after_validation :geocode


end

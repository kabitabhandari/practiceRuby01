module Placeholder
  extend ActiveSupport::Concern

  def self.image_generator(height:, width:) #can also do only height and width
    "http://placehold.it/#{height}x#{width}"
     end




end

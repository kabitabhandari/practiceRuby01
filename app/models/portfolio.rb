class Portfolio < ApplicationRecord
  has_many :technologies
accepts_nested_attributes_for :technologies,
                               reject_if: lambda {|attrs| attrs['name'].blank?}


  validates_presence_of :title, :body, :main_image, :thumb_image
  def self.ang # sql query first way
    where(subtitle:"Angular")
  end

  scope :ruby_rails, -> {where(subtitle: 'Ruby on rails')} # sql query second way


 after_initialize :set_default_values_portfolio # first way to create default values is like i did in enum status default 0.
 #This is second way of creating default valuesvalues are set aft initialization ie aft new action in portfolio_controller.
#setting default values for images
 def set_default_values_portfolio
   self.main_image ||= "http://placehold.it/600x400"   # self.=> is similar to 'this' keyword. referencing this specific portfolio.
   #if main_image is nil put my default value else put users inputted image value
   self.thumb_image||= "http://placehold.it/350x200" #setting default values for images
 end



end

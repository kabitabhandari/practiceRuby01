class Skill < ApplicationRecord
  includes Placeholder
  validates_presence_of :title, :percent_utilize

  after_initialize :set_default_values_skill # first way to create default values is like i did in enum status default 0.
  #This is second way of creating default valuesvalues are set aft initialization ie aft new action in skill_controller.
 #setting default values for images
  def set_default_values_skill
    self.badge ||= Placeholder.image_generator(height: 250, width: 250)   # self.=> is similar to 'this' keyword. referencing this specific skill.
    #if main_image is nil put my default value else put users inputted image value
     #setting default values for images
  end




end

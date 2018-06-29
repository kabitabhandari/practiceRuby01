class AddBadgeToSkills < ActiveRecord::Migration[5.2]
  def change
    add_column :skills, :badge, :text #badge is for image so its data type is text
  end
end

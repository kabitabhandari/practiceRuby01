class AddSlugToBlogs < ActiveRecord::Migration[5.2]
  def change
    add_column :blogs, :slug, :string #adding column slug on blog
    add_index :blogs, :slug, unique: true # to make slug unique i need to add index and unique
  end
end

class AddLyrictitleToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :lyrictitle, :string
  end
end

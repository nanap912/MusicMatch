class AddMovietitleToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :movietitle, :string
  end
end

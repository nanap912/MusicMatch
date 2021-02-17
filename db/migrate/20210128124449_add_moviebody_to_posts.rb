class AddMoviebodyToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :moviebody, :text
  end
end

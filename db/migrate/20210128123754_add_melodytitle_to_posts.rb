class AddMelodytitleToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :melodytitle, :string
  end
end

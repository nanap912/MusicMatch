class AddSongtitleToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :songtitle, :string
  end
end

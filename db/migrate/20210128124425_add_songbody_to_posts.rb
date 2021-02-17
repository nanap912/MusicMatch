class AddSongbodyToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :songbody, :text
  end
end

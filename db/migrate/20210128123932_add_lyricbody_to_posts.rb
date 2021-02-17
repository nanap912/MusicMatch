class AddLyricbodyToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :lyricbody, :text
  end
end

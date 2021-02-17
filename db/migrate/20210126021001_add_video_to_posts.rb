class AddVideoToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :video, :string
  end
end

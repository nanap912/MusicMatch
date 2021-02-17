class AddMatchuserToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :matchuser, :string
  end
end

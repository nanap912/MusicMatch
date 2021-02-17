class AddAudioToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :audio, :string
  end
end

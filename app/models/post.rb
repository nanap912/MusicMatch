class Post < ApplicationRecord
    belongs_to :user

    has_many :likes, dependent: :destroy
    has_many :liked_users, through: :likes, source: :user
    mount_uploader :video, VideoUploader
    mount_uploader :audio, AudioUploader

    
end

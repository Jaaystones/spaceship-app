class Post < ApplicationRecord
  include PublicActivity::Model
 tracked only: [:create], owner: Proc.new { |_, model| model.user }


  belongs_to :user
  #acts_as_commentable
  acts_as_votable

  mount_uploader :attachment, AvatarUploader
  #has_many :comments, as: :commentable
  has_many :likes, dependent: :destroy
  has_many :comments, dependent: :destroy
end

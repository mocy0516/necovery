class User < ApplicationRecord
  has_secure_password
  mount_uploader :image_name, PicUploader

  validates:name,{presence:true}
  validates:email,{presence:true,uniqueness:true}

  def posts
    return Post.where(user_id: self.id)
  end

  has_many :posts, :dependent => :destroy
  has_many :likes, :dependent => :destroy

end

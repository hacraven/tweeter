class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

   has_many :tweets #define association
   
   mount_uploader :avatar, AvatarUploader #carrierwave

 
       validates :username, presence: true, uniqueness: true #email    

       serialize :following, Array #tricking add followers migration into an array   
end


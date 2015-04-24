class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :registerable, :timeoutable and :omniauthable
  has_many :posts
  devise :database_authenticatable, 
         :recoverable, :rememberable, :trackable, :validatable
end

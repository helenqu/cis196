class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  # attr_accessor :name, :email, :password, :posts

  # has_many :posts, :dependent => :destroy
  has_many :comments, :dependent => :destroy
  attr_accessor :encrypted_password

end

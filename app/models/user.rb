class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

<<<<<<< HEAD
	validates :name, uniqueness: true

has_many :posts, :dependent => :destroy
has_many :comments, :dependent => :destroy
attr_accessor :encrypted_password
=======
	validates :posts, length: {minimum: 5}
	validates :posts, length: {maximum: 150}, presence: true
>>>>>>> 06db2904bcca9c8a3857be579054a2f5ba3409a2

end

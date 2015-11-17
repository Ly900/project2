class User < ActiveRecord::Base
  has_many :students, dependent: :destroy
  has_many :logs, through: :students, dependent: :destroy 
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable
end

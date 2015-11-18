class Student < ActiveRecord::Base
  belongs_to :user, dependent: :destroy
  has_many :logs, dependent: :destroy
end

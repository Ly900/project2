class Student < ActiveRecord::Base
  has_many :logs, dependent: :destroy
end

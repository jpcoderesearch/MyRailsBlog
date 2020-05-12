class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :pictures, :as => :imageable
  has_many :resumes
  has_many :skills
  has_many :addresses
  has_many :languages
  has_many :educational_qualifications
  has_many :experiences
  has_many :projects
  has_many :companies
end

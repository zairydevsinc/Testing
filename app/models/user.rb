class User < ApplicationRecord

  has_many :projects, foreign_key: :creator_id, dependent: :destroy
  has_many :bugs , through: :projects

  has_many :assisgnments
  has_many :project_assigned , through: :assisgnments ,source: :project

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end

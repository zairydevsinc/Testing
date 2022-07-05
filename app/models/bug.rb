class Bug < ApplicationRecord
  belongs_to :project
  belongs_to :reported_by, class_name: :User
  belongs_to :assigned_to, class_name: :User, optional: true
  has_one_attached :image
end

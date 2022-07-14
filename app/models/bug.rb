class Bug < ApplicationRecord
  belongs_to :project
  belongs_to :reported_by, class_name: :User
  belongs_to :assigned_to, class_name: :User, optional: true
  has_one_attached :image

  validates :title, :status, :bugtype, presence: true
  validates :title, uniqueness: true
  validate :correct_image_type


  def correct_image_type
    validate_mime_type %w[image/png image/gif]
  end
end

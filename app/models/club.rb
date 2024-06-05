class Club < ApplicationRecord
  belongs_to :admin, class_name: "User"
  has_many :memberships, dependent: :destroy
  has_many :members, through: :memberships, source: :user
end

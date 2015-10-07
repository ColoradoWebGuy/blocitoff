class Checklist < ActiveRecord::Base
  belongs_to :user

  validates :user, presence: true
  validates :title, length: { minimum: 2 }, presence: true
end

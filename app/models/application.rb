class Application < ApplicationRecord
  has_many :coordinators_projects
  has_many :schedule_items
  has_many :project_members
  belongs_to :requesting_organization
  validates :name, presence: true
  validates :coordinator, presence: true
end

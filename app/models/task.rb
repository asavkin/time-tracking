class Task < ActiveRecord::Base

  validates :taskname, presence: true, length: { minimum: 5 }
  validates :user, presence: true
  validates :project, presence: true
  belongs_to :user
  belongs_to :project

  def task_info
    "#{project.name} #{taskname} #{description}"
  end
end
class Task < ApplicationRecord
  has_many :user_tasks
  has_many :users, through: :user_tasks

  enum status: {todo: 0, in_progress: 1, done: 2}
end
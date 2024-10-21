class Task < ApplicationRecord
  belongs_to :user, dependent: :destroy, optional: true

  enum status: {todo: 0, in_progress: 1, done: 2}
end
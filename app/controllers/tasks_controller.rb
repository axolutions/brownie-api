class TasksController < ApplicationController
  def index
    tasks = Task.includes(:users).all

    render json: tasks.map { |task| 
      {
        id: task.id,
        title: task.title,
        coins: task.coins,
        user: task.users.first
      }
    }
  end
end
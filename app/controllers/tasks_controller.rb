class TasksController < ApplicationController
  def index
    tasks = Task.includes(:users).all

    render json: tasks.map { |task| 
      {
        id: task.id,
        title: task.title,
        coins: task.coins,
        user: task.users.first,
        status: task.status
      }
    }
  end


  def update
    task = Task.find(params[:id])

    if task.update!(task_params)
      render json: task
    else
      render status 422, json: {errors: task.errors}
    end
  end

  private

  def task_params
    params.permit(:status)
  end
end
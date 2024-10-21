class TasksController < ApplicationController
  def index
    tasks = Task.all

    render json: tasks
  end

  def create
    if task.save
      render json: task
    else
      render json: { errors: task.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def show
    render json: task
  end

  def update
    service = UpdateTaskService.new(task, task_params)

    if service.call
      render json: service.task
    else
      render json: { errors: service.task.errors.full_messages }, status: :unprocessable_entity
    end
  rescue UpdateTaskStatusService::UpdateTaskStatusError => e
    render json: { errors: e.message }, status: :unprocessable_entity
  end

  def destroy
    if task.delete
      render head: :no_content
    else
      render json: { errors: task.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private

  def task
    Task.find(params[:id])
  end

  def task_params
    params.permit(Task.creatable_fields)
  end
end
class UserTasksController < ApplicationController
  before_action :authenticate_user!

  def create
    @tarea = Tarea.find(params[:tarea_id])

    # @user_task = UserTask.find_or_create_by(user: current_user, tarea: @tarea)

    @user_task = UserTask.find_by(user: current_user, tarea: @tarea)

    if @user_task == nil
      @user_task = UserTask.create(user: current_user, tarea: @tarea)
    end

    if @user_task.completada == true
      @user_task.completada = false
    else
      @user_task.completada = true
    end


    if @user_task.save
      redirect_to root_path, notice: 'Tarea completada'
    else
      redirect_to root_path, alert: 'La tarea no se completó'
    end
  end

  def index
    @user_task = current_user.user_tasks
  end
end

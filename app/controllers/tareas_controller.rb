class TareasController < ApplicationController
  def index
    @tareas = Tarea.all
    @todo = UserTask.where(user: current_user)
  end

  def show
    # @tareadetalle = Tarea.find_by name: :tarea_id
    @idedelatarea = params[:tarea]
    @usertask = UserTask.where(tarea: :tarea_id)
    @usuariostarea = User.where(id: @usertask)
    # @usrcompletada = User.where(user: @usertask.user_id)
    # @tareascompletadas = UserTask.where(user: current_user).count
    # @tareastotales = Tarea.all.count
  end

end

class TareasController < ApplicationController
  def index
    @tareas = Tarea.all
    @todo = UserTask.where(user: current_user)
  end

  def show
    # @tareadetalle = Tarea.find_by name: :tarea_id
    @usertask = UserTask.where(tarea: :tarea_id)
    @id_usuario = @usertask.user_id
    # @usrcompletada = User.where(user: @usertask.user_id)
  end

end

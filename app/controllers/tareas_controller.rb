class TareasController < ApplicationController
  def index
    @tareas = Tarea.all
    @todo = UserTask.where(user: current_user)
  end

  def show
    # @tareadetalle = Tarea.find_by name: :tarea_id
    @usertask = UserTask.where(tarea: :tarea_id)
    @usuariostarea = User.where(id: @usertask.select("user_id"))
    # @usrcompletada = User.where(user: @usertask.user_id)
  end

end

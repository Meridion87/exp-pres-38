class TareasController < ApplicationController
  def index
    @tareas = Tarea.all
    @todo = UserTask.where(user: current_user)
  end
end

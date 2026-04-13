class TodosController < ApplicationController
  before_action :authenticate_user!
  def index
    @todos = current_user.todos
  end

  def destroy
    todo = current_user.todos.find(params[:id])

    if todo.destroy
      redirect_to todos_path, notice: "削除しました"
    else
      redirect_to todos_path, notice: "削除に失敗しました"
    end
  end
end

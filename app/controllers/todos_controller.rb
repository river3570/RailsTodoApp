class TodosController < ApplicationController
  before_action :authenticate_user!
  def index
    @todos = current_user.todos
  end

  def new
    @todo = current_user.todos.build
  end

  def edit
    @todo = current_user.todos.find(params[:id])
  end

  def create
    @todo = current_user.todos.build(todo_params)

    if @todo.save
      redirect_to todos_path, notice: "作成しました"
    else
      render :new, status: :unprocessable_content
    end
  end

  def update
    @todo = current_user.todos.find(params[:id])
    if @todo.update(todo_params)
      redirect_to todos_path, notice: "更新しました"
    else
      render "edit", status: :unprocessable_content
    end
  end

  def destroy
    todo = current_user.todos.find(params[:id])

    if todo.destroy
      redirect_to todos_path, notice: "削除しました"
    else
      redirect_to todos_path, notice: "削除に失敗しました"
    end
  end

  private

  def todo_params
    params.require(:todo).permit(:title, :context, :completed)
  end
end

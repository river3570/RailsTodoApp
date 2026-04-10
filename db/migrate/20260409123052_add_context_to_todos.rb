class AddContextToTodos < ActiveRecord::Migration[8.1]
  def change
    add_column :todos, :context, :string, null: false
  end
end

class TodosController < ApplicationController  
    def index    
        render "index" 
    end

    def show
        id = params[:id]
        todo = Todo.find(id)
        render plain: todo.to_pleasant_string
    end

    def create
        todo_text = params[:todo_text]
        due_date = DateTime.parse(params[:due_date])
        new_todo = Todo.create!(
            todo_text: todo_text,
            due_date: due_date,
            completed: false
        )
        redirect_to todos_path
    end
end
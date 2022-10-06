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
        text = param[:todo_text]
        date = DateTime.parse(params[:due_date])
        new_todo = Todo.create!(
            todo_text: todo_text,
            due_date: due_date,
            completed: false
        )
        response_text = "Your new todo is created #{new_todo.id}"
        render plain: response_text
    end
end
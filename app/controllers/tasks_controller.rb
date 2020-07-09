class TasksController < ApplicationController

  before_action :find_task, only: [:show, :edit, :update, :destroy]

  def index
    @tasks = Task.all
  end

  def show; end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    # Quando creo il @task non possiedo già l'ID che lo identifica dentro params.
    # L'ID gli verrà assegnato dopo il @task.save
    # @task = Task.new(title: params[:task][:title], details: params[:task][:details], completed: params[:task][:completed])
    # raise ----- Scrivendo RAISE visualizziamo il params:
    # {"title"=>"Nuovo Task", "details"=>"Devi creare un nuovo task", "completed"=>"0"}
    @task.save
    # .new & .save oppure solo Task.create
    redirect_to task_path(@task)
    # visualizza la pagina della nuova istanza (del nuovo task) creata
    # che sarebbe SHOW.HTML
  end

  def edit; end

  def update
    @task.update(task_params)
    redirect_to task_path(@task)
  end

  def destroy
    @task.destroy
    redirect_to tasks_path
  end

  private

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end

  def find_task
    @task = Task.find(params[:id])
  end


end

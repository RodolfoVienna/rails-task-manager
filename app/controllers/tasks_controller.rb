class TasksController < ApplicationController
  def index
    @tasks = Task.all # Task e' una CLASSE - @task e' l'istanza
  end

  def show
    @task = Task.find(params[:id]) # Task e' una CLASSE - @task e' l'istanza
    # [#<Task id: 1, title: "Laundry", details: "Do not mix colors!", completed: nil,
    # created_at: "2020-04-01 12:02:19", updated_at: "2020-04-01 12:02:19">,
    # #<Task id: 2, title: "Studying", details: "A lot of flashcards to do",
    # completed: true, created_at: "2020-04-01 12:02:31", updated_at: "2020-04-01 12:02:31">]
    # Cerco dentro la classe TASK passando l'ID. Quale ID?
    # L'ID contenuto dentro params
  end

  def new
    @task = Task.new
    # Crea un'istanza vuota e con il FORM la potro' popolare e salvare nel database
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
    redirect_to task_path(@task.id)
    # visualizza la pagina della nuova istanza (del nuovo task) creata
    # che sarebbe SHOW.HTML
  end

  def destroy
    @task = Task.find(params[:id])
    @task.delete
    redirect_to tasks_path
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.update(task_params)
    redirect_to task_path(@task.id)
  end

  private

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end
end

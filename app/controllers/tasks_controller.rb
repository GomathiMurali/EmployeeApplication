class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]

  # GET /tasks
  # GET /tasks.json
  def index
    @tasks = Task.search(params[:search])
  end

  # GET /tasks/1
  # GET /tasks/1.json
  def show
  end

  # GET /tasks/new
  def new
    @task = Task.new
    @projects = Project.all
    @employees = Employee.all
  end

  # GET /tasks/1/edit
  def edit
    @projects = Project.all
    @employees = Employee.all
  end

  # POST /tasks
  # POST /tasks.json
  def create
    @projects = Project.all
    @employees = Employee.all
    @task = Task.new(task_params)
    if @task.save
       return redirect_to  new_task_path, success: 'Task was successfully created.'
    end
  end

  # PATCH/PUT /tasks/1
  # PATCH/PUT /tasks/1.json
  def update
    @projects = Project.all
    @employees = Employee.all
    if @task.update(task_params)
     return redirect_to  edit_task_path, success: 'Task was successfully updated.'
  end
end
  # DELETE /tasks/1
  # DELETE /tasks/1.json
  def destroy
    @task.destroy
    respond_to do |format|
      format.html { redirect_to tasks_url, notice: 'Task was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_task
      @task = Task.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def task_params
      params.require(:task).permit(:project_name, :task_name, :description, :estimate_hours, :employee_name)
    end
end

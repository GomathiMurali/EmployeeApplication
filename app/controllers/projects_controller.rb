class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy]

  # GET /projects
  # GET /projects.json
  def index
      @projects = Project.search(params[:search])
  end

  # GET /projects/1
  # GET /projects/1.json
  def show
  end

  # GET /projects/new
  def new
    @project = Project.new
  end

  # GET /projects/1/edit
  def edit

  end

  # POST /projects
  # POST /projects.json
  def create
    @project = Project.new(project_params)
      if @project.save
         return redirect_to  new_project_path, success: 'Project was successfully created.'
    end
  end

  # PATCH/PUT /projects/1
  # PATCH/PUT /projects/1.json
  def update
        if @project.update(project_params)
         return redirect_to  edit_project_path, success: 'Project was successfully updated.'
    end
  end

  # DELETE /projects/1
  # DELETE /projects/1.json
  def destroy
    @project.destroy
    respond_to do |format|
      format.html { redirect_to projects_url, notice: 'Project was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project
      @project = Project.find(params[:id])
    end


    # Only allow a list of trusted parameters through.
    def project_params
      params.require(:project).permit(:project_name, :client, :location, :team_size, :start_date, :end_date, :cost, :search)
    end
end

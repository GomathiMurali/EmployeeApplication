class EmployeesController < ApplicationController
  before_action :set_employee, only: [:show, :edit, :update, :destroy]

  # GET /employees
  # GET /employees.json
  def index
    @employees = Employee.search(params[:search])
    end
  # GET /employees/1
  # GET /employees/1.json
  def show
  end

  # GET /employees/new
  def new
    @employee = Employee.new
    @projects = Project.all
  end

  # GET /employees/1/edit
  def edit
    @projects = Project.all
  end

  # POST /employees
  # POST /employees.json
  def create
    @employee = Employee.new(employee_params)
    @projects = Project.all
    if @employee.save
       return redirect_to  new_employee_path, success: 'Employee was successfully created.'
    end
  end

  # PATCH/PUT /employees/1
  # PATCH/PUT /employees/1.json
  def update
    @projects = Project.all
    if @employee.update(employee_params)
     return redirect_to  edit_employee_path, success: 'Employee was successfully updated.'
  end
end
  # DELETE /employees/1
  # DELETE /employees/1.json
  def destroy
    @employee.destroy
    respond_to do |format|

      format.html { redirect_to employees_url, notice: 'Employee was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_employee
      @employee = Employee.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def employee_params
      params.require(:employee).permit(:employee_name, :email_id, :age, :gender, :desgination,:project_name, :search)
    end
end

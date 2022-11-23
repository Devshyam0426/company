  class EmployeesController < ApplicationController
    def index
         @employees = Employee.all
    end

    def show 
      @employee = Employee.find(params[:id])
    end

    
    def new
         @employee = Employee.new
    end

    def create
      @employee = Employee.new(employee_params)

      if @employee.save
        redirect_to employees_path
      else
        render :new, status: :unprocessable_entity
      end
    end

    def edit
          @employee = Employee.find(params[:id])
    end

    def update
      @employee = Employee.find(params[:id])
      if @employee.update(employee_params)
        redirect_to employees_path
      else
        render :edit, status: :unprocessable_entity
      end
    end 
    def dev
      
    end

    def destroy
      @employee = Employee.find(params[:id])
      @product.destroy

      redirect_to employees_path, status: :see_other
    end
    private
      def employee_params
        params.require(:employee).permit(:name, :email, :mobile, :address)
      end
  end



class EmployeesController < ApplicationController
  def new 
    @employee = Employee.new
  end

  def create 
    @employee = Employee.new
    @employee.name = params[:name]
    @employee.title = params[:title]
    @employee.company_id = params[:company_id]
    if @employee.save
      redirect_to companies_url
    else
      render new
    end

  end

  
end

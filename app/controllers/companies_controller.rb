class CompaniesController < ApplicationController
    
    def index 
        @companies = Company.all
    end
    def new
        @company = Company.new
    end

    def show 
        @company = Company.find(
        params[:id]
        )
    end

    def create
        @company = Company.new()
        @company.name = params[:company][:building_id]
        @office = Office.new
        @office.building_id = params[:company][:building_id]
        @office.company_id = params[:company][:company_id]
        @office.floor = params[:company][:floor]
    end

    def destroy
        @employee = Employee.find(params[:id])
        if @employee.destroy
          redirect_to companies_url
        else
          render companies_path(@employee)
        end
    end

    private

    def company_params
        params.require(:company).permit(:name)
    end
end
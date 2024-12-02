class CompaniesController < ApplicationController
  def index
    @companies = Company.select { |company| company.user_id == current_user.id } unless !user_signed_in?
  end

  def new
    @company = Company.new
  end

  def create
    @company = Company.new(company_params.merge(:user_id => current_user.id))

    if @company.save
      redirect_to @company
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
    def company_params
      params.expect(company: [ :name, :document ])
    end
end

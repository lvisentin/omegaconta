class TaxesController < ApplicationController
  def index
    @taxes = Tax.all
  end

  def show
    @tax = Tax.find(params[:id])
  end

  def new
    @tax = Tax.new
  end

  def create
    @tax = Tax.new(tax_params)

    if @tax.save
      redirect_to @tax
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @tax = Tax.find(params[:id])
  end

  def update
    @tax = Tax.find(params[:id])

    if @tax.update(tax_params)
      redirect_to @tax
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @tax = Tax.find(params[:id])
    @tax.destroy

    redirect_to root_path, status: :see_other
  end


  private
    def tax_params
      params.expect(tax: [ :amount, :description, :tax_type, :company_id, :due_date, :file, :paid ])
    end
end

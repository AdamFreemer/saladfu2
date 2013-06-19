class SaladsController < ApplicationController
  def index
    @salads = Salad.all
  end

  def new
    @salad = Salad.new
  end

  def create
    salad_params = params.require(:salad).permit(:salad_name, :description, :lettuce_type)
    @salad = Salad.new(salad_params)
    if @salad.save
      redirect_to @salad
    else
      render 'new'
    end
  end

  def show
    @salad = Salad.find(params[:id])
  end

  def search
    query = params[:q]
    @salads = Salad.search_for query
  end

  def edit
    @salad = Salad.find(params[:id])
  end

  def show


  end

  def update

    @salad = Salad.find(params[:id])

    if @salad.update(params[:salad].permit(:salad_name, :description, :lettuce_type))
      redirect_to @salad
    else
      render 'edit'
    end

  end

end
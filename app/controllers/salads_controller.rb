class SaladsController < ApplicationController

  before_filter :authenticate_user! #, :except => [:show, :index]

  def index
    @salads = Salad.all
  end

  def new
    @salad = Salad.new
  end

  def create
    salad_params = params.require(:salad).permit(:salad_name, :description, :lettuce_type, :user_id, :user_name, :image)
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



  def update

    @salad = Salad.find(params[:id])

    if @salad.update(params[:salad].permit(:salad_name, :description, :lettuce_type, :user_id, :user_name, :image))
      redirect_to @salad
    else
      render 'edit'
    end

  end

end
class BeersController < ApplicationController
  def index
    @beers = Beer.all
  end

  def new
    @beer = Beer.new
  end

  def show
    @beer = Beer.find(params[:id])
  end

  def create
    @beer = Beer.new(beer_params)
    @beer.save
    redirect_to beers_path
  end

  def edit #shows page
    @beer = Beer.find(params[:id])
  end

  def update
    @beer = Beer.find(params[:id])
    @beer.update(beer_params)
    redirect_to beers_path
  end

  def destroy
    @beer = Beer.find(params[:id])
    @beer.delete
    redirect_to beers_path
  end

private

def beer_params
  params.require(:beer).permit(:name, :flavor)
end


end

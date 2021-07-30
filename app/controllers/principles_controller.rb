class PrinciplesController < ApplicationController
  def index
    @principles = Principle.all
  end

  def show
    @principle = Principle.find(params[:id])
  end

  def new
    @principle = Principle.new
  end

  def create
    @principle = Principle.new(principle_params)

    if @principle.save
      redirect_to @principle
  
    else
      render :new
    end
  
  end

  def edit
    @principle = Principle.find(params[:id])
  end

  def update
    @principle = Principle.find(params[:id])

    if @principle.update(principle_params)
      redirect_to @principle
    else
      render :edit
    end
  end

  def destroy
    @principle = Principle.find(params[:id])
    @principle.destroy

    redirect_to root_path
  end

  private
    def principle_params
      params.require(:principle).permit(:name, :age, :gender, :address)
    end

end

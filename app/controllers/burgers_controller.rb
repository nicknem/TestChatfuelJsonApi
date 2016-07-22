class BurgersController < ApplicationController
  def index
    @burgers = Burger.all
  end

  def show
    set_burger
  end

  def new
  end

  def create
    @burger = Burger.new(params[:burger])
    @burger.save

    redirect_to burger_path(@burger)
  end

  def edit
    set_burger
  end

  def update
    set_burger
    @burger.update(params[:burger])

    redirect_to burger_path(@burger)
  end

  def destroy
    set_burger
    @burger.destroy

    redirect_to burgers_path
  end

  private

  def set_burger
    @burger = Burger.find(params[:id])
  end

  def burger_params
    # *Strong params*: You need to *whitelist* what can be updated by the user
    # Never trust user data!
    params.require(:burger).permit(:name, :price)
  end
end

class BurgersController < ApplicationController
  before_action :set_burger, only: [ :show, :edit, :update, :destroy]

  def index
    @burgers = Burger.all
  end

  def show
  end

  def new
    @burger = Burger.new
  end

  def create
    @burger = Burger.new(burger_params)
    @burger.save
    redirect_to burger_path(@burger)
  end

  def create_via_json
    puts params
    # params[:name], params[:price]
    burger = Burger.new(burger_params)
    if burger.save
      head 200, content_type: "text/html"
    else
      head 500, content_type: "text/html"
    end
  end

  def edit
  end

  def update
    @burger.update(params[:burger])
    redirect_to burger_path(@burger)
  end

  def destroy
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

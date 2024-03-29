class BotsController < ApplicationController
  before_action :set_bot, only: [:show, :destroy]
  def index
    @bots = Bot.all
  end

  def show
  end

  def new
    @bot = Bot.new
  end

  def create
    @bot = Bot.new(bot_params)
    if @bot.save
      redirect_to bot_path(@bot)
    else
      render "new"
    end
  end

  def destroy
    @bot.destroy
    redirect_to bots_path
  end

  private

  def set_bot
    @bot = Bot.find(params[:id])
  end

  def bot_params
    # *Strong params*: You need to *whitelist* what can be updated by the user
    # Never trust user data!
    params.require(:bot).permit(:name)
  end
end

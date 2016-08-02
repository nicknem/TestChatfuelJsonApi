class TrackersController < ApplicationController
  before_action :set_tracker, only: [:show, :destroy]
  def index
    @trackers = Tracker.all
  end

  def show
  end

  def new
    @tracker = Tracker.new
  end

  def create
    @tracker = Tracker.new(tracker_params)
    if @tracker.save
      redirect_to tracker_path(@tracker)
    else
      render "new"
    end
  end

  def create_via_json
    puts params
    tracker = Tracker.new(tracker_params)
    if tracker.save
      head 200, content_type: "text/html"
    else
      head 500, content_type: "text/html"
    end
  end

  def destroy
    @tracker.destroy
    redirect_to trackers_path
  end

  private

  def set_tracker
    @tracker = Tracker.find(params[:id])
  end

  def tracker_params
    # *Strong params*: You need to *whitelist* what can be updated by the user
    # Never trust user data!
    params.require(:tracker).permit(:fb_first_name, :fb_last_name, :fb_gender, :fb_locale, :botstage, :botname)
  end
end

class PollsController < ApplicationController
  before_action :signed_in_user

  def index
    if admin_user
      @polls = Poll.all
    else
      @polls = current_user.polls
    end
  end

  def show
  end

  def new
  end

  def edit
  end

  def create
  end

  def update
  end

  def destroy
  end

  private

  def current_user
    @current_user ||= session[:user_id] && User.find(session[:user_id])
  end

  def admin_user
    redirect_to(root_url) unless current_user.admin?
  end
end

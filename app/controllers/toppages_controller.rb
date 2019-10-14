class ToppagesController < ApplicationController
  def index
    if logged_in?
      @task = current_user.mtasks.build  # form_with 用
      @mtasks = current_user.tasks.order(id: :desc).page(params[:page])
    end
  end
end



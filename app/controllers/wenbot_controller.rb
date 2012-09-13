require 'rest_client'
class WenbotController < ApplicationController
  before_filter :set_imp_path
  def set_imp_path
      @imp_path = "https://api.electricimp.com/v1/65361dfe24ee4067/30cfe76dc261805a"
  end

  before_filter :authenticate
  protected
  def authenticate
    authenticate_or_request_with_http_basic do |username, password|
      username == "1" && password == "1"
    end
  end

  def home
    respond_to do |format|
      format.html  # home.html.erb
    end
  end

  def stop
    RestClient.post @imp_path, {:value => 0}
    render :nothing => true
  end

  def forward
    RestClient.post @imp_path, {:value => 1}
    render :nothing => true
  end

  def backward
    RestClient.post @imp_path, {:value => 2}
    render :nothing => true
  end

  def left
    RestClient.post @imp_path, {:value => 3}
    render :nothing => true
  end

  def right
    RestClient.post @imp_path, {:value => 4}
    render :nothing => true
  end

end

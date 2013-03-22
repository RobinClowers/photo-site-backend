class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :set_allow_origin

  def set_allow_origin
    response.headers['Access-Control-Allow-Origin'] = '*'
  end
end

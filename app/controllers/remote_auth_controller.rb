class RemoteAuthController < ApplicationController
  def index
    render partial: 'auth'
  end
end

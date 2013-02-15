class HomeController < ApplicationController
  def index
    render inline: "Photo Site Backend"
  end
end

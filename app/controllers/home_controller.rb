class HomeController < ApplicationController
  def index
    @clubs = Current.user.clubs
  end
end

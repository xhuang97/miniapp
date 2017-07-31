class HomeController < ApplicationController

  def home
    @courses = Course.all
  end

end

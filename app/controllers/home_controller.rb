class HomeController < ApplicationController
  
  def index
    bring_in_homeposts
  end
  
  def bring_in_homeposts
    @homepost = Homepost.last
  end
  
end

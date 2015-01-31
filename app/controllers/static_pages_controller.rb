class StaticPagesController < ApplicationController
  def home
    render :file => 'public/frontpage/app/index.html'
  end

  def help
  end
  
  def about
  end
end

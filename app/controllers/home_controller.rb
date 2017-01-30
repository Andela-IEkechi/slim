class HomeController < ApplicationController
  layout "about_api", only: :about_api


  def show
    @posts = Post.order(created_at: :desc)
  end

  def generate_news
  end

  def about_api
  end

end

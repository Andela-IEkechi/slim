module V1
  class NewsController < ApplicationController
    def index
      @news = News.all
      render json: @news, each_serializer: NewsSerializer
    end

    def show
      @news = News.find(params[:id])
      render json: @news, serializer: NewsSerializer
    end
  end
end

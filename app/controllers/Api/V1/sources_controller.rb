module V1
  class SourcesController < ApplicationController

    def index
      @sources = Source.all
      render json: @sources, each_serializer: SourcesSerializer
    end

    def show
      @source = Source.find(params[:id])
      render json: @source, serializer: SourceSerializer
    end
  end
end

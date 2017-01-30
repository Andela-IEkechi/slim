module V1
  class NewsSerializer < ActiveModel::Serializer
    attributes :title, :summary, :published, :source, :id
  end
end
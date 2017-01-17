class News < ActiveRecord::Base
  validates :title, :agency, :summary, :link, :author, :published, presence: true
  validates :title, uniqueness: { scope: :agency }
end

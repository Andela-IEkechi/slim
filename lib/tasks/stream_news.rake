require 'rake'

namespace :news do
  desc "Pull new news pieces into database"
  task :stream => :environment do
    NewsService.new().stream
  end
end

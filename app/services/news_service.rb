class NewsService

  def initialize
    @sources = ["http://www.nta.ng/feed","http://www.vanguardngr.com/feed/", "http://punchng.com/feed/", "http://guardian.ng/feed/", "http://www.premiumtimesng.com/feed", "http://saharareporters.com/feeds/latest/feed"]
  end

  def stream
    @sources.each do |src|
      src_entries = Feedjira::Feed.fetch_and_parse(src).entries
      src_entries.each do |entry|
        (add_to_stash(entry, src) rescue nil)
      end
    end
  end

  def add_to_stash entry, src
    News.create!(author: entry.author, agency:  URI.parse(URI.encode(src)).host,
                 tags: (entry.categories.join(",") rescue nil), published: entry.published,
                 title: entry.title, summary: entry.summary, link: entry.url)
  end
end
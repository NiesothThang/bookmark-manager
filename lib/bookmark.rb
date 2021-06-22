
require 'pg'


class Bookmarks
  def self.all
    connection = PG.connect(dbname: 'bookmark_manager')
    connection.exec("SELECT * FROM bookmarks;")
    result = connection.exec('SELECT * FROM bookmarks')
    result.map { |bookmark| bookmark['url'] }
  end
end

# [
    # 'http://www.google.com',
    # 'http://www.youtube.com',
    # 'http://www.facebook.com'
    #   ]


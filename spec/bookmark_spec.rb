require "bookmark"

# describe Bookmark do
describe ".all" do
  it "returns all bookmarks" do
    connection = PG.connect(dbname: "bookmark_manager_test")
    connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.google.com');")
    connection.exec("INSERT INTO bookmarks (url) VALUES ('https://www.codecademy.com');")
    connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.destroyallsoftware.com');")

    bookmarks = Bookmarks.all

    expect(bookmarks).to include("http://www.google.com")
    expect(bookmarks).to include("https://www.codecademy.com")
    expect(bookmarks).to include("http://www.destroyallsoftware.com")
  end
end

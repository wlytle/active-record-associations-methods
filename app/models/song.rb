class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    self.genre.name
  end

  def drake_made_this
    drake = Artist.find_by_name("Drake")
    drake ? self.artist = drake : self.artist = Artist.create(name: "Drake")
  end
end

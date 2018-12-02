class Room

  attr_reader :name, :songs, :guests

  def initialize(name, songs)
    @name = name
    @songs = songs
    @guests = []
  end

  def number_of_songs
    return @songs.length()
  end

  def add_song(song)
    @songs.push(song)
  end

  def add_many_songs(songs)
    songs.each{|song| add_song(song)} #why songs?
  end

  def number_of_guests
    return @guests.length()
  end

  def check_in_guest(guest)
    @guests.push(guest)
  end

  def check_in_many_guests(guests)
    guests.each {|guest| check_in_guest(guest)}
  end

  def check_out_guests
    @guests = []
  end


end

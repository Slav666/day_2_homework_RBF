require('minitest/autorun')
require('minitest/rg')
require_relative('../song.rb')

class SongTest < Minitest::Test

  def setup
    @song = Song.new("The_Beatels", "Yesterday")
  end

  def test_song_artist
    assert_equal("The_Beatels", @song.artist())
  end

  def test_song_title
    assert_equal("Yesterday", @song.title())
  end

end

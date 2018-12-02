require('minitest/autorun')
require('minitest/rg')
require_relative('../room.rb')
require_relative('../song.rb')
require_relative('../guest.rb')

class RoomTest < Minitest::Test

  def setup
    @song1 = Song.new("Guns N' Roses", "November Rain")
    @song2 = Song.new("Guns N' Roses", "Paradise City﻿")
    @song3 = Song.new("The Beatels", "Yesterday")
    @song4 = Song.new("James Blunt", "You're beautiful")
    @song5 = Song.new("Michael Jackson", "Bad")
    @song6 = Song.new("Gotye", "Somebody I used to know")
    @list_of_songs2 = [@song5, @song6]
    @list_of_songs1 = [@song1, @song2, @song3]
    @room = Room.new("Room1", @list_of_songs1)
    @guest1 = Guest.new("Bob")
    @guest2 = Guest.new("John")
    @guest3 = Guest.new("Amelia")
    @guests = [@guest1, @guest2]
  end

  def test_room_name
    assert_equal("Room1", @room.name())
  end

  def test_room_songs
    assert_equal(3, @room.number_of_songs())
  end

  def test_add_song
    @room.add_song(@song4)
    assert_equal(4, @room.number_of_songs())#4
  end

  def test_add_many_songs
    @room.add_many_songs(@list_of_songs2)
    assert_equal(5, @room.number_of_songs())#5
  end

  def test_check_in_guests
    @room.check_in_guest(@guest1)
    assert_equal(1, @room.number_of_guests())
  end

  def test_check_in_many_guests
    @room.check_in_many_guests(@guests)
    assert_equal(2, @room.number_of_guests())
  end

  def test_check_out
    @room.check_in_many_guests(@guests)
    @room.check_out_guests()
    assert_equal(0, @room.number_of_guests())
  end

end

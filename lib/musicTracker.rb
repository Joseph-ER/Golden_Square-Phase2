class MusicTracker
  def initialize
    @song_list = []
  end

  def add_song(song)
    @song_list.push(song)
  end


  def show_listening
    if @song_list.length > 0
      return @song_list.join(", ")
    else
      fail "No songs in 'song_listening'"
    end
  end

end
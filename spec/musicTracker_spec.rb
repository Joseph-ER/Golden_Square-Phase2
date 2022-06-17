=begin
## 1. Describe the Problem

As a user
So that I can keep track of my music listening
I want to add tracks I've listened to and see a list of them.


## 2. Design the Class Interface

class MusicTracker
  def init- songlist: array

def add_song(song)
  song: string

def show_listening
  return songs array individually

## 3. Create Examples as Tests

_Make a list of examples of how the class will behave in different situations._

test song can be added to array in add_song method
check multiple songs can be added to the array in add_song method

check song can be returned by show_song method

## 4. Implement the Behaviour

=end

require 'musicTracker'

describe "MusicTracker" do

  context "show_listening method" do
    it "returns error if song_list is empty" do
       tracker = MusicTracker.new
        expect{ tracker.show_listening}.to raise_error "No songs in 'song_listening'"
     end
  end

  context "add_song method" do
    it "sucesful add  song to the _song_list array" do
      tracker = MusicTracker.new
      tracker.add_song("Dublin city sky")
      expect(tracker.show_listening).to eq "Dublin city sky"
    end

    it "adds 2 songs to the array" do
      tracker = MusicTracker.new
      tracker.add_song("Dublin city sky")
      tracker.add_song("Whirling in rags")
      expect(tracker.show_listening).to eq "Dublin city sky, Whirling in rags"
    end
  end
# my testing is a little lack luster at the moment, I can't hink of how to sensibly test whether the "song"
# gets added without aso testing the 'show_listening' method. I'll just finish how I have been working so far.


end
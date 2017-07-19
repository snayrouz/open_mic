require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/joke'

class JokeTest < Minitest::Test

  def test_it_exist
    j = Joke.new({id: "", question:"", answer:""})
    assert_instance_of Joke, j.(1, "Why did the strawberry cross the road?", "Why did the strawberry cross the road?")
  end

end

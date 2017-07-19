require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/joke'

class JokeTest < Minitest::Test

  def test_it_exist
    j = Joke.new(joke = {id:,question:"",answer:""})
    
    assert_instance_of Joke, j
  end

end

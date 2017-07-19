require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/user'
require './lib/joke'

class UserTest < Minitest::Test
  def test_it_exists
    sal = User.new("Sal")

    assert_instance_of User, sal
  end

  def test_it_has_a_name
    sal = User.new("Sal")

    assert_equal "Sal", sal.name
  end

  def test_it_can_have_another_name
    ali = User.new("Ali")

    assert_equal "Ali", ali.name
  end

  def test_user_has_no_jokes_to_start
    sal = User.new("Sal")

    assert_equal [], sal.jokes
  end

  def test_user_can_add_joke_to_arsenal
    sal = User.new("Sal")
    joke = Joke.new
    sal.learn(joke)
    sal.jokes

    assert_equal joke, sal.jokes
  end

  def test_user_can_tell_jokes
    skip
    sal = User.new("Sal")
    ali = User.new("Ali")
    joke = Joke.new(joke = {id:nil, question:nil, answer:nil})


    assert_equal Joke, sal.tell(ali, joke)
  end

end

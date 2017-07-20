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

  def test_user_can_learn_jokes
    sam = User.new("Sam")
    joke = Joke.new(({id: 1, question: "Why did the strawberry cross the road?", answer: "Because his mother was in a jam."}))

    sam.learn(joke)

    assert_equal [jokes], sam.jokes
  end

  def test_user_can_tell_jokes
    joke = Joke.new({id: 1, question: "Why did the strawberry cross the road?", answer: "Because his mother was in a jam."})
    sal = User.new("Sal")
    ali = User.new("Ali")
    assert_equal 0, ali.jokes.count

    sal.tell(ali, joke)

    assert_equal 1, ali.jokes.count
  end

end

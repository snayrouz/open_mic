# require 'joke'

class User
  attr_reader :name, :jokes, :count

  def initialize(name)
    @name  = name
    @jokes = []
    @count = 0
  end

  def learn(joke)
    jokes << joke
    @jokes = Joke.new
  end

  def tell(user, joke)

  end

end

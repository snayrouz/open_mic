# require 'joke'
#
class User
  attr_reader :name, :jokes, :count

  def initialize(name)
    @name  = name
    @jokes = []
    @count = 0
  end

  def learn(joke)
    jokes << joke
  end

end

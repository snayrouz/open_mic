require 'csv'


class User
  attr_reader :name, :jokes

  def initialize(name)
    @name  = name
    @jokes = []
  end

  def learn(joke)
    @jokes << joke
  end

  def tell(user, joke)
    user.jokes << joke
  end

  def perform_routine_for(user)
    jokes.each do |joke|
      tell(user, joke)
    end
  end

  def learn_routine(jokes_file)
    CSV.foreach(jokes_file, headers: true) do |row|
      jokes << row.to_hash
    end
  end

end

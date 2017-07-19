class Joke

  attr_accessor :id, :question, :answer

  def initialize(joke ={id: nil, question: nil, answer: nil})
    @id = id
    @question = question
    @answer = answer
  end

  def id
    1
  end

  def question
    "Why did the strawberry cross the road?"
  end

  def answer
    "Because his mother was in a jam."
  end
end

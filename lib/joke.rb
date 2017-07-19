class Joke

  attr_accessor :id, :question, :answer

  def initialize(joke ={id: nil, question: nil, answer: nil})
    @id       = 1
    @question = "Why did the strawberry cross the road?"
    @answer   =   "Because his mother was in a jam."
  end

end

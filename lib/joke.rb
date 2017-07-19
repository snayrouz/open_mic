class Joke

  attr_accessor :id, :question, :answer

  def initialize(joke ={id: 1, question: "Why did the strawberry cross the road?", answer: "Because his mother was in a jam."})
    @id = id
    @question = question
    @answer = answer
  end

  # def id
  #   1
  # end


end

class GamesController < ApplicationController

def home
end


def magic8ball
@question = params[:question]
answers = [
  "not likely",
  "definitely",
  "who know's"
]
random = answers[Random.rand(3)]
@random = random
end



def rockpaperscissors
end

def secretnumber
  @questiontwo = params[:questiontwo].to_i
  if (@questiontwo < 10)
      answerstwo = [
        "You are wrong",
        "You are not even close",
        "That is correct - good guess!"
      ]
      @randomtwo = answerstwo[Random.rand(3)]
  else
    @randomtwo = "please guess between 1 and 10"
  end
end


def rockpaperscissorsplay
@questionthree = params[:questionthree]
answersthree = [
  "rock",
  "paper",
  "scissors"
]
randomthree = answersthree[Random.rand(3)]
@randomthree = randomthree
end



end

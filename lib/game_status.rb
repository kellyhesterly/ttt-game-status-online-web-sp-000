require 'pry'
# Helper Method
def position_taken?(board, index)
  board[index] == "X" || board[index] == "O"
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS =[
  [2,5,8],
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,4,8],
  [2,4,6],
  [0,3,6],
  [1,4,7]
]

def won?(board)
  WIN_COMBINATIONS.detect do |combo|

    position_1 = board[combo[0]]
    position_2 = board[combo[1]]
    position_3 = board[combo[2]]

  if position_1 == "X" && position_2 == "X" && position_3 == "X" ||
     position_1 == "O" && position_2 == "O" && position_3 == "O"
   return combo
    end
  end
end

def full?(board)
  board.all? do |token|
  if position_taken?(board, token)
    true
      end
    end
  end

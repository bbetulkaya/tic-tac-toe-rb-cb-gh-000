WIN_COMBINATIONS = [
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8],
  [0, 4, 8],
  [6, 4, 2]
]

def display_board(board)
separator = "|"
lines = "-----------"

puts " #{board[0]} #{separator} #{board[1]} #{separator} #{board[2]} "
puts "#{lines}"
puts " #{board[3]} #{separator} #{board[4]} #{separator} #{board[5]} "
puts "#{lines}"
puts " #{board[6]} #{separator} #{board[7]} #{separator} #{board[8]} "
end

def input_to_index(input)
  input.to_i-1
end

def move(board,position,token)
  board[position]=token
end
def position_taken?(board,index)
  if board[index]==""||board[index]==" "||board[index]== nil
    return false
  else
    true
  end
end

def valid_move?(board, index)
  index.between?(0,8) && !position_taken?(board, index)
end

def turn(board)
  puts "Please enter 1-9:"
  userInput = gets.strip
  index = input_to_index(userInput)
  if !valid_move?(board, index)
    turn(board)
  else
    move(board, index, current_player(board))
  end
display_board(board)
end

def turn_count
  count = 0
board.each do |index|
  if index != " "
    count += 1
  end
end
  count
end

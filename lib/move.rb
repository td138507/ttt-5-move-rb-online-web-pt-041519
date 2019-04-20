def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your input_to_index and move method here!
def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index= input_to_index(input)
  if valid_move? (board,index) == true
    move(board,index,car= "X")
  else
    turn(board)
  end
  display_board(board)
end

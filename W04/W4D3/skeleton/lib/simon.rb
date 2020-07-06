class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
   @sequence_length = 1
   @game_over = false
  @seq = []
  end

  def play
    until @game_over
      take_turn
    end
    game_over_message
    reset_game
  end

  def take_turn
    show_sequence
    require_sequence
    if !@game_over
      round_success_message
      @sequence_length += 1
    end

  end

  def show_sequence
    add_random_color
    p @seq

  end

  def require_sequence
    copy_seq = @seq.dup
    

    until @game_over || copy_seq.empty?
      p "Please enter colors 1 at a time:"
      input = gets.chomp
      if input != copy_seq[0]
        @game_over = true
      end
      copy_seq.shift

    end


  end

  def add_random_color
    @seq << COLORS.sample

  end

  def round_success_message
    p "Round Successful"

  end

  def game_over_message
    p "Game Over"

  end

  def reset_game
    @sequence_length = 1
    @game_over = false
    @seq = []
  end
end

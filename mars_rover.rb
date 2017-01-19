#see comments

grid = gets.chomp
grid.chars
max_x = grid[0].to_i
max_y = grid[2].to_i

class Rover

  def initialize(name)
    @name = name
    @x_coor = 0
    @y_coor = 0
    @direc = "N"
  end

  def starter
    @start_pos = gets.chomp
    @start_pos.chars
    @x_coor = @start_pos[0].to_i
    @y_coor = @start_pos[2].to_i
    @start_pos[4] = @direc
  end

  def move
    @move_string = gets.chomp
    @move_string.chars
    @move_string.each do |move|
      case move == "L"
        when @direc == "N"
          @direc = "W"
        when @direc == "W"
          @direc = "S"
        when @direc == "S"
          @direc = "E"
        when @direc == "E"
          @direc = "N"
      end
      case move == "R"
        when @direc == "N"
          @direc = "E"
        when @direc == "E"
          @direc = "S"
        when @direc == "S"
          @direc = "W"
        when @direc == "W"
          @direc = "N"
      end
      case move == "M"
        when @direc == "E"
          @x_coor += 1
        when @direc == "W"
          @x_coor -= 1
        when @direc == "N"
          @y_coor += 1
        when @direc == "S"
          @y_coor -= 1
      end
      case move == " "
        nil
      end
    end
    puts "#{@x_coor} #{@y_coor} #{@direc}"
  end

end

#need a method to find out whether or not first instance, because all subsequent instances need to output their starting coordinates

#what are the 5 gets?

#my .chars don't seem to be working

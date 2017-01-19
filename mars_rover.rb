
class Rover

  def initialize(name)
    @name = name
    @x_coor = 0
    @y_coor = 0
    @direc = "N"
  end

  def starter
    @start_pos = gets
    @start_pos = @start_pos.scan(/\w/)
    @x_coor = @start_pos[0].to_i
    @y_coor = @start_pos[1].to_i
    @direc = @start_pos[2]
  end

  def move

    def turn_r
     case
        when @direc == "N"
          @direc = "W"
          return
        when @direc == "W"
          @direc = "S"
          return
        when @direc == "S"
          @direc = "E"
          return
        when @direc == "E"
          @direc = "N"
          return
      end
    end

    def turn_l
      case
        when @direc == "N"
          @direc = "E"
          return
        when @direc == "E"
          @direc = "S"
          return
        when @direc == "S"
          @direc = "W"
          return
        when @direc == "W"
          @direc = "N"
          return
      end
    end

    def move_straight
      case
        when @direc == "E"
          @x_coor += 1
          return
        when @direc == "W"
          @x_coor -= 1
          return
        when @direc == "N"
          @y_coor += 1
          return
        when @direc == "S"
          @y_coor -= 1
          return
      end
    end

    @move_string = gets
    @move_string = @move_string.scan(/\w/)
    @move_string.each do |move|
      if move == "L"
        turn_r
      elsif move == "R"
        turn_l
      elsif move == "M"
        move_straight
      else
        puts "invalid instructions"
      end
    end
    puts "#{@x_coor} #{@y_coor} #{@direc}"
  end

end

  grid = gets
  max_x = grid.scan(/\w/)[0].to_i
  max_y = grid.scan(/\w/)[1].to_i

josh = Rover.new ("josh")

josh.starter
josh.move

dave = Rover.new ("dave")
dave.starter
dave.move

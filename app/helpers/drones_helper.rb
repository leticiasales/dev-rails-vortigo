module DronesHelper

  def position(action)
    x = 0
    y = 0
    chars = action.chars
    move = ''
    count = ''
    stack_moves = []
    stack_count = []

    chars.each_with_index do |char, idx|
      if char == "X" # cancel last action
        stack_moves.pop
        stack_count.pop
      elsif ["N", "S", "L", "O"].include? char # create action
        move = char
        substring = action.from(idx + 1)
        step = 0
        count = ""

        while substring[step] and !["N", "S", "L", "O", "X"].include? substring[step]
          if substring[step].to_i.to_s == substring[step]
            count = count + substring[step]
            step = step + 1
          else
            return "(999, 999)"
          end
        end

        count = count.empty? ? 1 : count.to_i

        stack_moves.push(char)
        stack_count.push(count)
      elsif char == char.to_i.to_s
        if idx == 0 # if starts with number
          return "(999, 999)"
        elsif 
          step = idx
          move = action[idx]
          while step >= 0 and move.to_i.to_s == move # search for previous move
            step = step - 1
            move = action[step]
          end
          if move == "X" # X shouldn't allow step
            return "(999, 999)"
          end
        end
      else
        return "(999, 999)"
      end
    end

    stack_moves.each_with_index do |move, idx|
      if stack_count[idx] > 2147483647 
        return "(999, 999)"
      end
      case move
        when "N"
          y = y + stack_count[idx]
        when "S"
          y = y - stack_count[idx]
        when "L"
          x = x + stack_count[idx]
        when "O"
          x = x - stack_count[idx]
      end
    end

    return "(#{x}, #{y})"
  end
end

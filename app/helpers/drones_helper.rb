module DronesHelper

  def position(action)
    x = 0
    y = 0
    chars = action.chars
    move = ''
    count = ''

    chars.each_with_index do |char, idx|
      if char == "X"
        move = ""
        count = ""
      elsif ["N", "S", "L", "O"].include? char
        case move
          when "N"
            y = y + count.to_i
          when "S"
            y = y - count.to_i
          when "L"
            x = x + count.to_i
          when "O"
            x = x - count.to_i
        end

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

        puts "count: " + count
        count = count.empty? ? 1 : count.to_i
      elsif char != char.to_i.to_s    
        return "(999, 999)"
      end
    end

    puts "(#{x}, #{y})"

    case move
      when "N"
        y = y + count.to_i
      when "S"
        y = y - count.to_i
      when "L"
        x = x + count.to_i
      when "O"
        x = x - count.to_i
    end

    return "(#{x}, #{y})"
  end
end

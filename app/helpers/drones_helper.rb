module DronesHelper

  def position(action)
    x = 0
    y = 0
    chars = action.chars
    move = ''
    count = ''

    chars.each_with_index do |char, idx|
      puts("\n\n")
      puts("char: " + char)

      if ["N", "S", "L", "O"].include? char
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
        substring = action[idx + 1..0]
        step = 0
        count = ''

        while !["N", "S", "L", "O", "X"].include? substring[step]
          if substring[step].to_i.to_s == substring[step]
            count = count + substring[step]
            step = step + 1
          else
            return "(999, 999)"
          end
        end

        count = count.to_i > 0 ? count.to_i : 1
      end

      puts "(#{x}, #{y})"

      case action[-1]
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
end

module DronesHelper

  def result(action)
    x = 0
    y = 0
    chars = action.chars
    action = ''
    count = ''

    chars.each_with_index do |char, idx|
      if ["N", "S", "L", "O"].include? char
        substring = chars.from(idx)
        step = 0

        while !["N", "S", "L", "O"].include? substring[step]
          count = count + substring[step]
          step = step + 1
        end

        puts(count)

        case char
          when "N"
            y = y + 1
          when "S"
            y = y - 1
          when "L"
            x = x + 1
          when "O"
            x = x - 1
        end
      end
    end

    "(#{x}, #{y})"
  end 
end

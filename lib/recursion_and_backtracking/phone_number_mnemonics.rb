# Problem:
# Given an N digit phone number, print all strings that can
# be made from that phone number. Since 1 and 0 do not
# correspond to any letters, it is safe to ignore them
#
# Given: 213
# Result: AD, AE, AF, BD, BE, BF, CE, CE, CF

class PhoneNumberMnemonics
  def self.run(arr, buffer, next_index, buffer_index)
    return "" if arr.empty?

    if buffer.length == buffer_index || arr.length == next_index
      if buffer.all? nil
        return ""
      else
        p buffer
      end
      
      return
    end

    letters = letters_map[arr[next_index]]

    if letters.empty?
      run(arr, buffer, next_index + 1, buffer_index)
    end

    letters.each do |letter|
      buffer[buffer_index] = letter
      run(arr, buffer, next_index + 1, buffer_index + 1)
    end
  end

  private

    def self.letters_map
      {
        1 => [],
        2 => %w[A B C],
        3 => %w[D E F],
        4 => %w[G H I],
        5 => %w[J K L],
        6 => %w[M N O],
        7 => %w[P Q R S],
        8 => %w[T U V],
        9 => %w[W X Y Z],
        0 => %w[],
      }
    end
end

class Number
  def self.bin2dec(binary)

    sum = 0
    binary.chars.reverse.each_with_index do |bit, column|
      sum += (2 ** column) if bit == '1'
    end

    sum

  end
end

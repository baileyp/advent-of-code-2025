class Day03
  def self.part1(input)
    input.each_line.map { |line| max_joltage(line.chomp) }.sum
  end

  def self.part2(input)
    input.each_line.map { |line| max_joltage_12(line.chomp) }.sum
  end

  def self.max_joltage(bank)
    batteries = bank.split('').map(&:to_i)

    max_left = batteries.slice(0, batteries.length - 1).max
    max_right = batteries.slice(batteries.find_index(max_left) + 1, batteries.length).max

    "#{max_left}#{max_right}".to_i
  end

  def self.max_joltage_12(bank)
    batteries = bank.split('').map(&:to_i)
    joltage = ""

    while joltage.length != 12
      if joltage.length + batteries.length == 12
        joltage += batteries.join('')
        break
      end

      next_digit = batteries.slice(0, batteries.length - (12 - joltage.length) + 1).max
      next_digit_index = batteries.find_index(next_digit)

      batteries = batteries.slice(next_digit_index + 1, batteries.length)

      joltage += next_digit.to_s
    end

    joltage.to_i
  end
end

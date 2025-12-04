class Day02
  def self.part1(input)
    ranges = parse_input(input)
    answer = 0

    ranges.each do |range|
      first_id, last_id = range
      next if first_id.to_s.length == last_id.to_s.length && first_id.to_s.length % 2 == 1

      (first_id..last_id).each do |id|
        answer += id if is_invalid_id?(id)
      end
    end

    answer
  end

  def self.part2(input)
    ranges = parse_input(input)
    answer = 0

    ranges.each do |range|
      first_id, last_id = range

      (first_id..last_id).each do |id|
        answer += id if is_invalid_id_two?(id)
      end
    end

    answer
  end

  def self.is_invalid_id?(id)
    id_str = id.to_s
    return false if id_str.length % 2 == 1

    first_half = id_str[0..(id_str.length / 2)-1]
    second_half = id_str[(id_str.length / 2)..-1]

    return first_half == second_half
  end


  def self.is_invalid_id_two?(id)
    id_str = id.to_s

    (id_str.length / 2).times do |i|
      return true if id_str.chars.each_slice(i + 1).to_set.size == 1
    end

    false
  end

  def self.parse_input(input)
    input.split(',').map do |range|
      range.split('-').map(&:to_i)
    end
  end
end

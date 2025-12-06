class Day05
  def self.part1(input)
    fresh_ranges, ingredients = parse_input(input)
    fresh_ingredients = 0

    ingredients.each do |ingredient|
      if fresh_ranges.any? { |range| range.include?(ingredient) }
        fresh_ingredients += 1
      end
    end

    fresh_ingredients
  end

  def self.part2(input)
    fresh_ranges, _ = parse_input(input)

    ranges = merge_ranges(fresh_ranges)

    ranges.reduce(0) do |sum, range|
      sum + range.size
    end
  end

  def self.parse_input(input)
    ranges_str, numbers_str = input.split("\n\n")

    ranges = ranges_str.split("\n").map do |range|
      i, j = range.split("-").map(&:to_i)
      (i..j)
    end

    numbers = numbers_str.split("\n").map(&:to_i)

    [ranges, numbers]
  end

  def self.merge_ranges(ranges)
    return [] if ranges.empty?

    sorted_ranges = ranges.sort_by { |range| range.begin }

    merged = [sorted_ranges.first]

    sorted_ranges[1..-1].each do |current_range|
      last_merged = merged.last
      if current_range.begin <= last_merged.end
        merged[-1] = (last_merged.begin .. [last_merged.end, current_range.end].max)
      else
        merged << current_range
      end
    end

    merged
  end
end

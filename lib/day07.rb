class Day07
  def self.part1(input)
    grid = input.split("\n").map(&:chars)

    splits = 0

    grid.each_with_index do |row, row_index|
      next if row_index == 0
      beams = Set.new
      row.each_with_index do |cell, col_index|
        cell_above = grid[row_index - 1][col_index]
        case cell_above
        when "S"
          beams << col_index
        when "|"
          if cell == '^'
            beams << col_index - 1
            beams << col_index + 1
            splits += 1
          else
            beams << col_index
          end
        end
      end
      beams.each do |col_index|
        grid[row_index][col_index] = '|'
      end
    end

    splits
  end

  def self.part2(input)
    grid = input.split("\n").map(&:chars)

    splits = 0
    beams = []

    grid.each_with_index do |row, row_index|
      beams << Hash.new { |hash, key| hash[key] = 0 }
      next if row_index == 0

      row.each_with_index do |cell, col_index|
        cell_above = grid[row_index - 1][col_index]
        case cell_above
        when "S"
          beams[row_index][col_index] = 1
        when "|"
          beam_count = beams[row_index - 1][col_index]
          if cell == '^'
            beams[row_index][col_index - 1] += beam_count
            beams[row_index][col_index + 1] += beam_count
            splits += 1
          else
            beams[row_index][col_index] += beam_count
          end
        end
      end
      beams[row_index].each do |col_index, _|
        grid[row_index][col_index] = '|'
      end
    end

    beams.last.values.sum
  end
end

class Day04
  def self.part1(input)
    grid = input.split("\n").map(&:chars)

    reachable = 0

    grid.each_with_index do |row, row_index|
      row.each_with_index do |cell, col_index|
        if cell == '@'
          tally = neighbors(grid, row_index, col_index).tally
          reachable += 1 if !tally.key?("@") || tally["@"] < 4
        end
      end
    end

    reachable
  end

  def self.part2(input)
    grid = input.split("\n").map(&:chars)
    total_removed = 0
    removed = 1

    while removed > 0
      grid, removed = remove_reachable(grid)
      total_removed += removed
    end

    total_removed
  end

  def self.neighbors(grid, row, col)
    neighbors = []
    neighbors << grid[row - 1][col] if row > 0
    neighbors << grid[row + 1][col] if row < grid.length - 1
    neighbors << grid[row][col - 1] if col > 0
    neighbors << grid[row][col + 1] if col < grid[row].length - 1
    neighbors << grid[row - 1][col - 1] if row > 0 && col > 0
    neighbors << grid[row - 1][col + 1] if row > 0 && col < grid[row].length - 1
    neighbors << grid[row + 1][col - 1] if row < grid.length - 1 && col > 0
    neighbors << grid[row + 1][col + 1] if row < grid.length - 1 && col < grid[row].length - 1
    neighbors
  end

  def self.remove_reachable(grid)
    to_remove = Set.new

    grid.each_with_index do |row, row_index|
      row.each_with_index do |cell, col_index|
        if cell == '@'
          tally = neighbors(grid, row_index, col_index).tally
          to_remove << [row_index, col_index] if !tally.key?("@") || tally["@"] < 4
        end
      end
    end

    to_remove.each do |cell|
      grid[cell[0]][cell[1]] = '.'
    end

    [grid, to_remove.size]
  end
end

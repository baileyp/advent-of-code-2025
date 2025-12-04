require_relative '../lib/day04'

describe Day04 do
  input = <<~INPUT
    ..@@.@@@@.
    @@@.@.@.@@
    @@@@@.@.@@
    @.@@@@..@.
    @@.@@@@.@@
    .@@@@@@@.@
    .@.@.@.@@@
    @.@@@.@@@@
    .@@@@@@@@.
    @.@.@@@.@.
  INPUT

  describe ".part1" do
    it "returns the solution to part 1" do
      expect(Day04.part1(input)).to eq(13)
    end
  end

  describe ".part2" do
    it "returns the solution to part 2" do
      expect(Day04.part2(input)).to eq(43)
    end
  end
end

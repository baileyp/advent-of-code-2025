require_relative '../lib/day05'

describe Day05 do
  input = <<~INPUT
    3-5
    10-14
    16-20
    12-18

    1
    5
    8
    11
    17
    32
  INPUT

  describe ".part1" do
    it "returns the solution to part 1" do
      expect(Day05.part1(input)).to eq(3)
    end
  end

  describe ".part2" do
    it "returns the solution to part 2" do
      expect(Day05.part2(input)).to eq(14)
    end
  end

  describe ".merge_ranges" do
    it "returns the solution to part 2" do
      expect(Day05.merge_ranges([3..5, 10..14, 16..20, 12..18])).to eq([3..5, 10..20])
    end
  end
end

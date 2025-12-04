require_relative '../lib/day03'

describe Day03 do
  input = <<~INPUT
    987654321111111
    811111111111119
    234234234234278
    818181911112111
  INPUT

  describe ".part1" do
    it "returns the solution to part 1" do
      expect(Day03.part1(input)).to eq(357)
    end
  end

  describe ".part2" do
    it "returns the solution to part 2" do
      expect(Day03.part2(input)).to eq(3121910778619)
    end
  end

  describe ".max_joltage" do
    it "returns the max joltage" do
      expect(Day03.max_joltage("987654321111111")).to eq(98)
      expect(Day03.max_joltage("811111111111119")).to eq(89)
      expect(Day03.max_joltage("234234234234278")).to eq(78)
      expect(Day03.max_joltage("818181911112111")).to eq(92)
    end
  end

  describe ".max_joltage_12" do
    it "returns the max joltage" do
      expect(Day03.max_joltage_12("987654321111111")).to eq(987654321111)
      expect(Day03.max_joltage_12("811111111111119")).to eq(811111111119)
      expect(Day03.max_joltage_12("234234234234278")).to eq(434234234278)
      expect(Day03.max_joltage_12("818181911112111")).to eq(888911112111)
    end
  end
end

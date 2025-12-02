require_relative '../lib/day01'

describe Day01 do
  input = <<~INPUT
    L68
    L30
    R48
    L5
    R60
    L55
    L1
    L99
    R14
    L82
  INPUT

  describe ".part1" do
    it "returns the solution to part 1" do
      expect(Day01.part1(input)).to eq(3)
    end
  end

  describe ".part2" do
    it "returns the solution to part 2" do
      expect(Day01.part2(input)).to eq(6)
    end
  end
end

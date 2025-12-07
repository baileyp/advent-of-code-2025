require_relative '../lib/day06'

describe Day06 do
  input = <<~INPUT
123 328  51 64
 45 64  387 23
  6 98  215 314
*   +   *   +
  INPUT

  describe ".part1" do
    it "returns the solution to part 1" do
      expect(Day06.part1(input)).to eq(4277556)
    end
  end

  describe ".part2" do
    it "returns the solution to part 2" do
      expect(Day06.part2(input)).to eq(3263827)
    end
  end

  describe ".solve_problem" do
    it "returns the solution to part 1" do
      expect(Day06.solve_problem([123, 45, 6, "*"])).to eq(33210)
      expect(Day06.solve_problem([328, 64, 98, "+"])).to eq(490)
      expect(Day06.solve_problem([51, 387, 215, "*"])).to eq(4243455)
      expect(Day06.solve_problem([64, 23, 314, "+"])).to eq(401)
    end
  end
end

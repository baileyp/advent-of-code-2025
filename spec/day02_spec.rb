require_relative '../lib/day02'

describe Day02 do
  input = <<~INPUT
    11-22,95-115,998-1012,1188511880-1188511890,222220-222224,
1698522-1698528,446443-446449,38593856-38593862,565653-565659,
824824821-824824827,2121212118-2121212124
  INPUT

  describe ".part1" do
    it "returns the solution to part 1" do
      expect(Day02.part1(input.gsub(/\s/, ""))).to eq(1227775554)
    end
  end

  describe ".part2" do
    it "returns the solution to part 2" do
      expect(Day02.part2(input.gsub(/\s/, ""))).to eq(4174379265)
    end
  end

  describe ".is_invalid_id?" do
    it "returns true if the id is invalid" do
      expect(Day02.is_invalid_id?(11)).to eq(true)
      expect(Day02.is_invalid_id?(22)).to eq(true)
      expect(Day02.is_invalid_id?(99)).to eq(true)
      expect(Day02.is_invalid_id?(1010)).to eq(true)
      expect(Day02.is_invalid_id?(1188511885)).to eq(true)
      expect(Day02.is_invalid_id?(446446)).to eq(true)
      expect(Day02.is_invalid_id?(222222)).to eq(true)
      expect(Day02.is_invalid_id?(38593859)).to eq(true)
    end
  end

  describe ".is_invalid_id_two?" do
    it "returns true if the id is invalid two" do
      expect(Day02.is_invalid_id_two?(565656)).to eq(true)
      expect(Day02.is_invalid_id_two?(824824824)).to eq(true)
      expect(Day02.is_invalid_id_two?(2121212121)).to eq(true)
      expect(Day02.is_invalid_id_two?(1111111)).to eq(true)
    end
  end
end

class Day01
  DIAL_SIZE = 100
  STARTING_POSITION = 50

  def self.part1(input)
    rotations = parse_input(input)
    position = STARTING_POSITION
    zero_count = 0

    rotations.each do |rotation|
      direction, distance = rotation

      case direction
      when 'L'
        position -= distance % DIAL_SIZE
      when 'R'
        position += distance % DIAL_SIZE
      end

      position += DIAL_SIZE if position < 0
      position -= DIAL_SIZE if position >= DIAL_SIZE

      zero_count += 1 if position == 0
    end

    zero_count
  end

  def self.part2(input)
    rotations = parse_input(input)
    position = STARTING_POSITION
    zero_count = 0

    rotations.each do |rotation|
      direction, distance = rotation
      next_position = position

      zero_count += 1 if position == 0
      zero_count += (distance / DIAL_SIZE).floor
      distance = distance % DIAL_SIZE

      case direction
      when 'L'
        next_position -= distance
        zero_count += 1 if next_position < 0 && position > 0
      when 'R'
        next_position += distance
        zero_count += 1 if next_position > DIAL_SIZE && position < DIAL_SIZE
      end

      position = next_position
      position += DIAL_SIZE if position < 0
      position -= DIAL_SIZE if position >= DIAL_SIZE
    end

    zero_count += 1 if position == 0

    zero_count
  end

  def self.parse_input(input)
    input.each_line.map { |line| parse_line(line) }
  end

  def self.parse_line(line)
    direction = line[0]
    distance = line[1..-1].to_i

    [direction, distance]
  end
end

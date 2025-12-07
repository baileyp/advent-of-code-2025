class Day06
  def self.part1(input)
    problems = parse_input(input)
    problems.map { |problem| solve_problem(problem) }.sum
  end

  def self.part2(input)
    problems = parse_input2(input)
    problems.map { |problem| solve_problem(problem) }.sum
  end

  def self.solve_problem(problem)
    operator = problem.pop.to_sym
    initial = operator == :* ? 1 : 0

    problem.reduce(initial, operator)
  end

  def self.parse_input(input)
    lines = input.split("\n")

    matrix = lines.map do |line|
      line.split(" ").map do |value|
        value == '*' || value == '+' ? value : value.to_i
      end
    end

    matrix.transpose
  end

  def self.parse_input2(input)
    lines = input.split("\n")
    operators = lines.pop.split(" ").map(&:strip)

    line_size = lines.map(&:length).max

    matrix = lines.map do |line|
      # Ensure a regular matrix is formed
      line.ljust(line_size, " ").split("")
    end

    problems = matrix.transpose.map do |problem|
      problem.join("").strip
    end

    new_problems = []
    current_problem = []

    problems.each do |value|
      if value == ""
        current_problem << operators.shift
        new_problems << current_problem
        current_problem = []
      else
        current_problem << value.to_i
      end
    end

    current_problem << operators.shift
    new_problems << current_problem

    new_problems
  end
end

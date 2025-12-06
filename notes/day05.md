# Day 05

[Puzzle ↗️](https://adventofcode.com/2025/day/5) |
[Solution](../lib/day05.rb) |
[Spec](../spec/day05_spec.rb) |
[Input](../input/day05.txt)

## Part 1

Ruby's Range class is a great fit for this problem. From what I can tell, `Range#include?` is O(n) for time, but the
class is O(1) for space, and I think that's the right trade-off for this problem.

## Part 2

I definitely had a hunch that the 2nd part would require the solution to treat ranges as the quantum, not the individual
numbers. Given that the final answer was over `35e13`, that hunch was confirmed.

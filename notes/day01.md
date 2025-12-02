# Day 01

[Puzzle ↗️](https://adventofcode.com/2025/day/1) |
[Solution](../lib/day01.rb) |
[Spec](../spec/day01_spec.rb) |
[Input](../input/day01.txt)

## Part 1

Pretty easy, as to be expected for the first puzzle. Missed the edge case of wrapping around the dial but modulo
arithmetic saved the day.

## Part 2

Likewise not bad. A couple more cases to consider - like landing direclty on zero and not double-counting that.

Both parts run in O(n) time, where n is the number of rotations.

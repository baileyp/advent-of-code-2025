# Day 07

[Puzzle ↗️](https://adventofcode.com/2025/day/7) |
[Solution](../lib/day07.rb) |
[Spec](../spec/day07_spec.rb) |
[Input](../input/day07.txt)

## Part 1

Looks and smells like a graph problem but for Part 1 I decided to do a literal/analog solution. Ended up being pretty
easy to just mutate the grid in place with the splitting of the beams and counting as we go.

## Part 2

I'll be honest, my gut here was that a search algorithm would be the way to go. But I also had a really good mental
model of the analog solution and thought I could just map the number of beams that traverse each cell to the final
answer, which did work.

Turns out this was a much faster solution than DFS or BFS would have been, given that the actual number of timelines
ended up being over 95e13!

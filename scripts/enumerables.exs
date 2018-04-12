
# Enumerables 
# Section https://elixir-lang.org/getting-started/enumerables-and-streams.html

# Over list 
IO.inspect Enum.map([1, 2, 3], fn x -> x *2 end)

# Over map
IO.inspect Enum.map(%{1 => 2, 3 => 4}, fn {k, v} -> k * v end)

# Over range
IO.inspect Enum.map(1..-3, fn x -> x * 2 end)

# Using function reference
#
# `&` means capture the function `+` 
# with arity 2
#
IO.inspect Enum.reduce(1..3, 0, &+/2)

# Example of pipe usage
#
# odd? returns if a number is odd or not
# question mark is just a convention for 
# function that returns bool values
odd? = &(rem(&1, 2) != 0)

# cool pipe usage
# 1..100 is the number range like python
# (&1 * 3) is a function where 1st argument is mutiplied
# by 3
# 
IO.inspect 1..100 
    |> Enum.map(&(&1 * 3)) 
    |> Enum.filter(odd?) 
    |> Enum.sum

# The equivalnet one liner is:

IO.inspect 1..100 |> Stream.map(&(&1 * 3)) |> Stream.filter(odd?) |> Enum.sum

# Streams
# Streams (differently from enums) are lazy evaluated
# snipet below will generate a data type that will only be
# resolved when passed to a enum
IO.inspect 1..100
  |> Stream.map(&(&1 * 3))

stream = Stream.cycle([1, 2, 3])
IO.inspect Enum.take(stream, 10)

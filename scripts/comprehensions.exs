# https://elixir-lang.org/getting-started/comprehensions.html

IO.inspect for n <- [1, 2, 3, 4], do: n * n

# pattern matching:

values = [good: 1, good: 2, bad: 3]
IO.inspect for {:good, n} <- values, do: n * n

multiple_of_3? = fn(n) -> rem(n ,3) == 0 end
IO.inspect for n <- 0..5, multiple_of_3?.(n), do: n * n

dirs = ['./', '..']

for dir <- dirs,
    file <- File.ls!(dir), 
    path = Path.join(dir, file), File.regular?(path) do
      IO.inspect File.stat!(path).size
    end

defmodule Triple do
  def pythagorean(n) when n > 0 do
    for a <- 1..n,
        b <- 1..n,
        c <- 1..n,
      a + b + c <= n,
      a*a + b*b == c*c,
      do: {a, b, c}
  end
end

IO.inspect Triple.pythagorean(12)

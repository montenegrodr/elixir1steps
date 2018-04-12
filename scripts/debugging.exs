# https://elixir-lang.org/getting-started/debugging.html 


# f = fn(a, b, c) -> IO.inspect binding() end

# f.(1,'a',3)

defmodule Example do
    def double_sum(x, y) do
          hard_work(x, y)
        end

    defp hard_work(x, y) do
          x = 2 * x
          y = 2 * y

          x + y
        end
end




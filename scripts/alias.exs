# https://elixir-lang.org/getting-started/alias-require-and-import.html

# alias

defmodule Stats do
  alias Math.List, as: List
end

# also

defmodule Stats2 do
  alias Math.List
end

# require

require Integer

IO.puts Integer.is_odd(3)


# import

import List, only: [duplicate: 2]

IO.inspect duplicate :ok, 3

import Integer, only: :macros
import Integer, only: :functions

# use

defmodule Feature do
  defmacro __using__(_opts) do
    IO.puts "Ha!"
  end
end

defmodule Example do
  use Feature
end

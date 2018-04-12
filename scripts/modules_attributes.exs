# https://elixir-lang.org/getting-started/module-attributes.html

defmodule Math do
  @moduledoc """
  This is the module doc
  """

  @doc """
  this is a method doc
  """
  def sum(a, b), do: a + b
end

# constants

defmodule MyServer do
  @initial_state %{host: "0.0.0.0", port: 8888}
  IO.inspect @initial_state
end


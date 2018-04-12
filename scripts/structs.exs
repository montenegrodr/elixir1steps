# https://elixir-lang.org/getting-started/structs.html#defining-structs

defmodule User do
  defstruct name: "John", age: 27
end

defmodule Car do
  @enforce_keys [:make]
  defstruct [:module, :make]
end

defmodule Main do
  def main do
    IO.inspect %User{}
    IO.inspect %User{name: "Meg"}
    john = %User{}
    meg = %{john | name: "Meg"}
    IO.inspect meg
    kurt = Map.put(%User{}, :name, "Kurt")
    IO.inspect kurt
  end
end

Main.main

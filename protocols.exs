# https://elixir-lang.org/getting-started/protocols.html

defprotocol Size do
  @doc "Calculates the size of a data structure"

  def size(data)
end

defimpl Size, for: BitString do
  def size(string), do: byte_size(string)
end

IO.inspect Size.size("a")

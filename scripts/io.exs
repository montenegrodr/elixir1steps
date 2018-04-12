#
#
# https://elixir-lang.org/getting-started/io-and-the-file-system.html
#
#

# File

# File works with processes

{:ok, h} = File.open "Hello", [:write]

IO.binwrite h, IO.gets "what?"
File.close h
{:ok, msg} =  File.read "Hello"
IO.puts msg

# Path

IO.puts Path.join("foo", "bar")

IO.puts Path.expand("~/Hello")

{:ok, pid} = StringIO.open("my string")
IO.puts IO.read(pid, 2)


# groupd leader

IO.puts :stdio, "Hello"

# is the same of

IO.puts Process.group_leader, "Hello"

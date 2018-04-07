# Processes
#
# refer to https://elixir-lang.org/getting-started/processes.html

# spawn

pid = spawn fn -> 1 + 2 end

IO.inspect pid
IO.inspect Process.alive?(pid)

# self/0

pid = self()
IO.inspect Process.alive?(pid)

# send and receive 

send self(), {:hello, "world"}

receive do
  {:hello, msg} -> IO.puts msg
  {:world, msg} -> "won't match"
end


# timeout

receive do
  {:ok, msg} -> IO.puts msg
after
  1_000 -> IO.puts "timeout"
end

# crazy shit

parent = self()
IO.puts "Parent pid is #{inspect parent}"

spawn fn -> send(parent, {:hello, self()}) end

receive do
  {:hello, pid} -> IO.puts "hello from #{inspect pid}"
end



# hittps://elixir-lang.org/getting-started/processes.html#tasks

# 
# Task.start_link links self() process to the spawned process
# when spawned process fails, parent process fails as well.
#
#

{:ok, pid} = Task.start_link fn -> 
  Process.sleep(500)
  raise "Exception!!" 
end

IO.puts "The taks pid is #{inspect pid}"

Process.sleep(1_000)



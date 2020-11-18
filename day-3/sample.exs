IO.puts("elixir")

result = Enum.map([1,2,3] , fn x -> IO.puts(x*2) end)
IO.puts "result"

odd? = &(rem(&1, 2) != 0)

IO.puts 1..100_000 |> Stream.map(&(&1 * 3)) |> Stream.filter(odd?) |> Enum.sum


#In Elixir, all code runs inside processes. Processes are isolated from each other,
#run concurrent to one another and communicate via message passing. Processes are not
#only the basis for concurrency in Elixir, but they also provide the means
#for building distributed and fault-tolerant programs.
#Elixir’s processes should not be confused with operating system processes.
#Processes in Elixir are extremely lightweight in terms of memory and CPU
#(even compared to threads as used in many other programming languages).
#Because of this, it is not uncommon to have tens or even hundreds of thousands of processes running simultaneously.
#In this chapter, we will learn about the basic constructs
#for spawning new processes, as well as sending and receiving messages between processes.

value = IO.gets "What's your name ? "

IO.puts value

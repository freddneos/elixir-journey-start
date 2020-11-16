IO.puts("elixir")

case {1, 2, 3} do
  {6, 5, 4} -> IO.puts("this clause wont match")
  {1, x, 3} -> IO.puts("this clause will match  #{x} ")
  _ -> IO.puts("this clause will be match any value")
end

IO.puts("Will be show")

case :ok do
  :ok -> IO.puts("Match!")
end

defmodule MyguardTest do
  def with_match?(number) when number > 0 do
    IO.puts("Ok passed!")
  end
end

map = %{a: "teste", b: 2}

users = [
  john: %{name: "John", age: 27, languages: ["Erlang", "Ruby", "Elixir"]},
  mary: %{name: "Mary", age: 29, languages: ["Elixir", "F#", "Clojure"]}
]

users = update_in users[:mary].languages, fn languages -> List.delete(languages, "Clojure") end

#IO.puts(users)

IO.puts(map.a <> " Olá")



defmodule Recursion do
  def print_multiple_times(msg, n) when n <= 1 do
    IO.puts msg
  end

  def print_multiple_times(msg, n) do
    IO.puts msg
    print_multiple_times(msg, n - 1)
  end
end

#Similar to case, a function may have many clauses. A particular clause is executed when the arguments passed to the function match the clause’s argument patterns and its guard evaluates to true.

#When print_multiple_times/2 is initially called in the example above, the argument n is equal to 3.

#The first clause has a guard which says “use this definition if and only if n is less than or equal to 1”. Since this is not the case, Elixir proceeds to the next clause’s definition.

#The second definition matches the pattern and has no guard so it will be executed. It first prints our msg and then calls itself passing n - 1 (2) as the second argument.

#Our msg is printed and print_multiple_times/2 is called again, this time with the second argument set to 1. Because n is now set to 1, the guard in our first definition of print_multiple_times/2 evaluates to true, and we execute this particular definition. The msg is printed, and there is nothing left to execute.

#We defined print_multiple_times/2 so that, no matter what number is passed as the second argument, it either triggers our first definition (known as a base case) or it triggers our second definition, which will ensure that we get exactly one step closer to our base case.


Enum.reduce([1, 2, 3], 0, fn(x, acc) ->  x + acc end)


Recursion.print_multiple_times("Hello!", 3)
MyguardTest.with_match?(1)

IO.puts("elixir")

## iex> 1          # integer
## iex> 0x1F       # integer
## iex> 1.0        # float
## iex> true       # boolean
## iex> :atom      # atom / symbol
## your value is the same of your name. very interesting , boolean is a atom too
## iex> "elixir"   # string
## iex> [1, 2, 3]  # list
## iex> {1, 2, 3}  # tuple

# h round/1 -> acess documentation h

# Tuples
# Elixir uses curly brackets to define tuples. Like lists, tuples can hold any value:

# iex> {:ok, "hello"}
# {:ok, "hello"}
# iex> tuple_size {:ok, "hello"}

# we can compare types
# number < atom < reference < function < port < pid < tuple < map < list < bitstring

#module
defmodule Calcs do
  def exec(a, b) do
    a + b
  end
end

# Module and submodule
#
defmodule CalcOperations do
  defmodule Basic do
    def sum(a, b) do
      a + b
    end
    def sub(a, b) do
      a + b
    end
  end
end

IO.puts(Calcs.exec(1, 4))
IO.puts(CalcOperations.Basic.sum(1, 10))

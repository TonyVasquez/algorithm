defmodule Algorithm.DataStructures.List do
  @moduledoc """
      Different tricks with list
  """

  def len([]), do: 0
  def len([_head | tail]), do: 1 + len(tail)

  def sqaure([]), do: []
  def sqaure([head | tail]), do: [head * head | sqaure(tail)]


  @doc """
    Add 1 for each element

    ## Result
    "Current list: {1, [2, 3]}"
    "Current list: {2, [3]}"
    "Current list: {3, []}"
    "Result: [4]"
    "Result: [3, 4]"
    "Result: [2, 3, 4]"
    [2, 3, 4]



    > [1 + 1 | add_1([2,3])]
    > [2 + 1] | add_1([3])]
    > [3 + 1] | add_1([])]
    > [4]
    > [3, 4]
    > [2, 3, 4]
  """
  def add_1([]), do: []
  def add_1([head | tail]) do
    IO.inspect "Current list: #{inspect {head, tail}}"
    res = [head + 1 | add_1(tail)]
    IO.inspect "Result: #{inspect res}"
    res
  end


  @doc """
    Apply function for each element in a list

    iex> map([1,2,3], fn el -> el * el end)
    iex> [1, 4, 9]
  """
  def map([], _fun), do: []
  def map([head | tail], fun), do: [fun.(head) | map(tail, fun)]
end

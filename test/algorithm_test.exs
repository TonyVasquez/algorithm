defmodule AlgorithmTest do
  use ExUnit.Case
  doctest Algorithm

  test "greets the world" do
    assert Algorithm.hello() == :world
  end
end

defmodule PlaygroundTest do
  use ExUnit.Case
  doctest Playground

  test "greets the world" do
    IO.inspect(Playground.hello())
  end
end

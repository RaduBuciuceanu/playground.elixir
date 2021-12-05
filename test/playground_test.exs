defmodule PlaygroundTest do
  use ExUnit.Case
  doctest Playground

  test "greets the world" do
    Playground.hello


    # assert Playground.hello() == :world
  end
end

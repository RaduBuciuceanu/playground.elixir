defmodule Playground.Behaviour.Ord do
  defprotocol Ord do
    def lte(other)
  end
end

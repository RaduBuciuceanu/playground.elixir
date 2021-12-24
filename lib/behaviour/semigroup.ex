defmodule Playground.Behaviour.Semigroup do
  defprotocol Semigroup do
    def concat(other)
  end
end

defmodule Playground.Behaviour.Monoid do
  defprotocol Monoid do
    def empty(value)
  end
end

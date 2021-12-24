defmodule Playground.Behaviour.Semigroupoid do
  defprotocol Semigroupoid do
    def compose(other)
  end
end

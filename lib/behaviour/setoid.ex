defmodule Behaviour.Setoid do
  defprotocol Setoid do
    def equals(other)
  end
end

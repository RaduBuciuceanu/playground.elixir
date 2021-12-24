defmodule Behaviour.Setoid do
  defprotocol Setoid do
    @spec equals(Setoid.t()) :: boolean
    def equals(other)
  end
end

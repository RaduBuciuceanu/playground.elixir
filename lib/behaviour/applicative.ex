defmodule Playground.Behaviour.Applicative do
  defprotocol Applicative do
    def of(other, function)
  end
end

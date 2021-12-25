defmodule Playground.Behaviour.Functor do
  defprotocol Functor do
    def map(value, function)
  end
end

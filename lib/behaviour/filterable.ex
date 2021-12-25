defmodule Playground.Behaviour.Filterable do
  defprotocol Filterable do
    def filter(value, predicate)
  end
end

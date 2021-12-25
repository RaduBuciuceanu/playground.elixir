defmodule Playground.Behaviour.Contravariant do
  defprotocol Contravariant do
    def contramap(other, function)
  end
end

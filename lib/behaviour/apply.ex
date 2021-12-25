defmodule Playground.Behaviour.Apply do
  defprotocol Apply do
    def ap(other, function)
  end
end

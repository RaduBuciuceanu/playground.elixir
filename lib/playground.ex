defmodule Playground.Behaviour do
  defmacro __using__(_opts) do
    quote do
      use Witchcraft

      import Algae.Maybe
      import Algae.Reader
      import Algae.Writer
      import Algae.State
      import Algae.Either

      alias Algae.Maybe
      alias Algae.Reader
      alias Algae.Writer
      alias Algae.State
      alias Algae.Either
    end
  end
end

defmodule Playground.Access.CreateName do
  use Playground.Behaviour

  def validate do
    monad Reader.new() do
      %{input: input} <- ask()

      return(input)
    end
  end
end

defmodule Playground.Validation.CraeteName do
  use Playground.Behaviour

  def validate do
    monad Reader.new() do
      %{input: input} <- ask()

      return(input)
    end
  end
end

defmodule Playground.Data.CreateName do
  use Playground.Behaviour

  def create do
    monad Reader.new() do
      %{input: input} <- ask()

      return(input)
    end
  end
end

defmodule Playground.Print.CreateName do
  use Playground.Behaviour

  def print do
    monad Reader.new() do
      %{input: input} <- ask()

      return(input)
    end
  end
end

defmodule Playground.Domain.CreateName do
  use Playground.Behaviour

  def execute do
    monad Reader.new() do
      _ <- validate_access()
      _ <- validate_input()
      _ <- create_in_db()
      print_creation()
    end
  end

  defp validate_access do
    monad Reader.new() do
      %{validate_access: function} <- ask()
      function.()
    end
  end

  defp validate_input do
    monad Reader.new() do
      %{validate_input: function} <- ask()
      function.()
    end
  end

  defp create_in_db do
    monad Reader.new() do
      %{create_in_db: function} <- ask()
      function.()
    end
  end

  defp print_creation do
    monad Reader.new() do
      %{print_creation: function} <- ask()
      function.()
    end
  end
end

defmodule Playground.Presentation.CreateName do
  use Playground.Behaviour

  alias Playground.Domain
  alias Playground.Access
  alias Playground.Validation
  alias Playground.Data
  alias Playground.Print

  def execute(input) do
    result =
      Reader.run(Domain.CreateName.execute(), %{
        input: input,
        validate_access: &Access.CreateName.validate/0,
        validate_input: &Validation.CraeteName.validate/0,
        create_in_db: &Data.CreateName.create/0,
        print_creation: &Print.CreateName.print/0
      })

    Either.Right.new(result)
  end
end

defmodule Playground do
  use Playground.Behaviour

  alias Playground.Presentation.CreateName

  def hello do
    created = CreateName.execute("Ion")

    case created do
      %Either.Left{left: value} -> value
      %Either.Right{right: value} -> value
    end
  end
end

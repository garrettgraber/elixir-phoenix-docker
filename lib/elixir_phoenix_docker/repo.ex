defmodule ElixirPhoenixDocker.Repo do
  use Ecto.Repo,
    otp_app: :elixir_phoenix_docker,
    adapter: Ecto.Adapters.Postgres
end

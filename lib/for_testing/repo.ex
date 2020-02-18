defmodule ForTesting.Repo do
  use Ecto.Repo,
    otp_app: :for_testing,
    adapter: Ecto.Adapters.Postgres
end

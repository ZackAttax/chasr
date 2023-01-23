defmodule Chasr.Repo do
  use Ecto.Repo,
    otp_app: :chasr,
    adapter: Ecto.Adapters.Postgres
end

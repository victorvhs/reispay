defmodule Reispay.Repo do
  use Ecto.Repo,
    otp_app: :reispay,
    adapter: Ecto.Adapters.Postgres
end

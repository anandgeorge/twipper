defmodule Twipper.Repo do
  use Ecto.Repo,
    otp_app: :twipper,
    adapter: Ecto.Adapters.Postgres
end

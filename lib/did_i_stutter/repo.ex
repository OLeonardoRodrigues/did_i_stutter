defmodule DidIStutter.Repo do
  use Ecto.Repo,
    otp_app: :did_i_stutter,
    adapter: Ecto.Adapters.Postgres
end

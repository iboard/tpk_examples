defmodule TpkExamples.Repo do
  use Ecto.Repo,
    otp_app: :tpk_examples,
    adapter: Ecto.Adapters.Postgres
end

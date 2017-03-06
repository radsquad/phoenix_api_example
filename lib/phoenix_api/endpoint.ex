defmodule PhoenixApi.Endpoint do
  use Phoenix.Endpoint, otp_app: :phoenix_api

  plug Plug.RequestId
  plug Plug.Logger

  plug Plug.Parsers,
    parsers: [:json],
    pass: ["*/*"],
    json_decoder: Poison

  plug Plug.MethodOverride
  plug Plug.Head
  plug PhoenixApi.Router
end

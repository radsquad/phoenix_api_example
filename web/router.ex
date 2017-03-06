defmodule PhoenixApi.Router do
  use PhoenixApi.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", PhoenixApi do
    pipe_through :api
    resources "/checklists", ChecklistController, only: [:index, :create]
  end
end

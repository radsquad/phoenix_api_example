defmodule PhoenixApi.ChecklistView do
  use PhoenixApi.Web, :view

  def render("index.json", _) do
    %{id: 1}
  end
end

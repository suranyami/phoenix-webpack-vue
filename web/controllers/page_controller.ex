defmodule Vuetable.PageController do
  use Vuetable.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end

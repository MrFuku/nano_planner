defmodule NanoPlannerWeb.PageController do
  use NanoPlannerWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end

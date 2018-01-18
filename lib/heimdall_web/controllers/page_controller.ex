defmodule HeimdallWeb.PageController do
  use HeimdallWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end

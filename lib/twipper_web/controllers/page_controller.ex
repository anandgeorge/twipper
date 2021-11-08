defmodule TwipperWeb.PageController do
  use TwipperWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end

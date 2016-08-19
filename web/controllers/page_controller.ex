defmodule Cradle.PageController do
  use Cradle.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end

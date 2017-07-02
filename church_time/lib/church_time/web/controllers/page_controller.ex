defmodule ChurchTime.Web.PageController do
  use ChurchTime.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end

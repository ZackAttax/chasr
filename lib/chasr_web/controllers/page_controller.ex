defmodule ChasrWeb.PageController do
  use ChasrWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end

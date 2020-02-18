defmodule ForTestingWeb.PageController do
  use ForTestingWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end

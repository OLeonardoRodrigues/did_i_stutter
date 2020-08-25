defmodule DidIStutterWeb.PageController do
  use DidIStutterWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end

defmodule TheBotFindsWeb.PageController do
  use TheBotFindsWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end

defmodule IntroducWeb.PageController do
  use IntroducWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end

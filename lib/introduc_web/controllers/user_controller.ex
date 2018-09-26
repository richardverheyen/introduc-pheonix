defmodule IntroducWeb.UserController do
  # IO.puts('point 1')
  use IntroducWeb, :controller
  alias Introduc.Repo
  alias Introduc.User

  # IO.puts('point 2')

  def index(conn, _params) do
    # IO.puts('point 3')
    users = Repo.all(User)
    # IO.puts('point 4')
    render conn, "index.html", users: users
  end
end

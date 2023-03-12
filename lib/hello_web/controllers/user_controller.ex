defmodule HelloWeb.UserController do
  use HelloWeb, :controller

  alias Hello.Accounts

  def index(conn, _params) do
    users = Accounts.list_users()
    render(conn, "index.html", users: users)
  end
end

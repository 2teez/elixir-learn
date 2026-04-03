defmodule Hello2Web.PageController do
  use Hello2Web, :controller

  def home(conn, _params) do
    render(conn, :home)
  end
end

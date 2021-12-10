defmodule DemoWeb.GameController do
  use DemoWeb, :controller

  def ping(conn, _params) do
    render(conn, "ping.html")
  end

  def pong(conn, _params) do
    render(conn, "pong.html")
  end
end

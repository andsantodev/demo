defmodule DemoWeb.HelloController do
  use DemoWeb, :controller

  def hello(conn, _params) do
    render(conn, "hello.html")
  end
end

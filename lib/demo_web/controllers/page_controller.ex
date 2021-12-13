defmodule DemoWeb.PageController do
  use DemoWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end

  # Abaixo temos formas de transportar
  # os dados pela "conn"

  def inspect(conn, _params) do
    conn
    |> assign(:headline, "This is a test headline")
    |> render("inspect.html")
  end

  def playground(conn, _params) do

    # variavel recebe dados
    headline = "This is a test headline" # A frase é a mesma do "inspect" porém com o estilo de codificação diferente
    {:ok, timestamp} = DateTime.now("Etc/UTC")

    # prepara variavel para enviar para modelo html
    conn
    |> assign(:headline, headline)
    |> assign(:timestamp, timestamp)
    |> render("playground.html")
  end
end

defmodule RocketpayWeb.MynameController do
  use RocketpayWeb, :controller

  alias Rocketpay.Myname

  def index(conn, %{"name" => name}) do
    name
    |> Myname.editName()

    |> handle_response(conn)
  end


  defp handle_response({:ok, %{name: name}}, conn) do
    conn
    |> put_status(:ok)
    |> json(%{message: "Name result #{name}"})
  end

  defp handle_response({:error, reason}, conn) do
    conn
    |> put_status(:bad_request)
    |> json(reason)
  end
end

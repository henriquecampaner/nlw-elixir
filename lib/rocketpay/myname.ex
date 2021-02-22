defmodule Rocketpay.Myname do
  def editName(name) do
    name
    |> handle_name()
  end

  defp handle_name(name) do
    name =
      name
      |> String.trim()
      |> String.capitalize()
      {:ok, %{name: name}}
  end
end

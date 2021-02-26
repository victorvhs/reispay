defmodule ReispayWeb.WelcomeController  do
  use ReispayWeb, :controller
  alias Reispay.Numbers

  def index(conn, %{"filename" => filename}) do
    filename
    |> Numbers.sum_from_file()
    |> handle_response(conn)
  end
  defp handle_response({:ok, %{result: result}},conn) do
    conn
    |>put_status(:ok)
    |> json(%{message: "Number #{result}"})
  end

  defp handle_response({:error,reason},conn) do
    conn
    |>put_status(:bad_request)
    |> json(reason)
  end
end

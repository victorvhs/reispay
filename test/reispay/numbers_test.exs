defmodule Reispay.NumbersTest do
  use ExUnit.Case
  alias Reispay.Numbers

  describe "sum_from_file/1" do
    test "Quanto tem um arquivo, retorna a soma" do
      response = Numbers.sum_from_file("n")
      expected_response = {:ok, %{result: 46}}
      assert response == expected_response
    end
  end
  test "Quanto tem Não em arquivo, retorna um errro" do
    response = Numbers.sum_from_file("bbb")
    expected_response = {:error, %{message: "Arquivo invalido"}}
    assert response == expected_response
  end
end

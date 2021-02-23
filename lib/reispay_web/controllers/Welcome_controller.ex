defmodule ReispayWeb.WelcomeController  do
  use ReispayWeb, :controller

  def index(conn, _params) do
    text(conn,"Bem vindo a selva")
  end
end

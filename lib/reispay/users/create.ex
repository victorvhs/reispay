defmodule Reispay.Users.Create do
  alias Reispay.{Repo, User}

  def call(params) do
  params
    |> User.changeset()
    |> Repo.insert()
  end
end

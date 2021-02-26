defmodule Reispay do
  alias Reispay.Users.Create, as: UserCreate

  defdelegate crete_user(params), to: UserCreate, as: :call
end

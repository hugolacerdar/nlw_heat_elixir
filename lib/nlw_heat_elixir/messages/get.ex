defmodule NlwHeatElixir.Messages.Get do
  import Ecto.Query

  alias NlwHeatElixir.{Message, Repo}

  def current_date_messages do
    today = Date.utc_today()
    query = from message in Message, where: type(message.inserted_at, :date) == ^today

    Repo.all(query)
  end
end

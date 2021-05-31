defmodule TheBotFinds.Find do
  def find(url, word) do
    url
    |> get_html()
    |> search_item(word)
  end

  defp get_html(url) do
    case Tesla.get(url) do
      {:ok, response} -> response.body
      {_, _} -> "erro"
    end
  end
end

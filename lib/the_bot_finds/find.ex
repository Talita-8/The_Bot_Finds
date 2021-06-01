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

  defp search_item(html, word) do
    {:ok, body} = Floki.parse_document(html)

    body
    |> Floki.find("a")
    |> Floki.text()
    |> String.split(".")
    |> filter_by_word(word)
  end

  defp filter_by_word(item, word) do
    item
    |> Enum.find(fn x ->
      if String.contains?(x, word) do
        IO.inspect(x)
      end
    end)
  end
end

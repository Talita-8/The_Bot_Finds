defmodule TheBotFinds.Find do
  alias TheBotFinds.Links

  def get_topic(topic) do
    Links.site(topic)
    |> get_html()

    #   |> search_item(word)
  end

  defp get_html(url) do
    case Tesla.get(url) do
      {:ok, response} -> response.body
      {_, _} -> "erro"
    end
  end

  # defp search_item(html, _word) do
  #   {:ok, body} = Floki.parse_document(html)

  #   body
  #   |> Floki.find(".link-item, a")

  # |> Floki.find(".link-item")

  # |> Floki.text()
  # |> String.split(".")
  # |> filter_by_word(word)
  # end

  # defp filter_by_word(item, word) do
  #   item
  #   |> Enum.find(fn x ->
  #     if String.contains?(x, word) do
  #       IO.inspect(x)
  #     end
  #   end)
  # end

  # defp order(body) do
  #   Regex.split(~r/{/, body)
  # end
end

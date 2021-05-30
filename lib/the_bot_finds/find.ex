defmodule TheBotFinds.Find do
  def find do
    url =
      ""
      |> get_html()
      |> search_item()
  end
end

defmodule TheBotFinds.Links do
  def site(topic) do
    links = [
      economia: [
        "https://brasil.elpais.com/economia/",
        "https://www.bbc.com/portuguese/topics/cvjp2jr0k9rt",
        "https://www1.folha.uol.com.br/mercado/"
      ],
      brasil: [
        "https://www.bbc.com/portuguese/topics/cz74k717pw5t",
        "https://brasil.elpais.com/brasil/",
        "https://www.terra.com.br/noticias/brasil/"
      ]
    ]

    topic_atom = String.to_atom(topic)

    IO.inspect(links[topic_atom])
    |> Enum.at(0)
  end
end

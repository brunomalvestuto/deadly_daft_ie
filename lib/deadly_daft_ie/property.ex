defmodule DeadlyDaftIe.Property do
  import HTTPoison, only: [get!: 1]

  alias DeadlyDaftIe.Property

  @rss_url Application.get_env(:deadly_daft_ie, :rss_url)

  defstruct [:title, :url, :published_at, :price, :agent]

  def from_rss do
    parsed = get!(@rss_url).body |> ElixirFeedParser.parse
    parsed.entries |> Enum.map(&to_struct/1)
  end

  def recently_published do
    from_rss() |> Enum.take(4)
  end

  defp to_struct(%{title: title, "rss2:pubDate": pubdate, url: url }) do
    %Property{title: title, published_at: Timex.parse!(pubdate, "%a, %d %b %Y %T %z", :strftime), url: url, price: ""}
  end
end

defimpl String.Chars, for: DeadlyDaftIe.Property do
  def to_string(%DeadlyDaftIe.Property{title: title, published_at: published_at, url: url, price: price}), do: "#{published_at} - #{price} #{title} - #{url}"
end

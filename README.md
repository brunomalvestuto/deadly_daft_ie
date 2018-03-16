# DeadlyDaftIe

**TODO: Add description**

## Installation

Get a rss feed url from search on daft.ie, then edit config/config.ex to include it

```elixir
config :deadly_daft_ie, rss_url: "http://www.daft.ie/rss.daft?uid=__&id=__&xk=__"

Try it with:
```
mix run -e 'DeadlyDaftIe.Property.recently_published() |> Enum.join("\n") |> IO.puts'
```


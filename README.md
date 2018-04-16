# Meetup

Elixir wrapper for the Meetup.com public API.

## Installation

The package can be installed by adding `meetup` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:meetup, "~> 0.1.0"}
  ]
end
```

## Setup your meetup API key
This package expects an env var named MEETUP_API_KEY to be set. You can get an API key at [https://secure.meetup.com/meetup_api/key/](https://secure.meetup.com/meetup_api/key/). You will need a Meetup.com account.


## API Documentation
You can find documentation for the Meetup V3 documentation at: [https://www.meetup.com/meetup_api/docs/](https://www.meetup.com/meetup_api/docs/).

## Example Request
```
> Meetup.V3.Events.index("denverfp", %{})
{:ok, ...}
```

```
> Meetup.V3.Events.index("notavalidgroup", %{})

{:error,
 [
   %{
     "code" => "group_error",
     "message" => "Invalid group urlname notavalidgroup"
   }
 ]}
 ```

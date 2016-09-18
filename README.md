# Exgoogle

Google API


# Examples:


WIP

```elixir
# Get module for accessing specific api
Api = Exgoogle.urlshortener('v1')

{:ok, response} = Api.get(%{shortUrl: "http://www.example.com/testing"})
```


## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed as:

  1. Add `exgoogle` to your list of dependencies in `mix.exs`:

    ```elixir
    def deps do
      [{:exgoogle, "~> 0.0.1"}]
    end
    ```

  2. Ensure `exgoogle` is started before your application:

    ```elixir
    def application do
      [applications: [:exgoogle]]
    end
    ```
## TODO:

  - [ ] Add generator for API based on google schema.
  - [ ] Add tests for working with Youtube API.

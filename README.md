# Hedwig Inspire Responder

[![Hex.pm](https://img.shields.io/hexpm/v/hedwig_inspire.svg)](https://hex.pm/packages/hedwig_inspire)
 [![Hex.pm](https://img.shields.io/hexpm/l/hedwig_inspire.svg)](https://hex.pm/packages/hedwig_inspire)
 [![Hex.pm](https://img.shields.io/hexpm/dt/hedwig_inspire.svg)](https://hex.pm/packages/hedwig_inspire)
 [![Build Status](https://travis-ci.org/ryanwinchester/hedwig_inspire.svg?branch=master)](https://travis-ci.org/ryanwinchester/hedwig_inspire)

## Installation

Add to the deps in `mix.exs`

```elixir
def deps do
  [
    {:hedwig_inspire, "~> 0.1.0"},
  ]
end
```

Add the responder to your `:responders` list in your bot config, `config/config.exs`

```elixir
config :my_robot, MyApp.MyRobot,
  responders: [
    {Hedwig.Responders.Inspire, []},
  ]
```
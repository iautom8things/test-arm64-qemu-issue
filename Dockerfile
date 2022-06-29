ARG ELIXIR_VERSION
ARG ERLANG_VERSION
ARG ALPINE_VERSION

FROM hexpm/elixir:${ELIXIR_VERSION}-erlang-${ERLANG_VERSION}-alpine-${ALPINE_VERSION}

# Install hex and rebar
RUN mix local.hex --force
RUN mix local.rebar --force
RUN mix hex.info


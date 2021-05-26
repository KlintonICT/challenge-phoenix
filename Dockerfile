# base image for elixir
FROM bitwalker/alpine-elixir-phoenix:1.10.3

# set working directory
RUN mkdir /app
WORKDIR /app

# copy source
COPY mix.exs mix.lock ./

# install dependencies in mix.exs
RUN mix do deps.get, deps.compile

# copy assets source
COPY assets/package.json assets/package-lock.json ./assets/

# install dependencies in assets by npm
RUN npm install --prefix ./assets

# copy others files
COPY . .

# run the project by mix command
CMD ["mix", "phx.server"]
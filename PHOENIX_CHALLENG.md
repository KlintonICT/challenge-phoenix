# Reborn

Reborn is a simple Phoenix web application that monitors a host system it runs on.

## Exercise

Build a web application using a Phoenix Framework. At root (localhost:4000), it should display the [Phoenix Live Dashboard](https://hexdocs.pm/phoenix_live_dashboard/Phoenix.LiveDashboard.html). The Live Dashboard should also provide OS information and Database metrics.

We value an easy-to-read code. Although, this is very subjective to a team coding style. We do not expect your solution to be perfectly matched with our coding guidelines nor our coding style. But be sure to review your own code at least once or twice, improve it, and give it your best.

## Submitting your code

* We prefer well-thought-out solutions. So take your time refining your code before submitting it.
* Average completion time so far has been around one to two weeks.
* Please submit your code by publishing them to any git providers, and then share the repository URL with us.

## Programming languages & Framework

* [Elixir / Erlang](https://elixir-lang.org/)
* [Phoenix Framework](https://www.phoenixframework.org/)

## What we review

* Functionality - The application must be able to up and running on a local machine and provide the functionality described in the [exercise](#exercise) section.
* Description - Provide necessary information for the application.

## Extras

* Implement an authentication system on top of the live dashboard.
* Count how many times the live dashboard page is hit. Persist the counter in memory. And print page hit counter into a console when live dashboard path is hit.

## Bonus

* Typespec your code.
* Provide a docker-compose file.
* Provide a Dockerfile and make it ready for production release.

> Many hidden truths are often unobserved, not invisible. _Matthew A. Petti_


# About this exercise

This exercise seems to be very hard at first glance, but after you realize that Phoenix already comes with a built-in feature (also generators) for the Live Dashboard, this exercise will be just a breeze.

Still, some bonus points require expertise in the Elixir/Erlang language and other knowledge like Docker.

Don't worry if you cannot do it now. Just be able to up and running Phoenix application is ok.

These are steps I hope will help you to complete this exercise in a short amount of time. But again, since this is an exercise meant for developers to get to know Elixir and Phoenix. So, there are some missing steps in this guideline. Please take time to also research from the sources we provide in this guideline as well.

## Setup and running Elixir

First of all, install The Elixir on your local machine.

We understand that, for most developers, Elixir doesn't seem quite well-known yet. So, it might feel a little bit overwhelming at the start. But we guarantee that this knowledge to set up and running Elixir will worth your while.

### Hold your horse!

Elixir development doesn't provide a convenient GUI (Graphic User Interface), so everything from now on will be based on running a command in a command prompt terminal. If you're not familiar with the command prompt, we recommend learning a basic about it first.

Here are some useful sources for learning command-line basics.
- https://www.davidbaumgold.com/tutorials/command-line/. Getting to know essential command-line utilities.
- https://www.hongkiat.com/blog/web-designers-essential-command-lines/. Also, basic command-line commands.

### What is Elixir?

Elixir is a programming language built on top of Erlang. So, let's talk about Erlang first. Erlang, in short, is also a programming language built around 30 years ago by Ericsson Computer Science Laboratory.

Short story, Ericsson wanted to build a robust fault-tolerant distributed application. One of the products that use Erlang is the AXD301, an ATM Switch (Asynchronous Transfer Mode Switch) used for telecommunication.

Erlang is already great in its own field. However, the language syntax is somewhat cryptic for many developers. Hence, Elixir!

Elixir provides modern programming language syntax on top of Erlang. All Erlang features are still available but with more modern syntax. For more information, please see [Elixir website](https://elixir-lang.org/).

### Install Erlang and Elixir

#### For Mac user

Use [Homebrew](https://brew.sh/) to install Elixir should be the easiest way. Just two commands `brew install erlang` to install Erlang and `brew install elixir` to install Elixir. Please note that we don't recommend this approach since Elixir sometimes depends on a specific Erlang version. So, it's not guaranteed that this method will work all the time.

We suggest using a language version manager such as [asdf](https://github.com/asdf-vm/asdf) to manage your installed Elixir and Erlang.

#### For Windows user

Similar to Mac user, please use [Chocolatey](https://chocolatey.org/) to install Erlang and Elixir. Although the Erlang and Elixir version is not up to date, it's ok to use them to complete this exercise.

**HINT:** Elixir website also have recommended install guideline.

## Phoenix

Everything start from [Phoenix Framework website](https://www.phoenixframework.org/).

Elixir comes with a tool named Mix. It's a tool that is used for groundworks, including package installation.

Run `mix archive.install hex phx_new 1.5.8` should install Phoenix Framework into your current Elixir executable.

For more information, please visit [Phoenix overview](https://hexdocs.pm/phoenix/overview.html#content).

## Docker

We recommended installing your dependencies via [Docker](https://www.docker.com/).

For example, running a Postgres database is very simple by using this command,

```
docker run -d --name postgres -p 5432:5432 -e POSTGRES_PASSWORD=postgres postgres:13.2-alpine
```

## The rest

 Please follow [Phoenix Up and Running](https://hexdocs.pm/phoenix/up_and_running.html#content) guide. It should help you get everything up and running. Now, it's your turn to complete the exercise.

## Improve code quality

We recommend adding [Credo](https://github.com/rrrene/credo) to your application dependency and run it before submitting your code. It will help catch some minor mistakes and provide some insight into improving your code quality.

We also recommend running `mix format` before submitting your code. In fact, this is a must.

[Dialyzer](https://github.com/jeremyjh/dialyxir) is also another tool that we recommend using in your project. It will run through your application and find some type mismatched, resulting in catching a bug early on.

## Ending

We hope that this guideline will help you to complete this exercise. Good luck and have fun with the assignment!

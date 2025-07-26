# Serum — Minimal Elixir Web Framework

Serum is a lightweight, Laravel-inspired web framework built in Elixir.  
It aims to provide a simple and modular foundation for building web applications with familiar patterns—keeping your application logic separated in an `app/` folder and core framework code in `lib/`.

---

## Features

- Modular structure with `app/` for your business logic and `lib/` for framework core  
- Plug and Cowboy based HTTP server  
- Configuration inspired by Laravel’s `config/*.php` approach via Elixir `.exs` config files  
- Easy environment-based config management  
- Minimal dependencies for fast startup and flexibility  
- Supports clean routing and controllers  

---

## Getting Started

### Prerequisites

- Elixir 1.15+  
- Erlang/OTP 27+  

### Installation

Clone the repository and fetch dependencies:

```bash
git clone https://github.com/Tchilly/serum.git
cd serum
mix deps.get
```

### Running the Server
Start Serum with automatic restarts on code changes (requires rerun):

```bash
Kopiera
Redigera
mix archive.install hex rerun
rerun --ext ex,exs -- mix run --no-halt
```
Access your app at http://localhost:4000.

## Configuration
Configure your app in config/app.exs:

```bash
import Config

config :app,
  name: "SerumApp",
  env: Mix.env(),
  debug_errors: true
```

#### Access config anywhere:

```bash
Application.get_env(:app, :name)
```

## Project Structure

```bash
.
├── app/            # Your application logic (controllers, views, models)
├── lib/            # Framework core code
├── config/         # Configuration files (*.exs)
├── routes/         # Route definitions
└── mix.exs         # Mix project file
```

## Contributing
Feel free to fork, open issues, and submit pull requests.
Serum is in early development — all feedback is welcome!

## License
MIT License © Tchilly

Build minimal, build modular — build Serum.
import Config

config(:try_elixir,
  secret_key_base:
    Base.decode64!(
      "aOHnVcZ1QA7jI6ULKgIHYG3aU4si38EM/R4wIfT+CyRl7E63g9s3D3ntS5cXE9q5LEve8ewVuPEr8tv40w7oMQ=="
    ),
  encryption_salt: Base.decode64!("giU/Pibe2RVKaQkL6zv3neIYO5BoXLJOArqRloZQFXo="),
  signing_salt: Base.decode64!("NsUIk6yZmoBiQlUjcosoWiod1uJsr3MN+PpIlKUKbaE=")
)

if Mix.env() == :prod do
  import_config("prod.exs")
end
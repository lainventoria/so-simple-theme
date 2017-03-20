# server-based syntax
# ======================
# Defines a single server with a list of roles and multiple properties.
# You can define all roles on a single server, or split them:

# server "example.com", user: "deploy", roles: %w{app db web}, my_property: :my_value
# server "example.com", user: "deploy", roles: %w{app web}, other_property: :other_value
# server "db.example.com", user: "deploy", roles: %w{db}

# frozen_string_literal: true
set :deploy_user, 'app'
set :deploy_to, "/srv/http/blog.seguridadweb.online"
set :branch, ENV.fetch('branch', 'master')

# en Parabola /tmp está montado noexec
set :tmp_dir, "#{fetch :deploy_to}/tmp"

server 'eastberlin.seguridadweb.online',
       port: 1863,
       user: fetch(:deploy_user),
       roles: %w(app web db)

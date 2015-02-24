#
# Extended Server Syntax
# ======================
# This can be used to drop a more detailed server definition into the
# server list. The second argument is a, or duck-types, Hash and is
# used to set extended properties on the server.

server 'ft-01.cifnet.alawar.local', user: 'installer', roles: %w{web}
server 'ft-02.cifnet.alawar.local', user: 'installer', roles: %w{web}
server 'ft-03.cifnet.alawar.local', user: 'installer', roles: %w{web}

#
# Custom SSH Options
# ==================
# You may pass any option but keep in mind that net/ssh understands a
# limited set of options, consult[net/ssh documentation](http://net-ssh.github.io/net-ssh/classes/Net/SSH.html#method-c-start).

set :ssh_options, {
  keys: %w(~/.ssh/id_rsa_installer),
  forward_agent: false,
  auth_methods: %w(publickey)
}

set :branch, 'master'

set :application, 'apc-experiment'

#
# Default deploy_to directory is /var/www/my_app
set :deploy_to, '/home/projects/ft-03.cifnet.alawar.local/htdocs'

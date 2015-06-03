server "192.168.100.2", user: 'apache', password: 'apachecentos' , roles: %w{web app}, primary: true
set :deploy_to, "/var/www/#{fetch(:application)}"

role :app, %w{apache@192.168.100.2}
role :web, %w{apache@192.168.100.2}

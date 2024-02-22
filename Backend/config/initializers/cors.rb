# Be sure to restart your server when you modify this file.

# Avoid CORS issues when API is called from the frontend app.
# Handle Cross-Origin Resource Sharing (CORS) in order to accept cross-origin Ajax requests.

# Read more: https://github.com/cyu/rack-cors

# Rails.application.config.middleware.insert_before 0, Rack::Cors do
#   allow do
#     origins "example.com"
#
#     resource "*",
#       headers: :any,
#       methods: [:get, :post, :put, :patch, :delete, :options, :head]
#   end
# end
# config/application.rb or config/environments/development.rb

# config/application.rb or config/environments/development.rb

Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins 'https://127.0.0.1:4321', "http://127.0.0.1:4321" # o cualquier otro origen permitido
    resource '/platillos', headers: :any, methods: [:get, :post, :put, :patch, :delete, :options]
  end
end

Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins 'http://127.0.0.1:5500', 'https://127.0.0.1:5500'# O el origen de tu aplicación Angular, si es diferente

    resource '/platillos',
      headers: :any,
      methods: [:get, :post, :put, :patch, :delete, :options, :head],
      credentials: true
  end
end




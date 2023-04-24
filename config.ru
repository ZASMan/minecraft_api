$:.unshift "app/"

require 'minecraft_api'
require 'rack/cors'

use Rack::Cors do
  allow do
    origins 'http://localhost:3000'
    resource '*', headers: :any, methods: [:get, :post, :put, :patch, :delete, :options]
  end
end

run MinecraftApi
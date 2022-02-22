Rails.application.config.middleware.use Rack::Cors do
  allow do 
    origins "*"
    resource "*", headers: :any, methods: [:get, :post, :options, :delete, :put, :patch]
  end
end

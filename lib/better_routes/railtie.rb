module BetterRoutes
  class Railtie < Rails::Railtie
    rake_tasks do
      load File.expand_path('../../tasks/better_routes_tasks.rake', __FILE__)
    end
  end
end

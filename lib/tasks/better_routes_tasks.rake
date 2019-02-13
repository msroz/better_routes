require_relative '../better_routes/formatter'

desc "custom_routes"
task better_routes: :environment do

  all_routes = Rails.application.routes.routes
  require 'action_dispatch/routing/inspector'
  inspector = ActionDispatch::Routing::RoutesInspector.new(all_routes)

  routes_filter = nil
  format = ENV['FORMAT'] || 'tsv'

  OptionParser.new do |opts|
    opts.banner = "Usage: rails better_routes [options]"

    Rake.application.standard_rake_options.each { |args| opts.on(*args) }

    # opts.on("-F FORMAT") do |format|
    #  format = format
    # end

    opts.on("-c CONTROLLER") do |controller|
      routes_filter = { controller: controller }
    end

    opts.on("-g PATTERN") do |pattern|
      routes_filter = pattern
    end
  end.parse!(ARGV.reject { |x| x == "routes" })

  formatter_klass = "BetterRoutes::Formatter::#{format.titleize}Formatter".safe_constantize
  if formatter_klass.nil?
    STDERR.puts "format must be one of csv, markdown and tsv(default). got: #{format}"
  end
  STDOUT.puts inspector.format(formatter_klass.new, routes_filter)

  exit 0
end

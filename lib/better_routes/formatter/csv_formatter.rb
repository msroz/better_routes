module BetterRoutes
  module Formatter
    class CsvFormatter
      def initialize
        @buffer = []
        @current_section = "Application"
      end

      def result
        @buffer.join("\n")
      end

      def section_title(title)
        @current_section = title
      end

      def section(routes)
        @buffer << routes.map do |r|
          "#{r[:name]},#{r[:verb]},#{r[:path]},#{r[:reqs]}"
        end
      end

      def header(routes)
        @buffer << "Prefix, Verb, URI Pattern, Controller#Action"
      end

      if Rails.version > '4.2.11'
        def no_routes(routes)
          @buffer << ""
        end
      else
        def no_routes
          @buffer << ""
        end
      end
    end
  end
end

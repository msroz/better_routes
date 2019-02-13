module BetterRoutes
  module Formatter
    class TsvFormatter
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
          "#{r[:name]}\t#{r[:verb]}\t#{r[:path]}\t#{r[:reqs]}"
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

# frozen_string_literal: true

module Facter
  module Windows
    class NetworkingMac
      FACT_NAME = 'networking.mac'

      def call_the_resolver
        fact_value = Resolvers::Networking.resolve(:mac)

        ResolvedFact.new(FACT_NAME, fact_value)
      end
    end
  end
end
# frozen_string_literal: true

require_relative "wrk/version"

module Specstorm
  module Wrk
    class Error < StandardError; end

    def self.run(duration:)
      sleep(duration)
    end
  end
end

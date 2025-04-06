# frozen_string_literal: true

require_relative "wrk/version"

module Specstorm
  module Wrk
    STDOUT

    class Error < StandardError; end

    def self.run(duration:)
      duration = rand(0..duration.to_f)
      puts "#{Process.pid}: Sleeping for #{duration}"
      print ENV["SPECSTORM_FLUSH_DELIMINATOR"] if ENV["SPECSTORM_FLUSH_DELIMINATOR"]

      end_time = Time.now + duration
      while Time.now < end_time
        printf "\e[32m.\e[0m"
        sleep 1
      end
      print "\n"
      print ENV["SPECSTORM_FLUSH_DELIMINATOR"] if ENV["SPECSTORM_FLUSH_DELIMINATOR"]

      puts "#{Process.pid}: Done sleeping for #{duration}"
    end
  end
end

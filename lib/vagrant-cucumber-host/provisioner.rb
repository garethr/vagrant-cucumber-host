require 'cucumber'

module VagrantPlugins
  module Cucumber
    class Provisioner < Vagrant.plugin('2', :provisioner)
      def initialize(machine, config)
        super(machine, config)

        @features = config.features
      end
      def provisioner
        runtime = Cucumber::Runtime.new
        runtime.load_programming_language('rb')
        Cucumber::Cli::Main.new([@features]).execute!(runtime)
      end
    end
  end
end

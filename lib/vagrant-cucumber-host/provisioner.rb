require 'cucumber'

module VagrantPlugins
  module Cucumber
    class Provisioner < Vagrant.plugin('2', :provisioner)
      def initialize(machine, config)
        super(machine, config)

        @features = config.features

        @runtime = Cucumber::Runtime.new
        @runtime.load_programming_language('rb')
      end
      def provisioner
        Cucumber::Cli::Main.new([@features]).execute!(@runtime)
      end
    end
  end
end

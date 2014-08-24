require 'cucumber'

module VagrantPlugins
  module CucumberHost
    class Provisioner < Vagrant.plugin('2', :provisioner)
      def initialize(machine, config)
        super(machine, config)
        @features = config.features
      end
      def provision
        runtime = ::Cucumber::Runtime.new
        ::Cucumber::Cli::Main.new(@features).execute!(runtime)
      end
    end
  end
end

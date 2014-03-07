require 'cucumber/cli/main'

module VagrantPlugins
  module Cucumber
    class Provisioner < Vagrant.plugin('2', :provisioner)
      def initialize(machine, config)
        super(machine, config)

        @features = config.features
      end
      def provisioner
        require 'vagrant-cucumber-host/formatter'
        failure = Cucumber::Cli::Main.execute
      end
    end
  end
end

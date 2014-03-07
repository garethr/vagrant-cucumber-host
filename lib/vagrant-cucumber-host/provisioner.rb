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
        puts "does this appear?"
        failure = Cucumber::Cli::Main.new([@features]).execute!
        puts failure
      end
    end
  end
end

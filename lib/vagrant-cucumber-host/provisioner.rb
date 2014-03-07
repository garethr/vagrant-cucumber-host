require 'cucumber/cli/main'
require 'gherkin/formatter/ansi_escapes'

module VagrantPlugins
  module Cucumber
    class Provisioner < Vagrant.plugin('2', :provisioner)
      include Gherkin::Formatter::AnsiEscapes
      def initialize(machine, config)
        super(machine, config)

        @features = config.features
      end
      def provisioner
        failure = Cucumber::Cli::Main.new([@features]).execute!
        raise "Cucumber failed" if failure
      end
    end
  end
end

module VagrantPlugins
  module Cucumber
    class Plugin < Vagrant.plugin('2')
      name 'cucumber'
      description <<-DESC
      This plugin executes a cucumber suite on the host running Vagrant.
      DESC

      config(:cucumber, :provisioner) do
        require_relative 'config'
        Config
      end

      provisioner(:cucumber) do
        require_relative 'provisioner'
        Provisioner
      end
    end
  end
end

module VagrantPlugins
  module CucumberHost
    class Plugin < Vagrant.plugin('2')
      name 'cucumber_host'
      description <<-DESC
      This plugin executes a cucumber suite on the host running Vagrant.
      DESC

      config(:cucumber_host, :provisioner) do
        require_relative 'config'
        Config
      end

      provisioner(:cucumber_host) do
        require_relative 'provisioner'
        Provisioner
      end
    end
  end
end

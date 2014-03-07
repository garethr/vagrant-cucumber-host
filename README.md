A Vagrant plugin which allows running cucumber tests on the
local host as a provisioner. 

This could be useful for running acceptance tests for a Vagrant setup,
including for a multibox setup.

## Installation

Install this plugin via the `vagrant` command.

    vagrant plugin install vagrant-cucumber-host

## Usage

```ruby
Vagrant.require_plugin "vagrant-cucumber-host"

Vagrant.configure("2") do |config|
  config.vm.box = "precise64"

  config.vm.provision :cucumber do |cucumber|
    cucumber.features = []
  end
end
```

See the examples folder for more.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

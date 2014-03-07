module VagrantPlugins
  module Cucumber
    class Config < Vagrant.plugin('2', :config)
      attr_accessor :features

      def initialize
        super
        @features = UNSET_VALUE
      end

      def pattern=(pat)
        @features = Dir.glob(pat)
      end

      def finalize!
        @features = [] if @features == UNSET_VALUE
      end

      def validate(machine)
        errors = _detected_errors

        missing_files = @features.select { |path| !File.file?(path) }
        unless missing_files.empty?
          errors << I18n.t('vagrant.config.cucumber.missing_features', files: missing_files.join(', '))
        end

        { 'cucumber provisioner' => errors }
      end
    end
  end
end

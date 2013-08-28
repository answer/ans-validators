require "ans-validators/version"

module Ans
  module Validators
    include ActiveSupport::Configurable

    configure do |config|
      config.validators = {
        confirmation_of: true,
      }
    end
  end
end

Ans::Validators.config.validators.each do |name,enabled|
  if enabled
    name = "#{name}_validator"
    autoload name.to_s.camelize.to_sym, "ans-validators/#{name}.rb"
  end
end

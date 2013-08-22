# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ans-validators/version'

Gem::Specification.new do |gem|
  gem.name          = "ans-validators"
  gem.version       = Ans::Validators::VERSION
  gem.authors       = ["sakai shunsuke"]
  gem.email         = ["sakai@ans-web.co.jp"]
  gem.description   = %q{独自のバリデーションクラス}
  gem.summary       = %q{バリデーションクラスを提供}
  gem.homepage      = "https://github.com/answer/ans-validators"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end

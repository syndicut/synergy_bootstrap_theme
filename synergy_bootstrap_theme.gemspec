Gem::Specification.new do |s|
  s.name         = 'synergy_bootstrap_theme'
  s.version      = '0.0.4'
  s.date         = '2012-05-01'
  s.summary      = "Synergy theme with twitter bootstrap"
  s.description  = "A simple synergy theme based on synergy_default_theme with twitter bootstrap"
  
  s.author       = "Ramil Mustafin"
  s.email        = 'rommel.rmm@gmail.com'
  s.homepage     = 'https://github.com/R0mmel/synergy_bootstrap_theme'

  s.files        = `git ls-files`.split("\n")
  s.require_path = 'lib'

  s.required_ruby_version = '>= 1.8.7'
  s.requirements << 'none'

  #s.add_dependency('synergy', '~> 0.60.0')
  s.add_dependency('jquery-rails')
  s.add_dependency('twitter-bootstrap-rails')
  s.add_dependency('bootstrap-addons-rails')
  s.add_dependency('dalli', '~> 1.0.3')
end


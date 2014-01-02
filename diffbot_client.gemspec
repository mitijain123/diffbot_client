Gem::Specification.new do |s|
  s.name        = 'diffbot_client'
  s.version     = '1.0.0'
  s.date        = '2014-01-02'
  s.summary     = "Diffbot Client!"
  s.description = "A simple diffbot client lib"
  s.authors     = ["Mitesh Jain"]
  s.email       = 'mitijain123@gmail.com'
  s.require_paths       = ["lib"]
  s.files         = Dir["lib/**/*", "lib/diffbot_client.rb"]
  s.add_dependency 'httparty'
  s.add_dependency 'json'
  s.homepage    = 'http://rubygems.org/gems/diffbot_client'
  s.license     = 'MIT'
end
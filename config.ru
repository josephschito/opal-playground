require 'bundler'
Bundler.require

require 'opal'

Opal::Config.esm = true

run(Opal::SimpleServer.new { |s|
  s.index_path = 'app/index.html.erb'
  # the name of the ruby file to load. To use more files they must be required from here (see app)
  s.main = 'application'

  # the directory where the code is (add to opal load path )
  s.append_path 'app'
})

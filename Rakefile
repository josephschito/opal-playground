require 'erb'
require 'opal'
require 'sprockets'

desc "Application builder"
task :build do
  def main = nil
  def javascript_include_tag(_) = "<script type='module' src='app.mjs.min'></script>"

  Dir.mkdir(:build) rescue Errno::EEXIST
  Opal.append_path 'app'
  File.binwrite 'build/app.mjs', (Opal::Builder.build('application').to_s)
  File.binwrite 'build/index.html', ERB.new(File.read('app/index.html.erb')).result(binding)
  sprockets = Sprockets::Environment.new(File.dirname(__FILE__)) do |env|
    env.append_path 'build'
    env.js_compressor = :uglify
  end

  assets = sprockets.find_asset 'app.mjs'
  assets.write_to 'build/app.mjs.min'

  File.delete 'build/app.mjs'
end

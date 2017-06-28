require 'bundler/gem_tasks'

desc 'Compile the SVG icons into the font'
task :compile do
  result = `fontcustom compile`
  puts result
  raise StandardError if result =~ /error/
end

desc 'Run a server displaying all the available icons'
task :serve => :compile do
  require 'webrick'

  server = WEBrick::HTTPServer.new(:Port => 9000)

  server.mount('/', WEBrick::HTTPServlet::FileHandler, 'preview.html')
  server.mount('/assets/fonts', WEBrick::HTTPServlet::FileHandler, 'assets/fonts')

  trap('INT') { server.stop }
  server.start
end

desc 'Clean up the manifest file'
task :cleanup do
  system 'rm -f .fontcustom-manifest.json'
end

task :release do
  system 'npm publish'
end

task :default => :compile

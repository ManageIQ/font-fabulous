require 'bundler/gem_tasks'

namespace :docker do
  desc 'Initialize the docker container'
  task :init do
    system 'docker build . -t font-fabulous'
    orphaned = `docker images --filter "dangling=true" -q`
    system "docker rmi #{orphaned}" if orphaned != ""
  end

  desc 'Compile the SVG icons into the font'
  task :compile => :init do
    system 'docker run --name font-fabulous -t font-fabulous fontcustom compile'
    system 'docker cp font-fabulous:/usr/src/font-fabulous ..'
    system 'docker rm font-fabulous'
  end

  desc 'Enter into the docker container with an interactive shell'
  task :debug => :init do
    system 'docker run --rm -ti font-fabulous bash'
  end
end

desc 'Compile the SVG icons into the font'
task :compile do
  result = `fontcustom compile`
  puts result
  raise StandardError if result =~ /error/
end

desc 'Clean up the manifest file'
task :cleanup do
  system 'rm -f .fontcustom-manifest.json'
end

task :release do
  system 'npm publish'
end

task :default => :compile

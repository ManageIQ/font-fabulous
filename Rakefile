require 'bundler/gem_tasks'

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

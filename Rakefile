require 'colorize'

desc "clean up after ourselves"
task :clean do
  puts "Cleaning up after ourselves...".green
  sh "rm -rf public"
end

desc "perform a full jekyll site build"
task :jekyll do
  puts "Performing a full build...".green
  sh 'bundle exec jekyll build'
end

desc "perform an quick jekyll build"
task :quick do
  puts "Performing an incremental build...".green
  sh 'bundle exec jekyll build --incremental --safe'
end

desc "watch for changes and automatically rebuild (incrementally)"
task :watch do
  puts "Performing an incremental build...".green
  sh 'bundle exec jekyll build --incremental --safe --watch'
end

desc "automatically rebuild (incrementally), running a local server"
task :serve do
  puts "Performing an incremental build...".green
  sh 'bundle exec jekyll serve --incremental --safe --watch'
end

desc "test links with htmlproof"
task :htmlproof => [:jekyll] do
  sh "bundle exec htmlproof ./public/ --only-4xx --check-html --href-ignore \"/#/,/\/foundry/,/\/register/,/APP_TOKEN/\""
end

desc "perform a test cycle"
task :staging_test => [:clean, :jekyll, :htmlproof] do
  puts "Done!!!".on_green
end

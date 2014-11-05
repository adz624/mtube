# encoding: utf-8
namespace :dev do
  desc "Rebuild system"
  task :build => :environment do
    %w(tmp:clear log:clear db:drop db:create db:migrate db:seed).each do |task_command|
      puts "Invoke: #{task_command} ..."
      Rake::Task[task_command].invoke
    end
  end
end
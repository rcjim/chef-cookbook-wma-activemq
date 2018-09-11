require 'bundler/setup'

task default: [:list]

desc 'Lists all the tasks.'
task :list do
  puts "Tasks: \n- #{Rake::Task.tasks.join("\n- ")}"
end

desc 'Clean some generated files'
task :clean do
  %w(
    Berksfile.lock
    .bundle
    .cache
    coverage
    doc
    Gemfile.lock
    .kitchen
    metadata.json
    vendor
    inspec.lock
    .yardoc
  ).each { |f| FileUtils.rm_rf(Dir.glob(f)) }
end

# Style tests. cookstyle (rubocop) and Foodcritic
namespace :style do
  begin
    require 'cookstyle'
    require 'rubocop/rake_task'

    desc 'Run Ruby style checks using rubocop with cookstyle'
    RuboCop::RakeTask.new(:ruby)
  rescue LoadError => e
    puts ">>> Gem load error: #{e}, omitting #{task.name}" unless ENV['CI']
  end

  begin
    require 'foodcritic'

    desc 'Run Chef style checks using foodcritic'
    FoodCritic::Rake::LintTask.new(:chef) do |t|
      t.options = {
        fail_tags: ['any'],
        progress: true,
      }
    end
  rescue LoadError => e
    puts ">>> Gem load error: #{e}, omitting #{task.name}" unless ENV['CI']
  end
end

desc 'Run all style checks'
task style: %w(style:chef style:ruby)

# ChefSpec
begin
  require 'rspec/core/rake_task'

  desc 'Run ChefSpec/Rspec unit tests'
  task :unit do
    RSpec::Core::RakeTask.new(:unit) do |t|
      t.rspec_opts = '--color --format progress'
    end
  end
rescue LoadError => e
  puts ">>> Gem load error: #{e}, omitting #{task.name}" unless ENV['CI']
end

desc 'Run ChefSpec/Rspec unit tests'
task :unit do
  require 'rspec/core/rake_task'
  RSpec::Core::RakeTask.new(:unit) do |t|
    t.rspec_opts = '--color --format progress'
    t.pattern = 'spec/*_spec.rb'
  end
end

#!/usr/bin/env ruby

project_name = ARGV.shift
environments = %w(next development staging production)
files = %w(dependencies playbook)

system "mkdir -p playbook-#{project_name}/hosts"
system "touch playbook-#{project_name}/vault.yml"
system "touch playbook-#{project_name}/dependencies.yml"
system "touch playbook-#{project_name}/playbook.yml"

environments.each { |environment| system "touch playbook-#{project_name}/hosts/#{environment}" }

systems = ['.', ARGV[1,-1]].flatten

ARGV.each do |system|
  system "mkdir -p playbook-#{project_name}/#{system}" unless system == '.'
  files.each do |file|
    system "touch playbook-#{project_name}/#{system}/#{file}.yml"
  end
end

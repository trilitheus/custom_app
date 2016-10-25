# App is rails - we need ruby
include_recipe 'custom_ruby'

# GIT will be required for deployments
include_recipe 'git::default'

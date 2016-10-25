source 'https://supermarket.chef.io'

metadata

def alliantist_cookbook(name, options = {})
  cookbook(name, {
    git: "git@github.com:alliantist/cookbook_#{name}.git"
  }.merge(options))
end

def custom_cookbook(name, options = {})
  cookbook(name, {
    git: "https://github.com/trilitheus/#{name}.git"
  }.merge(options))
end

custom_cookbook 'custom_ruby', branch: 'master'

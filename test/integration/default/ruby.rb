ruby_exists = command('/usr/local/bin/ruby -v')

describe ruby_exists do
  its('stdout') { should match(/ruby 2.1.9p490/) }
end

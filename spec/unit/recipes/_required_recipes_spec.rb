#
# Cookbook Name:: custom_app
# Spec:: _required_recipes
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

require 'spec_helper'

describe 'custom_app::_required_recipes' do
  context 'When all attributes are default, on centos 7.2.1511' do
    cached(:chef_run) do
      runner = ChefSpec::ServerRunner.new
      runner.converge(described_recipe)
    end

    before do
      stub_command('/usr/local/bin/gem -v | grep ^2.4.8').and_return(nil)
      stub_command('git --version >/dev/null').and_return('git version 2.7.4')
    end

    it 'include the custom_ruby cookbook' do
      expect(chef_run).to include_recipe('custom_ruby::default')
    end
  end
end

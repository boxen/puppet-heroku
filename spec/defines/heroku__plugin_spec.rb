require 'spec_helper'

describe 'heroku::plugin' do
  let(:title) { 'test' }
  let(:params) { {:source => 'https://github.com/foo/bar'} }
  let(:facts) do
    {
      :luser      => 'testuser',
      :boxen_home => '/opt/boxen',
    }
  end
  let(:plugin_dir) { "/Users/#{facts[:luser]}/.heroku/plugins" }

  # FIXME - rspec-puppet should properly stub facts instead of this hack.
  before :each do
    facts.each do |fact, val|
      Facter.add(fact.to_s) do
        setcode { val }
      end
    end
  end

  it { should include_class('heroku::config') }

  it do
    should contain_repository("#{plugin_dir}/#{title}").with({
      :source => params[:source],
    })
  end
end

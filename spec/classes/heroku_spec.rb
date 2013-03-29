require "spec_helper"

describe "heroku" do
  let(:facts) do
    {
      :boxen_home => "/test/boxen"
    }
  end

  it do
    should include_class('boxen::config')
    
    should contain_file('/test/boxen/heroku')

    should contain_file('/test/boxen/env.d/heroku.sh').
      with_source('puppet:///modules/heroku/heroku.sh')

    should contain_exec('install heroku standalone toolbelt').with({
      :cwd     => '/test/boxen/heroku',
      :creates => '/test/boxen/heroku/bin/heroku'
    })
  end
end

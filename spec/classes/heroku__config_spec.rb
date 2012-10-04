require 'spec_helper'

describe 'heroku::config' do
 let(:facts) { {:luser => 'testuser'} }

  let(:herokudir) { "/Users/#{facts[:luser]}/.heroku" }
  let(:plugindir) { "#{herokudir}/plugins" }

  it { should contain_file(herokudir).with_ensure('directory') }
  it { should contain_file(plugindir).with_ensure('directory') }
end

control 'apache-version' do
  impact 1.0
  title 'version check'
  desc 'Check if apache version is installed'
  describe apache2 do
    its('version') { should eq '2.4.58' }
  end
end

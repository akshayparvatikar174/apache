control 'nginx-version' do
  impact 1.0
  title 'version check'
  desc 'Check if nginx version is installed'
  describe nginx do
    its('version') { should eq '1.24.0' }
  end
end

control 'nginx-version' do
  impact 1.0
  title 'version check'
  desc 'Check if nginx version is installed'
  describe command('apachectl -v') do
    its('stdout') { should match /1\.4\.58/ }
  end
end

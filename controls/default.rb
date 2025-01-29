control 'apache-version' do
  impact 1.0
  title 'version check'
  desc 'Check for apache version'
  describe command('apachectl -v') do
    its('stdout') { should match /1\.4\.58/ }
  end
end

control 'apache-version' do
  impact 1.0
  title 'version check'
  desc 'Check if apache version is installed'
    describe command ('apachectl -v') do
    its('stdout') { should match (/Apache\/2\.4\.58/)}
  end
end

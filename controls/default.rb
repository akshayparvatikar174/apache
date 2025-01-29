control 'apache-01' do
  impact 1.0
  title 'Check Apache2 Version'
  desc 'Ensure that Apache2 is installed and running the correct version'

  # Check if Apache2 is installed
  describe package('apache2') do
    it { should be_installed }
  end

  # Get Apache2 version and check if it's within a valid range
  describe command('apache2 -v') do
    its('stdout') { should match /Apache\/2\.\d+\.\d+/ }
  end
end

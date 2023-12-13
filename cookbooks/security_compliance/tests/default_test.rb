# InSpec test file for security controls

# Example test to ensure the SSH service is configured securely
control 'ssh-01' do
  impact 1.0
  title 'SSH Server Configuration'
  desc 'Ensure SSH server is configured securely'

  describe sshd_config do
    its('Protocol') { should eq('2') }
    its('PermitRootLogin') { should eq('no') }
    its('PasswordAuthentication') { should eq('no') }
  end
end

# Add more controls/tests as per your security requirements

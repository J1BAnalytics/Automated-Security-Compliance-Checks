# InSpec control file defining security controls

# Example security controls for SSH configuration
control 'ssh-01' do
  impact 1.0
  title 'SSH Server Configuration'
  desc 'Ensure SSH server is configured securely'

  # Define checks for SSH configuration
  describe sshd_config do
    its('Protocol') { should eq('2') }
    its('PermitRootLogin') { should eq('no') }
    its('PasswordAuthentication') { should eq('no') }
  end
end

# Add more controls according to your security compliance requirements

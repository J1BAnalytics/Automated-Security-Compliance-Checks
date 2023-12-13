# Automated Security Compliance Checks

This repository contains Chef recipes and InSpec profiles for automated security compliance checks.

## Project Overview

The goal of this project is to automate security compliance checks using Chef and InSpec. The `cookbooks/` directory contains Chef recipes to apply security configurations, while the `inspec/` directory holds InSpec profiles defining security checks.

## Getting Started

Ensure you have Chef and InSpec installed on your system. Follow the steps below to run the checks:

1. Clone this repository: `git clone <repository-url>`
2. Navigate to the repository directory: `cd Automated-Security-Checks`
3. Apply the Chef recipes to configure security settings: `chef-client --local-mode --runlist 'recipe[security_compliance]'`
4. Run InSpec tests for security compliance: `inspec exec inspec/profiles/security_checks -t ssh://<target-host>`
5. Review the test results and address any failing controls.

## Directory Structure

- `cookbooks/`: Contains Chef recipes for applying security configurations.
- `inspec/`: Holds InSpec profiles defining security checks.

Feel free to modify and expand the recipes and InSpec profiles according to your specific security requirements.

## License

This project is licensed under the [MIT License](LICENSE).

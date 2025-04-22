# mac-dev-automation

Ensure Apple's command line tools are installed (xcode-select --install to launch the installer).

1.  Install Ansible:
  
Run the following command to add Python 3 to your $PATH: export PATH="$HOME/Library/Python/3.9/bin:/opt/homebrew/bin:$PATH"

Upgrade Pip: sudo pip3 install --upgrade pip

Install Ansible: pip3 install ansible

3. Clone or download this repository to your local drive.
Run ansible-galaxy install -r requirements.yml inside this directory to install required Ansible roles.
Run ansible-playbook main.yml -K  inside this directory. Enter your macOS account password when prompted for the 'BECOME' password.

Note: If some Homebrew commands fail, you might need to agree to Xcode's license or fix some other Brew issue. Run brew doctor to see if this is the case.

Running a specific set of tagged tasks
You can filter which part of the provisioning process to run by specifying a set of tags using ansible-playbook's --tags flag. The tags available are dotfiles, homebrew, mas, extra-packages and osx.

ansible-playbook main.yml -K --tags "mas,homebrew,dock" && ./mac-configure.sh

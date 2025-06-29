# Puppet manifest to configure SSH client
# This manifest configures SSH to use private key and refuse password authentication

# Ensure the .ssh directory exists
file { '/home/vagrant/.ssh':
  ensure => 'directory',
  owner  => 'vagrant',
  group  => 'vagrant',
  mode   => '0700',
}

# Ensure the SSH config file exists
file { '/home/vagrant/.ssh/config':
  ensure => 'file',
  owner  => 'vagrant',
  group  => 'vagrant',
  mode   => '0600',
}

# Add the identity file configuration
file_line { 'Declare identity file':
  path => '/home/vagrant/.ssh/config',
  line => '    IdentityFile ~/.ssh/school',
  match => '^    IdentityFile',
}

# Add the password authentication configuration
file_line { 'Turn off passwd auth':
  path => '/home/vagrant/.ssh/config',
  line => '    PasswordAuthentication no',
  match => '^    PasswordAuthentication',
}

# Add the Host * configuration if it doesn't exist
file_line { 'Add Host * configuration':
  path => '/home/vagrant/.ssh/config',
  line => 'Host *',
  match => '^Host \*',
  before => [File_line['Declare identity file'], File_line['Turn off passwd auth']],
} 
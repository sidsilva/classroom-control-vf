class users {
  user { 'fundamentals':
    ensure => present,
#    managehome => true,
#    home => /home/fundamentals,
# password => 'puppet8#labs', # Windows requires a plain text password
# groups => ['Users'], # Display in Windows Control Panel
  }
#  file { '/home/fundamentals':
#    ensure => directory,
#    owner => 'fundamentals',
#    group => 'fundamentals',
#    mode => '0755',
#  }
}

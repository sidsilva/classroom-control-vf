define nginx::vhost (
  $port       = '80',
  $servername = $title,
  $docroot    = "${nginx::docroot}/vhosts/${title}",
) {
  file { $docroot:
    ensure => direcotry,
  }
  
  file { "$docroot}/index.html":
    ensure => file,
    content => template('nginx/index.html.erb')
  }
  
  file { "nginx-vhost-${title}":
    ensure  => file,
    path    => "${nginx::blocdir}/${title}.conf",
    content => template('nginx/vhost.conf.erb'),
    notify  => Service['nginx'],
  }
}

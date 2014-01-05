# init.pp

class ntp (
  $package_list = $ntp::params::package_list,
  $service_name = $ntp::params::service_name,
  $servers      = $ntp::params::servers
) inherits ntp::params {

  package {
    $package_list: ensure => installed;
  }

  file { '/etc/ntp.conf':
    content => template("ntp/ntp.conf.erb"),
    owner   => "root",
    group   => "root",
    mode    => '644',
    notify  => Service [$service_name],  # Will restart service after change
  }

  service { $service_name:
    ensure     => running,
    enable     => true,
    hasstatus  => true,
    hasrestart => true,
  }
}

# params.pp

class ntp::params {

  case $osfamily {
    'RedHat': {
      $package_list      = ['ntp']
      $preferred_servers = []
      $service_name      = 'ntpd'
      $servers           = [
        '0.centos.pool.ntp.org',
        '1.centos.pool.ntp.org',
        '2.centos.pool.ntp.org',
      ]
    }
    'Debian': {
      $package_list      = ['ntp']
      $preferred_servers = []
      $service_name      = 'ntp'
      $servers           = [
        '0.debian.pool.ntp.org',
        '1.debian.pool.ntp.org',
        '2.debian.pool.ntp.org',
      ]
    }
    default: {
      fail("Unsupported osfamily: ${::osfamily} operatingsystem: ${::operatingsystem}, module ${module_name} only supports osfamily: RedHat and Debian")
    }
  }
}

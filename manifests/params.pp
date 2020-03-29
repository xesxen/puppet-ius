class ius::params {
  # Setting to 'absent' will fall back to the yum.conf
  # Setting proxy here will be the default for all repos.
  #
  # If you wish to set a proxy for an individual set of repos,
  # you can declare $proxy in that class, and should scope to
  # the most specific declaration of proxy.
  $proxy = 'absent'

  case $::operatingsystem {
    'CentOS': {
      $ius_os = 'centos'
    }
    'RedHat': {
      $ius_os = 'el'
    }
    default: {
      notice("${::operatingsystem} is not supported by this module.")
    }
  }

  $ius_mirrorlist                       = 'absent'
  $ius_baseurl                          = "https://repo.ius.io/${::operatingsystemmajrelease}/\$basearch/"
  $ius_failovermethod                   = 'priority'
  $ius_proxy                            = $proxy
  $ius_enabled                          = '1'
  $ius_gpgcheck                         = '1'
  $ius_debuginfo_mirrorlist             = 'absent'
  $ius_debuginfo_baseurl                = "https://repo.ius.io/${::operatingsystemmajrelease}/\$basearch/debug/"
  $ius_debuginfo_failovermethod         = 'priority'
  $ius_debuginfo_proxy                  = $proxy
  $ius_debuginfo_enabled                = '0'
  $ius_debuginfo_gpgcheck               = '1'
  $ius_source_mirrorlist                = 'absent'
  $ius_source_baseurl                   = "https://repo.ius.io/${::operatingsystemmajrelease}/src/"
  $ius_source_failovermethod            = 'priority'
  $ius_source_proxy                     = $proxy
  $ius_source_enabled                   = '0'
  $ius_source_gpgcheck                  = '1'
  $ius_includepkgs                      = 'absent'
  $ius_exclude                          = 'absent'

  $ius_archive_mirrorlist               = 'absent'
  $ius_archive_baseurl                  = "https://repo.ius.io/archive/${::operatingsystemmajrelease}/\$basearch/"
  $ius_archive_failovermethod           = 'priority'
  $ius_archive_proxy                    = $proxy
  $ius_archive_enabled                  = '0'
  $ius_archive_gpgcheck                 = '1'
  $ius_archive_debuginfo_mirrorlist     = 'absent'
  $ius_archive_debuginfo_baseurl        = "https://repo.ius.io/archive/${::operatingsystemmajrelease}/\$basearch/debug/"
  $ius_archive_debuginfo_failovermethod = 'priority'
  $ius_archive_debuginfo_proxy          = $proxy
  $ius_archive_debuginfo_enabled        = '0'
  $ius_archive_debuginfo_gpgcheck       = '1'
  $ius_archive_source_mirrorlist        = 'absent'
  $ius_archive_source_baseurl           = "https://repo.ius.io/archive/${::operatingsystemmajrelease}/src/"
  $ius_archive_source_failovermethod    = 'priority'
  $ius_archive_source_proxy             = $proxy
  $ius_archive_source_enabled           = '0'
  $ius_archive_source_gpgcheck          = '1'
  $ius_archive_includepkgs              = 'absent'
  $ius_archive_exclude                  = 'absent'

  $ius_testing_mirrorlist               = 'absent'
  $ius_testing_baseurl                  = "https://repo.ius.io/testing/${::operatingsystemmajrelease}/\$basearch/"
  $ius_testing_failovermethod           = 'priority'
  $ius_testing_proxy                    = $proxy
  $ius_testing_enabled                  = '0'
  $ius_testing_gpgcheck                 = '1'
  $ius_testing_debuginfo_mirrorlist     = 'absent'
  $ius_testing_debuginfo_baseurl        = "https://repo.ius.io/testing/${::operatingsystemmajrelease}/\$basearch/debug/"
  $ius_testing_debuginfo_failovermethod = 'priority'
  $ius_testing_debuginfo_proxy          = $proxy
  $ius_testing_debuginfo_enabled        = '0'
  $ius_testing_debuginfo_gpgcheck       = '1'
  $ius_testing_source_mirrorlist        = 'absent'
  $ius_testing_source_baseurl           = "https://repo.ius.io/testing/${::operatingsystemmajrelease}/src/"
  $ius_testing_source_failovermethod    = 'priority'
  $ius_testing_source_proxy             = $proxy
  $ius_testing_source_enabled           = '0'
  $ius_testing_source_gpgcheck          = '1'
  $ius_testing_includepkgs              = 'absent'
  $ius_testing_exclude                  = 'absent'

  $epel_class                           = ::epel

}

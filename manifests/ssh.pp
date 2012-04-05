class webinar::ssh {
    package { 'openssh-server':
        ensure => latest,
    }

    service { 'ssh':
        ensure => running,
        require => Augeas['sshd_config'],
    }

    augeas { 'sshd_config':
        context => '/files/etc/ssh/sshd_config',
        changes => [
            'set PermitRootLogin no',
            'set LogLevel VERBOSE'
        ],
        notify => Service['ssh'],
        require => Package['openssh-server'],
    }

}

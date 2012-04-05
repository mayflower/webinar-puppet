class webinar::tools {
    package { 'htop':
        ensure => latest,
    }

    package { 'vim':
        ensure => latest,
    }
}

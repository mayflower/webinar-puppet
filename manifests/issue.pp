class webinar {
    define issue($content) {
        file { '/etc/issue':
            ensure => present,
            content => $content,
        }
    }
}

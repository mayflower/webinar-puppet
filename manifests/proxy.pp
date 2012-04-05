class webinar::proxy {
    include nginx

    nginx::resource::vhost { 'proxy':
        ensure  => present,
        proxy   => 'http://www.dns-ok.de/'
    }
}

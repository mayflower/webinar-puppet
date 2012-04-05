import 'issue.pp'
import 'proxy.pp'
import 'ssh.pp'
import 'tools.pp'

node 'default' {
    include webinar::tools

    include webinar::proxy
    include webinar::ssh

    webinar::issue { 'worldgreeting':
        content => "Hello World @ Ubuntu precise \\n \\l\n"
    }
}


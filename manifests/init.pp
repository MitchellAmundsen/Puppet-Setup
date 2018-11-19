user { 'mitchell':
    ensure  => present,
    shell     => '/bin/bash',
    home    =>  '/home/mitchell',
}

file { 'vimrc':
    path    => '/home/mitchell/.vimrc',
    ensure  => present,
    source  => 'puppet:///files/vimrc',
    owner   => 'mitchell',
}

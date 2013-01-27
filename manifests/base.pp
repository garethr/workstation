Exec { path => '/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin' }

package {[
  'zsh',
  'vim-nox',
  'curl',
  'git-core',
  'lynx',
  'aptitude',
  'xmonad',
  'htop',
  'ruby1.9.1',
  'ruby1.9.1-dev',
  'golang',
  'python-virtualenv',
  'python-pip',
  'leiningen',
  'clojure1.3',
  'nodejs',
  'nodejs-dev',
  'npm',
  'scala',
  'erlang',
  'phantomjs',
  'less',
  'tar',
  'tree',
  'zip',
  'unzip',
  'ack-grep',
  'iotop',
  'valgrind',
  'pwgen',
  'nmap',
  'strace',
  'tmux',
  'screen',
  'libreadline-dev',
  'libxml2-dev',
  'libxslt-dev',
  'zlib1g',
  'zlib1g-dev',
  'pulseaudio-module-raop',
  'paprefs',
  'telnet',
  'pidgin',
  'libonig-dev',
]:
   ensure => 'installed'
}

file { '/usr/bin/ack':
  ensure  => 'link',
  target  => '/usr/bin/ack-grep',
  require => Package['ack-grep'],
}

include 'gcc'

class { 'java': }

class { 'googlechrome': }

class { 'ntp':
  autoupdate => true
}

include 'spotify'

package { [
  'fabric',
  'yolk',
  'awscli',
  'logstash-tail',
  'rackspace-novaclient',
  'lice',
]:
  ensure   => 'present',
  provider => 'pip',
}

include 'android'

include 'wget'
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
  'python-nltk',
  'python-lxml',
  'python-svn',
  'python-scapy',
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
  'nikto',
  'skipfish',
  'strace',
  'tmux',
  'screen',
  'libreadline-dev',
  'libxml2-dev',
  'libxslt-dev',
  'libcurl4-openssl-dev',
  'libsqlite3-dev',
  'zlib1g',
  'zlib1g-dev',
  'pulseaudio-module-raop',
  'paprefs',
  'telnet',
  'pidgin',
  'libonig-dev',
  'maven',
  'apache2-utils',
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
  'pybloomfiltermmap',
  'BeautifulSoup',
]:
  ensure   => 'present',
  provider => 'pip',
}

package { [
  'gauntlt',
]:
  ensure => installed,
  provider => gem,
}

include 'android'

include 'wget'

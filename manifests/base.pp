Exec { path => '/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin' }

ensure_packages([
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
  'python-virtualenv',
  'python-pip',
  'python-nltk',
  'python-lxml',
  'python-svn',
  'python-scapy',
  'leiningen',
  'clojure1.3',
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
  'redir',
  'lxc',
  'mercurial',
  'openvpn',
  'network-manager-openvpn',
  'graphviz',
  'libpcre3-dev',
  'libssl-dev',
])

file { '/usr/bin/ack':
  ensure  => 'link',
  target  => '/usr/bin/ack-grep',
  require => Package['ack-grep'],
}

include 'gcc'

class { 'java': }

class { 'oracle_java':
  version => '7u40',
}

class { 'googlechrome': }

include 'golang'
include 'elixir'
include 'erlang'
include 'scala'
include 'nodejs'

class { 'docker':
  version => '0.7.0',
}

docker::image { 'ubuntu': }

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
  'autoenv',
  'ansible',
  'ansible-shell',
  'asciinema',
  'wercker'
]:
  ensure   => 'present',
  provider => 'pip',
}

package { [
  'gauntlt',
  'dashing',
  'methadone',
]:
  ensure   => installed,
  provider => gem,
}

include 'android'

include 'wget'

name 'confd-iptables'
maintainer 'John Bellone'
maintainer_email 'jbellone@bloomberg.net'
license 'Apache 2.0'
description 'Application cookbook which configures confd iptables template.'
long_description 'Application cookbook which configures confd iptables template.'
version '1.2.3'

supports 'ubuntu', '>= 12.04'
supports 'redhat', '>= 5.8'
supports 'centos', '>= 5.8'

depends 'confd', '~> 1.0'

issues_url 'https://github.com/bloomberg/confd-iptables-cookbook/issues' if defined?(issues_url)
source_url 'https://github.com/bloomberg/confd-iptables-cookbook' if defined?(source_url)

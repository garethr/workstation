#!/bin/sh
#bundle install
#bundle exec librarian-puppet install
sudo puppet apply manifests/base.pp --modulepath=modules --debug --summarize --reports store

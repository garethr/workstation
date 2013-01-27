#!/bin/sh
bundle exec librarian-puppet install
sudo puppet apply manifests/base.pp --modulepath=modules --debug --summarize

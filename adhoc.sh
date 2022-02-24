#!/bin/bash
ansible all -m yum_repository -a 'name="EX294_BASE" description="EX294 Base Software" baseurl="http://content/rhel8.0/x86_64/dvd/baseos" gpgcheck=yes gpgkey="http://content/rhel8.0/x86_64/dvd/rpm-gpg-key-redhat-release" enabled=yes state=absent' -b
ansible all -m yum_repository -a 'name="EX294_STREAM" description="EX294 stream Software" baseurl="http://content/rhel8.0/x86_64/dvd/appstream" gpgcheck=yes gpgkey="http://content/rhel8.0/x86_64/dvd/rpm-gpg-key-redhat-release" enabled=yes state=absent' -b

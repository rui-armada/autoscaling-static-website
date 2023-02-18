#!/bin/bash
yum -y update
yum install -y python3
yum install python-devel gcc python-crypto
git clone https://github.com/boto/boto.git
cd boto
pip install -r requirements.txt
python3 setup.py install
yum install awscli
#/bin/sh

# Completely remove mysql
#sudo apt-get remove -y --purge mysql-server mysql-client mysql-common
#sudo apt-get autoremove -y
#sudo apt-get autoclean
#sudo rm -rf /var/lib/mysql
#sudo rm -rf /root/.my.cnf

curl https://raw.githubusercontent.com/ErgonLogicEnterprises/ansible-bootstrap/master/install-ansible-ppa.sh | /bin/sh
sudo ansible-galaxy install -r /vagrant/tests/requirements.yml
target=/etc/ansible/roles/ansible-role-aegir
if [ ! -e $target ]; then
  mkdir -p /etc/ansible/roles
  ln -s /vagrant/ $target
fi

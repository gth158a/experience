# add user
adduser [newusername]
usermod -aG sudo [newusername]
exit
ssh [newusername]@[your_ip_address]

# setup
sudo apt-get update

# editor
sudo apt-get install mc

sudo apt-get -y install python3-pip
sudo apt-get -y install python3-dev

sudo -H pip3 install --upgrade pip

# jupyter
sudo -H pip3 install jupyter
jupyter notebook --generate-config
# to make notebook available from any IP
echo "c.NotebookApp.ip = '*'" >> /home/[your_username]/.jupyter/ju


# postgres
sudo apt-get install postgresql postgresql-contrib
sudo -i -u postgres

# create user
psql
CREATE USER [your_user_name] WITH PASSWORD '[your_preferred_password]'; \q
exit

# login with new user
psql -U [your_user_name] -d postgres

# create test table
CREATE TABLE test(column1 TEXT, column2 INT);
INSERT INTO test VALUES ('Hello', 111);
INSERT INTO test VALUES ('World', 222);

# verify values
SELECT * FROM test;
# quit psql
\q

# setup postgres access
sudo -i -u root
echo "listen_addresses = '*'" >> /etc/postgresql/*/main/postgresql.conf
echo 'host all all 0.0.0.0/0 md5' >> /etc/postgresql/*/main/pg_hba.conf
sudo /etc/init.d/postgresql restart

# install R and R studio
sudo apt-get install r-base-core
sudo apt-get install gdebi-core

wget https://download2.rstudio.org/rstudio-server-1.0.136-amd64.deb
sudo gdebi rstudio-server-1.0.136-amd64.deb
sudo restart rstudio-server

# to access R rstudio
# LINK: [IP]:8787

# other python libraries
sudo -H pip3 install numpy
sudo apt-get install python3-pandas
sudo -H pip3 install --upgrade beautifulsoup4
# scrapy
sudo -H pip3 install --upgrade html5lib
sudo -H pip3 install scikit-learn

# tools
sudo -H pip3 install csvkit

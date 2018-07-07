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

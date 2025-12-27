# Change to Root User and then update OS - yum update -y if Amazon Linux
# Change to Sonar User
su -sonar

# Go to Sonar Path
cd /opt/sonarqube/bin/linux-x86-64/

./sonar.sh start